<?php

class Customer extends Eloquent {
	
	public $timestamps = false;

	function getFullName(){
		if($this->parent){
			$parent = $this->find($this->parent);
			return $parent->name.' » '.$this->name;
		}else{
			return $this->name;
		}
	}

}