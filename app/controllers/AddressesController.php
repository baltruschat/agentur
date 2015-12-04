<?php

class AddressesController extends \BaseController {

	protected $layout = "layouts.default";

	public function dashboard(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');
		}
		return View::make('addresses.dashboard', array('addresses' => Address::all() ) );
	}

	public function create(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');
		}
		$customers = Customer::all();
		return View::make('addresses.create', array('customerHelper' => new CustomerHelper($customers)));
	}

	public function edit($id){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');
		}
		return View::make('addresses.edit', array('address' => Address::find($id)) );
	}

	public function save(){
		$address = new Address();
		$address->firstname = Input::get('firstname');
		$address->name = Input::get('name');
		$address->customer = Input::get('customer');
		$address->position = Input::get('position');
		$address->category = Input::get('category');
		$address->street = Input::get('street');
		$address->zip = Input::get('zip');
		$address->city = Input::get('city');
		$address->country = Input::get('country');
		$address->tel = Input::get('tel');
		$address->tel2 = Input::get('tel2');
		$address->fax = Input::get('fax');
		$address->mobile = Input::get('mobile');
		$address->email = Input::get('email');
		$address->www = Input::get('www');
		$address->group = Auth::user()->current_group;
		$address->save();
		return Redirect::to('addresses')->with('success', 'Der Kontakt wurde angelegt!');
	}

	public function update(){
		$address = Address::find(Input::get('id'));
		$address->firstname = Input::get('firstname');
		$address->name = Input::get('name');
		$address->customer = Input::get('customer');
		$address->position = Input::get('position');
		$address->category = Input::get('category');
		$address->street = Input::get('street');
		$address->zip = Input::get('zip');
		$address->city = Input::get('city');
		$address->country = Input::get('country');
		$address->tel = Input::get('tel');
		$address->tel2 = Input::get('tel2');
		$address->fax = Input::get('fax');
		$address->mobile = Input::get('mobile');
		$address->email = Input::get('email');
		$address->www = Input::get('www');
		$address->group = Auth::user()->current_group;
		$address->save();
		return Redirect::to('addresses')->with('success', 'Der Kontakt wurde gespeichert!');
	}

	public function get(){
		$address = Address::find(Input::get('id'));
		$address->customer = $address->Company;
		return Response::json($address, 200);
	}

	public function json(){
		$address = Address::where('name', 'LIKE', '%'.Input::get('query').'%')
						->orWhere('firstname', 'LIKE', '%'.Input::get('query').'%')
						->orWhere('street', 'LIKE', '%'.Input::get('query').'%')
						->orWhere('city', 'LIKE', '%'.Input::get('query').'%')
						    ->get();
		//$address->Customer = $address->Customer;
		return Response::json($address, 200);
	}
}
?>
