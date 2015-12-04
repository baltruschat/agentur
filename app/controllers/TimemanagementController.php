<?php

class TimemanagementController extends Controller {

	protected $layout = "layouts.default";

	protected $tasks = array(
		'Online' => array(
			'HTML & CSS',
			'Programmierung',
			'Layout',
			'Inhalte',
			'Facebook',
			'Google Adwords',
			'Newsletter',
			'Korrekturen',
			'Sonstiges'
		),
		'Print' => array(
			'Entwurf',
			'Layout',
			'Fotoregie',
			'Bildcomposing',
			'Bildretusche',
			'Reinzeichnung druckf. Daten',
			'Korrekturen',
			'Sonstiges'
		),
		'Text' => array(
			'Textkreation',
			'Textüberarbeitung',
			'Konzeption',
			'Exposé',
			'Korrekturlesen',
			'Sonstiges'
		),
		'Produktion' => array(
			'Produktionsabwicklung',
			'Fotoregie',
			'Versandvorbereitung',
			'Druckabnahme',
			'Produktions- / Bauabnahme',
			'Korrekturen',
			'Sonstiges'
		),
		'Beratung' => array(
			'Präsentation',
			'Kundenbesprechung',
		),
		'Projektmanagement' => array(
			'Besprechung intern',
			'Angebote',
			'Telefonate / Email',
			'Rechnungsvorbereitung',
			'Projektabwicklung',
			'Recherche',
			'Reklamation',
			'Material',
			'Versand vorbereitet',
			'Datenarchiv',
			'Sonstiges'
		)
	);

	public function mydashboard(){
		return View::make('timemanagement.dashboard', array('user' => Auth::user(), 'current_kw' => date('W'), 'tasks' => $this->tasks ) );
	}

	public function save(){
		$tm = new Timemanagement();
		$tm->project_id = Input::get('project_id');
		$tm->user_id = Auth::user()->id;
		$tm->work_group = Input::get('work_group');
		$tm->work_task = Input::get('work_task');
		$tm->work_description = Input::get('work_description');
		$tm->time = Input::get('time');
		$tm->date = date('Y-m-d H:i:s', strtotime(Input::get('date')) );
		$tm->save();

		return Redirect::to('timemanagement')->with('message', 'Ihre Arbeitszeit wurde gespeichert!');

	}
}