<?php

class BaseController extends Controller {

	protected $layout = 'layouts.default';

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	protected function setupLayout()
	{
		if ( ! is_null($this->layout))
		{
			$this->layout = View::make($this->layout);
		}
	}

	public function start() {
		if(Auth::check()){
			return Redirect::to('users/dashboard');
		}else{
			return Redirect::to('users/login');
		}
	}

}
