<?php

use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class User extends Eloquent implements UserInterface, RemindableInterface {

	use UserTrait;
	use RemindableTrait;

	protected $table = 'users';
	protected $guarded = array("password_confirmation");
	protected $hidden = array('password');


	public static $rules = array(
		'email'=>'required|email|unique:users',
		'password'=>'required|between:6,12|confirmed',
		'password_confirmation'=>'required|between:6,12',
		'firstname' =>'required',
		'name' => 'required'
	);


	public function roles(){
        return $this->belongsToMany('Role');
    }

    public function group(){
    	return $this->hasOne('Group', 'id', 'current_group');
    }

    public function timemanagement(){
    	return $this->hasMany('Timemanagement', 'user_id', 'id');
    }

    public function tasks(){
    	return $this->hasMany('Task', 'user_id', 'id');
    }

    public function events(){
    	return $this->belongsToMany('Events');
    }

    
    public function projects(){
    	return $this->belongsToMany('Project');
    }

    public function notifications(){
    	return $this->hasMany('Notification', 'receiver_id', 'id');
    }

    public function groups(){
		return $this->belongsToMany('Group');		
 
    }

    public function hasRole($key){
        foreach($this->roles as $role){
            if($role->name === $key){
                return true;
            }
        }
        return false;
    }
    
	public function getAuthIdentifier()
	{
		return $this->id;
	}

	public function getAuthPassword()
	{
		return $this->password;
	}

	public function getRememberToken()
	{
		return $this->remember_token;
	}

	public function setRememberToken($value)
	{
		$this->remember_token = $value;
	}

	public function getRememberTokenName()
	{
		return 'remember_token';
	}

	public function getReminderEmail()
	{
		return $this->email;
	}



}
