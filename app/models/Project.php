<?php

class Project extends Eloquent {

	public function team(){
        return $this->belongsToMany('User')->withPivot('task');
    }

    public function creator(){
    	return $this->hasOne('User');
    }

    public function Manager(){
        return $this->hasOne('User','id','manager');
    }

    public function InvoiceAddress(){
    	return $this->hasOne('Address','id','invoice_address');
    }

    public function files(){
        return $this->belongsToMany('Files');
    }

    public function Address(){
    	return $this->hasOne('Address','id','address');
    }

    public function Customer(){
        return $this->hasOne('Customer','id','customer');
    }

    public function task(){
        return $this->hasMany('Task', 'project_id', 'id');
    }

    public function invoices(){
        return $this->hasMany('Invoice', 'project_id', 'id');
    }

    public function timeline(){
        return $this->hasMany('Timeline', 'project_id', 'id');
    }

    public function timemanagement(){
        return $this->hasMany('Timemanagement', 'project_id', 'id');
    }
}