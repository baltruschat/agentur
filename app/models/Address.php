<?php

class Address extends Eloquent {
	 public $timestamps = false;

	 public function Company(){
	 	return $this->hasOne('Customer','id','customer');
	 }
}
