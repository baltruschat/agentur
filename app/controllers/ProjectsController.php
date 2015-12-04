<?php

class ProjectsController extends \BaseController {

	protected $layout = "layouts.default";

	public function dashboard(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		
		$filter = array( 's' => Input::get('s'),
						 'customer' => Input::get('customer'),
						 'date' => Input::get('date'), 
						 'date-type' =>Input::get('date-type'), 
						 'status' => Input::get('status'), 
						 'count' => (Input::get('count') == '') ? 10 : Input::get('count')
		);
		$projects = Project::where( function($query) use ($filter){
			
			if( empty($filter['status'])  ){
				$query->where('status','=', 1);
			}
			else{
				if($filter['status'] > 0)
					$query->where('status','=', $filter['status']);
			}

			if(!empty($filter['customer']) && $filter['customer'])
				$query->where('customer','=', $filter['customer']);
		
			if(!empty($filter['s']))
				$query->where('name', 'LIKE', '%'.$filter['s'].'%');

			if(!empty($filter['date']))
				$query->where('date',$filter['date-type'], date('Y-m-d H:i:s', strtotime($filter['date'])));

		})->orderBy('date','DESC')->paginate($filter['count']);

		$customers = Customer::all();

		// $projects->paginate($filter['count'])

		return View::make('projects.dashboard', array('projects' => $projects, 'filter' =>  $filter, 'customerHelper' => new CustomerHelper($customers)) );
	}

	public function create(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		$customers = Customer::all();
		
		return View::make('projects.create', array('team' => User::orderBy('lastname', 'ASC')->get(), 'customerHelper' => new CustomerHelper($customers) ));
	}

	public function detail($id){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		return View::make('projects.detail', array('project' => Project::find($id) ));
	}

	public function edit($id){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		$customers = Customer::all();
		return View::make('projects.edit', array('project' => Project::find($id), 'members' => User::orderBy('lastname', 'ASC')->get(), 'customerHelper' => new CustomerHelper($customers) ));
	}

	public function task($id){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		return View::make('projects.task', array('project' => Project::find($id) ));
	}

	public function addTask(){
		$task = new Task();
		$task->project_id = Input::get('project_id');
		$task->user_id = Input::get('user');
		$task->creator_id = Auth::user()->id;
		$task->finish = date('Y-m-d H:i:s', strtotime(Input::get('date')));
		$task->title = Input::get('title');
		$task->description = Input::get('description');
		$task->status = 1;
		$task->save();

		$timeline = new Timeline();
		$timeline->type = 1;
		$timeline->project_id = $task->project_id;
		$timeline->creator_id = Auth::user()->id;
		$timeline->description = '{{user='.Auth::user()->id.'}} hat für {{user='.Input::get('user').'}} eine Aufgabe erstellt.';
		$timeline->save();

		$note = new Notification();
		$note->type = 1;
		$note->creator_id = Auth::user()->id;
		$note->receiver_id = Input::get('user');
		$note->notification = 'hat eine <strong>Aufgabe</strong> für das Projekt <em>{{project='.$task->project_id.'}}</em> angelegt.';
		$note->save();

		return Response::json( array('status' => 1, 'class' => $task->getClass(), 'creator' => $task->creator->firstname .' '. $task->creator->lastname, 'task_id' => $task->id) , 200);
	}

	public function doneTask(){
		$task = Task::find(Input::get('id'));
		$task->status = ( Input::get('status') == 'true' ) ? 2 : 1;
		$task->save();
		return Response::json( array('status' => 1) , 200);
	}

	public function orderTask(){
		foreach(json_decode(Input::get('order')) as $t):
			$task = Task::find($t->id);
			$task->order = $t->order;
			$task->save();
		endforeach;

		return Response::json( array('status' => 1) , 200);
	}

	public function timeline($id){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		return View::make('projects.timeline', array('project' => Project::find($id) ));
	}

	public function upload(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}

		$file = Input::file('file');
		$filename = sha1(time()).'.'.$file->getClientOriginalExtension();
        $directory = public_path().'/asset/files/create/';

		$uploaded = Input::file('file')->move($directory, $filename);
		
        $return = array( 'fileName' => $file->getClientOriginalName(), 
        				 'fileOnServer' => $filename, 
        				 'fileType' => $file->getClientOriginalExtension(), 
        				 'fileUrl' => url('/asset/files/create/'.$filename), 
        				 'icon' =>  '');

		return Response::json($return, 200);
	}

	public function deleteFile(){
		$file = Files::find(Input::get('id'));
		if($file):
			@unlink($file->path);
			$file->delete();
			return Response::json(true, 200);
		elseif(file_exists(public_path().'/asset/files/create/'.Input::get('id'))):
			@unlink( public_path().'/asset/files/create/'.Input::get('id') );
			return Response::json(true, 200);
		endif;
		return Response::json(false, 404);
	}

	public function store(){
		$input = Input::all();

		$rules = array(
			'title'=>'required',
			'date'=>'required|date_format:d.m.Y',
			'contact'=>'required|exists:addresses,id',
			'manager' =>'required|exists:users,id',
			'invoice' => 'required|exists:addresses,id'
		);
		$validation = Validator::make($input, $rules);
		if ($validation->passes()){
			if( Input::get('project-id') ){
				$project = Project::find(Input::get('project-id'));
			}else{
				$project = new Project();
			}
			$project->status = 1;
			$project->name = Input::get('title');
			$project->description = Input::get('description');
			$project->date = date('Y-m-d H:i:s', strtotime(Input::get('date')));
			$project->creator = Auth::user()->id;
			$project->group = Auth::user()->current_group;
			$project->address = Input::get('contact');
			$project->customer = Input::get('customer');
			$project->invoice_address = Input::get('invoice');
			$project->manager = Input::get('manager');
			$project->save();

			// Dont log when project edit
			if( !Input::get('project-id') ){
				$timeline = new Timeline();
				$timeline->type = 1;
				$timeline->project_id = $project->id;
				$timeline->creator_id = Auth::user()->id;
				$timeline->description = 'Das Projekt wurde von {{user='.Auth::user()->id.'}} erstellt';
				$timeline->save();		

			}

			// Remove member when project edit
			if( Input::get('project-id') ){
				$project->team()->detach();
			}

			$memberAttachArray = array();
			if(Input::get('member')):
				foreach(Input::get('member') as $member):
					if($member['active']):
						$project->team()->attach($member['id'], array('project_id' => $project->id,'task' => $member['task']) );
						if( !Input::get('project-id') ){

							$note = new Notification();
							$note->type = 1;
							$note->creator_id = Auth::user()->id;
							$note->receiver_id = $member['id'];
							$note->notification = 'hat das <strong>Projekt</strong> <em>{{project='.$project->id.'}}</em> <strong>erstellt</strong>.';
							$note->save();
						}else{
							$note = new Notification();
							$note->type = 1;
							$note->creator_id = Auth::user()->id;
							$note->receiver_id = $member['id'];
							$note->notification = 'hat das <strong>Projekt</strong> <em>{{project='.$project->id.'}}</em> <strong>bearbeitet</strong>.';
							$note->save();
						}

					endif;
				endforeach;
			endif;

			if(Input::get('upload')):
				$path = '/asset/files/projects/'. $project->id;
				$tmp = '/asset/files/create/';
				@mkdir(public_path() . $path);
				foreach(Input::get('upload') as $fileData):
					File::move(public_path().$tmp.$fileData['fileOnServer'], public_path() . $path .'/'. $fileData['fileOnServer']);
					$file = new Files();
					$file->workgroup = Auth::user()->current_group;
					$file->creator = Auth::user()->id;
					$file->path = $path .'/'. $fileData['fileOnServer'];
					$file->type = File::extension($fileData['fileOnServer']);
					$file->filename = $fileData['fileName'];
					$file->save();
					$project->files()->attach($file->id);
					$timeline = new Timeline();
					$timeline->type = 2;
					$timeline->project_id = $project->id;
					$timeline->creator_id = Auth::user()->id;
					$timeline->description = 'Upload der Datei {{file='.$file->id.'}}';
					$timeline->save();
				endforeach;
			endif;

			if( Input::get('project-id') ){
				return Redirect::to('projects/detail/'. $project->id)->with('success', 'Das Projekt wurde gespeichert!');
			}else{
				return Redirect::to('projects')->with('success', 'Das Projekt wurde angelegt!');
			}
		}else{
			return Redirect::to('projects')->with('error', $validator->messages());
		}
	}


	public function invoice($id){
		return View::make('projects.invoice', array('project' => Project::find($id)));	
	}

	public function createInvoice($id){
		$project = Project::find($id);
		$group = Group::find($project->group);
		$invoice = new Invoice();

		if(Input::get('type') < 3){
			$project->status = 2;
		}else{
			$project->status = 3;
		}
		$invoice->status = 0;
		$invoice->project_id = $project->id;
		$invoice->type = Input::get('type');
		if(Input::get('type') < 3){
			$genarateInvoiceNumber = $group->getInvoiceNumber();
			$group->invoice_number = $genarateInvoiceNumber[1];
			$invoice->number = $genarateInvoiceNumber[0];
			$invoice->value = Input::get('value');
			$invoice->payable = date('Y-m-d', strtotime(Input::get('payable')));
		}
		
		$project->save();
		$invoice->save();
		$group->save();

		$timeline = new Timeline();
		$timeline->type = 1;
		$timeline->project_id = $id;
		$timeline->creator_id = Auth::user()->id;
		$timeline->description = '{{user='.Auth::user()->id.'}} eine {{invoiceType='.$invoice->type.'}} {{invoice='.$invoice->id.'}} erstellt.';
		$timeline->save();

		if($project->team):
			foreach ($project->team as $member) {
				$note = new Notification();
				$note->type = 1;
				$note->creator_id = Auth::user()->id;
				$note->receiver_id = $member->id;
				$note->notification = 'hat eine <strong>{{invoiceType='.$invoice->type.'}}</strong> für das Projekt<em>{{project='.$id.'}}</em> erstellt.';
				$note->save();
			}
		endif;


		return Redirect::to('projects/invoice/'. $project->id)->with('success', 'Rechnung wurde angelegt!');	
	}

	public function updateInvoice($id){

		$invoice = Invoice::find($id);
		$invoice->value = Input::get('value');
		$invoice->paid = Input::get('paid');
		$invoice->payable = date('Y-m-d', strtotime(Input::get('payable')));
		$invoice->save();

		$return = array('success' => true, 'value' => $invoice->value, 'paid' => $invoice->paid, 'payable' => date('d.m.Y', strtotime($invoice->payable)) );
		return Response::json($return, 200);
	}


	public function search($s){
		$projects = Project::where('name', 'like', '%'.$s.'%')->orWhere('id', 'like', '%'.$s.'%')->get();
		$return = array();
		if(count($projects) > 0){
			foreach($projects as $project):
				$return[] = array('value' => $project->id .' - '. $project->name, 'id' => $project->id);
			endforeach;
		}
		return Response::json($return, 200);
	}

	public function timemanagement($id){
		$project = Project::find($id);

		return View::make('projects.timemanagement', array('project' => $project, 'amount' => 0));	
	}

}
