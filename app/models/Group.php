<?php

class Group extends Eloquent {

	public $timestamps = false;

	public function members(){
        return $this->belongsToMany('User');
    }

    public function getInvoiceNumber(){
    	$invoice_number = (int)$this->invoice_number;
		$invoice_number++;
		$invoice = str_replace(
			array('DD','dd','mm','MM','YYYY','YY','ID'),
			array(date('d'),date('j'),date('n'),date('m'),date('Y'),date('y'),$invoice_number),
			$this->invoice_number_format
		);
		return array($invoice,$invoice_number);
    }

}