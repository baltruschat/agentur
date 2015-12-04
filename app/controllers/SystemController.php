<?php

class SystemController extends \BaseController {
	
	protected $layout = "layouts.default";

	public function dashboard(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}

		$customers = Customer::all();
		$customerHelper = new CustomerHelper($customers);
		$groups = Group::all();
		return View::make('system.dashboard',array('customers' => $customers,'customerHelper' => $customerHelper, 'groups' => $groups ));
	}




}	
?>