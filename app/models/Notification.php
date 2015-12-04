<?php
use Jenssegers\Date\Date;

class Notification extends \Eloquent {


	protected $fillable = [];

	public function creator(){
    	return $this->hasOne('User','id','creator_id');
    }

    public function humanTiming(){
	    Date::setLocale('de');
	    $date = new Date($this->created_at);
	    return $date->diffForHumans();
	}
	
    public function format() {
		$note = $this->notification;
		preg_match_all('/{{(.\w+)={1}(.\w+|\d+)}}/i', $note, $matches, PREG_SET_ORDER);
		
		if($matches){
			foreach($matches as $match):
				switch ($match[1]) {
					case 'file':
						$file = Files::find($match[2]);
						if($file)
							$value = $file->filename;
						else{
							$value = '<span class="red">Error: Datei wurde nicht gefunden</span>';
						}
					break;
					case 'user':
						$user = User::find($match[2]);
						if($user)
							$value = $user->firstname .' '. $user->lastname;
						else{
							$value = '<span class="red">Error: User wurde nicht gefunden</span>';
						}
					break;
					case 'invoice':
						$invoice = Invoice::find($match[2]);
						if($invoice)
							$value = '#'.$invoice->number;
						else{
							$value = '<span class="red">Error: Rechnungsnummer</span>';
						}
					break;

					case 'invoiceType':
						if($match[2] == 1)
							$value = 'Schlussrechnung';
						elseif($match[2] == 2)
							$value = 'Teilrechnung';
						elseif($match[2] == 3)
							$value = 'Pauschale';

					break;

					case 'project':
						$project = Project::find($match[2]);
						if($project){
							$value = $project->id .' | '. $project->name;
						}else{
							$value = '<span class="red">Projekt wurde nicht gefunden.</span>';
						}
					break;
				}
				$note = preg_replace('/'.$match[0].'/i', '<i>'.$value.'</i>', $note);
			endforeach;
		}
		return $note;
	}

}