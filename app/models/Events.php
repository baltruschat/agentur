<?php
use Jenssegers\Date\Date;

class Events extends Eloquent {

	protected $table = 'events';

	public $timestamps = false;

	public function members(){
        return $this->belongsToMany('User');
    }

    public function diffInHours(){
    	$start = new Date($this->starttime);
		return $start->diffInMinutes(new Date($this->endtime)) /60 ;
    }

}
