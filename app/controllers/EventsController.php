<?php

class EventsController extends \BaseController {


	public function dashboard(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		$event = Events::all();
		return View::make('events.dashboard', array('users' => User::OrderBy('lastname', 'ASC')->OrderBy('firstname', 'DESC')->get()));
	}

	public function json(){

		$events = Events::where('groupid', '=', Auth::user()->current_group)->get();

		$return_events = array();

		foreach($events as $event){

			$dbEvent = clone $event;

			$dbEvent->members = $dbEvent->members()->get();
			


			if( $dbEvent->members->contains(Auth::user()->id) ){
				$dbEvent->backgroundColor = '#5cb85c';
			}

			if($dbEvent->repeat != '0'){

				$laststart = $dbEvent->starttime;
				$lastend = $dbEvent->endtime;
				

				// täglich
				if($dbEvent->repeat == 1){
					for($i=1; $i <= 180; $i++){
						$laststart = date('Y-m-d H:i:s',strtotime('+1 day', strtotime($laststart)));
						$lastend = date('Y-m-d H:i:s',strtotime('+1 day', strtotime($lastend)));
						$dbEvent->starttime = $laststart;
						$dbEvent->endtime = $lastend;
						$return_events[] = clone $dbEvent;
					}

				}

				// wöchentlich
				if($dbEvent->repeat == 2){
					for($i=1; $i <= 24; $i++){
						$laststart = date('Y-m-d H:i:s',strtotime('+1 week', strtotime($laststart)));
						$lastend = date('Y-m-d H:i:s',strtotime('+1 week', strtotime($lastend)));
						$dbEvent->starttime = $laststart;
						$dbEvent->endtime = $lastend;
						$return_events[] = clone $dbEvent;
					}
				}

				// monatlich
				/*if($dbEvent->repeat == 3){
					for($i=1; $i <= 6; $i++){
						$laststart = date('Y-m-d H:i:s',strtotime('+1 month', strtotime($laststart)));
						$lastend = date('Y-m-d H:i:s',strtotime('+1 month', strtotime($lastend)));
						$dbEvent->starttime = $laststart;
						$dbEvent->endtime = $lastend;
						$events[] = clone $dbEvent;
					}
				} */
			}else{
				$return_events[] = clone $dbEvent;
			}
		}



		return Response::json($return_events, 200);
	}

	public function save(){

		if( Input::get('add-event-id') != "" ){
			$event = Events::find( Input::get('add-event-id') );
			if(Auth::user()->current_group != $event->groupid){
				// user has no access to edit this event
				$return = array('success' => true);
				return Response::json($return, 200);
			}
		}else{
			$event = new Events();
		}

		$event->groupid = Auth::user()->current_group;
		$event->userid = Auth::user()->id;
		$event->name = Input::get('add-event-title');
		$event->place = Input::get('add-event-place');
		$event->starttime = date('Y-m-d H:i:s', strtotime(Input::get('add-event-start')));
		$event->endtime = date('Y-m-d H:i:s', strtotime(Input::get('add-event-end')));
		$event->allday = Input::has('add-event-allday') ? Input::get('add-event-allday') : 0;
		$event->repeat = Input::get('add-event-repeat');
		$event->note = Input::get('add-event-note');
		$event->save();

		$event->members()->detach();

		if(Input::get('user')):
			foreach(Input::get('user') as $member):
				if($member['active']):
					$event->members()->attach($member['id'], array('events_id' => $event->id));

					$note = new Notification();
					$note->type = 1;
					$note->creator_id = Auth::user()->id;
					$note->receiver_id = $member['id'];
					if( Input::get('add-event-id') == "" ){
						$note->notification = 'hat einen <strong>Termin</strong> am <em>'.date('d.m.Y \u\m H:i',strtotime($event->starttime)).' Uhr</em> angelegt.';
					}else{
						$note->notification = 'hat den Termin <strong>'.$event->name.'</strong> auf den <em>'.date('d.m.Y \u\m H:i',strtotime($event->starttime)).' Uhr</em> verlegt.';	
					}
					$note->save();

				endif;
			endforeach;
		endif;

		

		$return = array('success' => true);
		return Response::json($return, 200);
		

	}

	public function delete(){



		$event = Events::find( Input::get('add-event-id') );

		if(Auth::user()->current_group == $event->groupid){
			// user has access to delete this event
			$event->delete();
		}

		$return = array('success' => true);
		return Response::json($return, 200);
	}



}
