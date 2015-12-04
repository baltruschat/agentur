<?php

class Task extends Eloquent {
	
	public function creator(){
    	return $this->hasOne('User','id', 'creator_id');
    }

    public function project(){
    	return $this->hasOne('Project','id', 'project_id');
    }

	public function getClass(){
		if( ( (strtotime($this->finish) - time()) /86400) < 7){
            return 'task-warning';
        }elseif(strtotime($this->finish) < time()){
            return 'task-danger';   
		}else{
			return 'task-success';
		}
	}
	
}