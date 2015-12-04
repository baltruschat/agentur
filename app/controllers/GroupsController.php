<?php

class GroupsController extends \BaseController {

	protected $layout = "layouts.default";

	public function create(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		return View::make('groups.create');	
	}

	public function edit($id){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		return View::make('groups.edit', array('group' => Group::find($id)) );	
	}

	public function save(){

		$group = new Group();
		$group->name = Input::get('name');
		$group->leader = Auth::user()->id;
		$group->save();

		$user = User::find(Auth::user()->id);
		$user->groups()->attach($group->id, array("user_id"=>$user->id));

		return Redirect::to('groups')->with('success', 'Die Gruppe wurde angelegt!');
	}

	public function update(){
		$group = new Group();
		$group = Group::find(Input::get('id'));
		$group->name = Input::get('name');
		//$address->description = Input::get('description');
		$group->save();
		return Redirect::to('groups')->with('success', 'Die Gruppe wurde gespeichert!');
	}

	public function delete($id){
		$group = new Group();
		$group = Group::find($id);
		$group->delete();
		return Redirect::to('groups')->with('success', 'Die Gruppe wurde gelöscht!');
	}

}
