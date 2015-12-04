<?php

class Timemanagement extends \Eloquent {
	protected $table = 'timemanagement';
	public $timestamps = false;
	protected $fillable = [];

	public function user(){
		return $this->hasOne('User','id','user_id');
	}
}