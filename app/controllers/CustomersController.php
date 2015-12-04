<?php

class CustomersController extends \BaseController {
	
	protected $layout = "layouts.default";

	public function edit(){

		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}

		$customers = Customer::all();
		$customerHelper = new CustomerHelper($customers);

		return View::make('customers.edit', array('customer' => Customer::find( Input::get('customerid')), 'customers' => $customers,'customerHelper' => $customerHelper  ));
	}

	public function create(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}

		$customers = Customer::all();
		$customerHelper = new CustomerHelper($customers);

		return View::make('customers.create', array('customers' => $customers,'customerHelper' => $customerHelper));	
	}

	public function delete($id) {

		$customer = new Customer();
		$customer = Customer::find($id);
		$customer->delete();
		return Redirect::to('system')->with('success', 'Der Kunde wurde gelöscht!');
	}

	public function save(){

		$customer = new Customer();
		$customer->name = Input::get('name');
		$customer->parent = Input::get('parentid');
		$customer->save();

		return Redirect::to('system')->with('success', 'Der Kunde wurde angelegt!');
	}

	public function update(){

		$customer = new Customer();
		$customer = Customer::find(Input::get('customerid'));
		$customer->name = Input::get('name');
		$customer->parent = Input::get('parentid');
		$customer->save();

		return Redirect::to('system')->with('success', 'Der Kunde wurde aktualisiert!');
	}


}	
?>