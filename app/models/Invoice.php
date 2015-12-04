<?php

class Invoice extends Eloquent {
	public function project(){
        return $this->hasOne('Project', 'project_id', 'id');
    }

    public function getInvoiceType(){
    	if($this->type == 1)
    		return 'Schlussrechnung';
    	else if($this->type == 2)
    		return 'Teilrechnung';
    	else
    		return 'Pauschale';
    }
}