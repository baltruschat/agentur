<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', array('uses' => 'BaseController@start'));


/* User Routes */
Route::get('users/login', array('uses' => 'UsersController@login'));
Route::get('users/logout', array('uses' => 'UsersController@logout'));
Route::get('users/register', array('uses' => 'UsersController@register'));
Route::get('users/dashboard', array('uses' => 'UsersController@dashboard'));
Route::get('users/activate/{token}', array('uses' => 'UsersController@activate'));
Route::get('users/edit', array('uses' => 'UsersController@edit'));
Route::get('users/json', array('uses' => 'UsersController@json'));

Route::get('users/notifications/read', array('uses' => 'UsersController@notificationsRead'));

Route::post('users/update', array('uses' => 'UsersController@update'));
Route::post('users/upload', array('uses' => 'UsersController@upload'));
Route::post('users/crop', array('uses' => 'UsersController@crop'));
Route::post('users/signin', array('uses' => 'UsersController@validate'));
Route::post('users/create', array('uses' => 'UsersController@store'));

/* Password Routes */
Route::get('password/remind', array('uses' => 'RemindersController@getRemind'));
Route::get('password/reset/{token}', array('uses' => 'RemindersController@getReset'));

Route::post('password/remind', array('uses' => 'RemindersController@postRemind'));
Route::post('password/reset', array('uses' => 'RemindersController@postReset'));

/* Address Routes */
Route::get('addresses', array('uses' => 'AddressesController@dashboard'));
Route::get('addresses/create', array('uses' => 'AddressesController@create'));
Route::get('addresses/edit/{id}', array('uses' => 'AddressesController@edit'));
Route::get('addresses/json', array('uses' => 'AddressesController@json'));

Route::post('addresses/save', array('uses' => 'AddressesController@save'));
Route::post('addresses/get', array('uses' => 'AddressesController@get'));
Route::post('addresses/update', array('uses' => 'AddressesController@update'));


/* Projects Routes */
Route::get('projects', array('uses' => 'ProjectsController@dashboard'));
Route::get('projects/detail/{id}', array('uses' => 'ProjectsController@detail'));

Route::post('projects/create.invoice/{id}', array('uses' => 'ProjectsController@createInvoice'));
Route::get('projects/create', array('uses' => 'ProjectsController@create'));

Route::post('projects/upload', array('uses' => 'ProjectsController@upload'));
Route::post('projects/delete.file', array('uses' => 'ProjectsController@deleteFile'));
Route::post('projects/save', array('uses' => 'ProjectsController@store'));

Route::get('projects/edit/{id}', array('uses' => 'ProjectsController@edit'));

Route::post('projects/update.invoice/{id}', array('uses' => 'ProjectsController@updateInvoice'));

Route::get('projects/task/{id}', array('uses' => 'ProjectsController@task'));
Route::post('projects/task/add', array('uses' => 'ProjectsController@addTask'));
Route::post('projects/task/done', array('uses' => 'ProjectsController@doneTask'));
Route::post('projects/task/order', array('uses' => 'ProjectsController@orderTask'));

Route::get('projects/timeline/{id}', array('uses' => 'ProjectsController@timeline'));
Route::get('projects/invoice/{id}', array('uses' => 'ProjectsController@invoice'));

Route::get('projects/timemanagement/{id}', array('uses' => 'ProjectsController@timemanagement'));

Route::get('projects/search/{s}', array('uses' => 'ProjectsController@search'));

/* TimeManagement */
Route::get('timemanagement', array('uses' => 'TimemanagementController@mydashboard'));
Route::post('timemanagement/save', array('uses' => 'TimemanagementController@save'));

/* Group Routes */
Route::get('groups', array('uses' => 'GroupsController@dashboard'));
Route::get('groups/create', array('uses' => 'GroupsController@create'));
Route::get('groups/edit/{id}', array('uses' => 'GroupsController@edit'));
Route::get('groups/delete/{id}', array('uses' => 'GroupsController@delete'));

Route::post('groups/save', array('uses' => 'GroupsController@save'));
Route::post('groups/update', array('uses' => 'GroupsController@update'));

/* System Routes */
Route::get('system', array('uses' => 'SystemController@dashboard'));

/* Customer Routes */
Route::post('customer/edit', array('uses' => 'CustomersController@edit'));
Route::post('customer/save', array('uses' => 'CustomersController@save'));
Route::post('customer/update', array('uses' => 'CustomersController@update'));
Route::get('customer/create', array('uses' => 'CustomersController@create'));
Route::get('customer/delete/{id}', array('uses' => 'CustomersController@delete'));

/* Event Routes */
Route::get('events', array('uses' => 'EventsController@dashboard'));
Route::get('events/json', array('uses' => 'EventsController@json'));
Route::post('events/save', array('uses' => 'EventsController@save'));
Route::post('events/delete', array('uses' => 'EventsController@delete'));

/* Reports Routes */
Route::get('reports', array('uses' => 'ReportsController@dashboard'));
Route::get('reports/invoices', array('uses' => 'ReportsController@invoices'));

Menu::make('MainMenu', function($menu){
	if(Request::is( 'users/dashboard')) $menu->add('Dashbaord', 'users/dashboard')->active();
	else $menu->add('Dashbaord',     'users/dashboard');

	if(Request::is( 'projects')) $menu->add('Projekte', 'projects')->active();
	else $menu->add('Projekte',    'projects');

	if(Request::is( 'timemanagement')) $menu->add('Zeiterfassung', 'timemanagement')->active();
	else $menu->add('Zeiterfassung',    'timemanagement');

	if(Request::is( 'events')) $menu->add('Kalender', 'events')->active();
	else $menu->add('Kalender', 'events');

	if(Auth::user() && (Auth::user()->hasRole('administrator') || Auth::user()->hasRole('finance'))){
		if(Request::is( 'reports')) $menu->add('Reports', 'reports')->active();
		else $menu->add('Reports', 'reports');
	}

	if(Request::is( 'addresses')) $menu->add('Adressen', 'addresses')->active();
	else $menu->add('Adressen', 'addresses');

	if(Request::is( 'system')) $menu->add('System', 'system')->active();
	else $menu->add('System', 'system');

});