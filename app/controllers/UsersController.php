<?php

class UsersController extends \BaseController {

	protected $layout = "layouts.default";

	public function __construct() {
	    $this->beforeFilter('csrf', array('on'=>'post'));
	}

	public function store(){

		$input = Input::all();
		$validation = Validator::make($input, User::$rules);
		if ($validation->passes()){
			$user = new User;
			$user->lastname =  Input::get('name');
			$user->firstname =  Input::get('firstname');
			$user->email =  Input::get('email');
			$user->password =  Hash::make(Input::get('password'));
			$role = Role::where('name', 'member')->firstOrFail();
			$user->token = str_random();
			$user->save();
			$user->roles()->attach($role->id, array("user_id"=>$user->id));

			Mail::send('emails.activation', 
				array('name'=> $user->firstname .' '. $user->lastname, 'token' => $user->token), 
				function($message){
					$message->to( Input::get('email'), Input::get('firstname') .' '. Input::get('name') )->subject('Ihr Account aktivieren');
				}
			);

			return Redirect::to('users/login')->with('message', 'Thanks for registering!');
		}

		return Redirect::to('users/register')
				->withErrors($validation) // send back all errors to the login form
				->withInput(Input::except('password'));

	}

	public function dashboard(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		$tasks = Auth::user()->tasks()->where('finish', '>=', date('Y-m-d H:i:s') )->orderBy('finish','DESC')->limit(10)->get();
		$events = Auth::user()->events()->whereDate('starttime', '=', date('Y-m-d') )->orderBy('starttime','ASC')->get();
		$projects = Auth::user()->projects()->orderBy('created_at','DESC')->limit(10)->get();
		$timemanagement = Auth::user()->timemanagement()->whereDate('date', '=', date('Y-m-d'))->get()->sum('time');
		$this->layout->content = View::make('users.dashboard', array('tasks' => $tasks, 'events' => $events, 'projects' => $projects, 'timemanagement' => $timemanagement) );
		return;

	}

	public function edit(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		return View::make('users.edit', array( 'user' => Auth::user()) );
	}

	public function update(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		$user = User::find( Auth::user()->id );
		if(Input::has('firstname')){
			$user->firstname = Input::get('firstname');
			$user->lastname = Input::get('name');
			if( (Auth::user()->email != Input::get('email')) || Input::get('password') != '' ){
				$user->email = Input::get('email');
				if(Input::get('password') != Input::get('password_confirmation'))
					return Redirect::to('users/edit')->with('error', 'Please check your password.');
				else
					$user->password = Hash::make(Input::get('password'));
			}
		}

		$user->save();
		Auth::login($user);
		return Redirect::to('users/edit')->with('success', 'Deine Account-Daten wurde gespeichert!');
	}

	public function upload(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		$user = User::find( Auth::user()->id );
		$input = Input::all();
		$rules = array(
		    'file' => 'image|max:3000',
		);

		$validation = Validator::make($input, $rules);

		if ($validation->fails()){
			return Response::make($validation->errors->first(), 400);
		}
		$filename = str_random(12).'.'.Input::file('file')->getClientOriginalExtension() ;
		$path = public_path() .'/asset/img/users/'.$user->id;
		@mkdir($path.$user->id);

		$uploaded = Input::file('file')->move($path, $filename);

		if($uploaded){
			Image::make( $path.'/'.$filename)->resize(500,500, function($constraint){ $constraint->aspectRatio(); })->save();
			$user->image = '/asset/img/users/'.$user->id.'/'. $filename;
			$user->save();
			return Response::json($user->image, 200);
		}else{
			return Response::json('error', 400);
		}
	}

	public function crop(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		$user = User::find( Auth::user()->id );
		$image = public_path().'/'.$user->image;
		$w = Input::get('x2') - Input::get('x1');
		$h = Input::get('y2') - Input::get('y1');
		Image::make($image)->crop($w, $h, Input::get('x1'), Input::get('y1'))->resize(250,250)->save();
		return Response::json(array('img' => $user->image), 200);
	}

	public function register(){
		return View::make('users.register');
	}

	public function login(){
		$user = User::where('email', Cookie::get('email'))->first();
		return View::make('users.login', array('user' =>$user));
	}

	public function logout(){
		Auth::logout();
    	return Redirect::to('users/login')->with('message', 'Your are now logged out!');
	}

	public function validate(){
		// validate the info, create rules for the inputs
		$rules = array(
			'email'    => 'required|email', // make sure the email is an actual email
			'password' => 'required|min:3' // password can only be alphanumeric and has to be greater than 3 characters
		);

		// run the validation rules on the inputs from the form
		$validator = Validator::make(Input::all(), $rules);
		
		// if the validator fails, redirect back to the form
		if ($validator->fails()) {
			return Redirect::to('users/login')
				->withErrors($validator) // send back all errors to the login form
				->withInput(Input::except('password')); // send back the input (not the password) so that we can repopulate the form
		} else {
			
			if(Auth::attempt(array('email' => Input::get('email'),'password' => Input::get('password'), 'active' => 1))){
				return Redirect::to('users/dashboard')
						->withCookie( Cookie::forever( 'email', Input::get('email') ) );
			} else {	 	
				return Redirect::to('users/login')
						->withInput(Input::except('password'));
			}
		}
	}

	public function activate($token){
		$user = User::where('token', '=', $token)->first();
		if($user){
			$user->active = 1;
			$user->token = '';
			$user->save();
			return Redirect::to('users/login')->with('message','Ihr Account wurde aktiviert, Sie können sich jetzt einloggen!');
		}else{
			return Redirect::to('users/login')->with('error','Leider konnten wir Ihren Account nicht aktivieren, bitte melden Sie sich beim Support.');	
		}
	}

	public function json(){
		$user = User::where('lastname', 'LIKE', '%'.Input::get('query').'%')
					->orWhere('firstname', 'LIKE', '%'.Input::get('query').'%')
					->get();
		return Response::json($user, 200);
	}

	public function notificationsRead(){
		$notes = Auth::user()->notifications()->whereIn('id',explode(',',Input::get('notes')))->get();

		if(count($notes) > 0):
			foreach($notes as $note){
				$note->read = 1;
				$note->save();
			}
		endif;

		return Response::json();
	}


}
