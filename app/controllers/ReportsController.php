<?php

class ReportsController extends \BaseController {

	public function dashboard(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		
		if(!Auth::user()->hasRole('administrator') && !Auth::user()->hasRole('finance')){
			return View::make('layouts.no-access');
		}

		// Umsatz nach Monaten
		$salesPerMonth = array();
		$firstDate = new DateTime();
		$endDate = new DateTime();
		$firstDate->modify('first day of this month');
		$endDate->modify('-1 year')->modify('first day of this month');
		while($endDate <= $firstDate){
			$firstOfMonth = clone $endDate;
			$endOfMonth = clone $endDate;
			$value = Invoice::where('type', '!=', '3')
							->whereRaw('`paid` >= `value`')
							->whereBetween("payable", array($firstOfMonth->modify('first day of this month')->format('Y-m-d'),$endOfMonth->modify('last day of this month')->format('Y-m-d')) )
							->sum('value');
			$open = Invoice::select(DB::raw("SUM(`value`-`paid`) AS openValue"))
							->where('type', '!=', '3')
							->whereRaw('`paid` < `value`')
							->whereBetween("payable", array($firstOfMonth->modify('first day of this month')->format('Y-m-d'),$endOfMonth->modify('last day of this month')->format('Y-m-d')) )
							->first();
			$salesPerMonth[] = array('month' => $firstOfMonth->format('M Y'), 'value' => $value, 'open' => ($open->openValue >0) ? $open->openValue : 0);
			$endDate->modify('+1 month');
			
		}
		$salesPerMonth = array_reverse($salesPerMonth);

		//Umsatz nach Members
		$salesPerMember = array();

		$members = User::all();
		$currentMonth = new DateTime();
		$lastMonth = new DateTime();
		$lastMonth->modify('-1 month')->modify('first day of this month');
		foreach($members as $user){
			
			$currentValue = Invoice::leftJoin('projects', 'invoices.project_id','=', 'projects.id')
							->where('type', '!=', '3')
							->whereRaw('`paid` >= `value`')
							->whereBetween("payable", array($currentMonth->modify('first day of this month')->format('Y-m-d'),$currentMonth->modify('last day of this month')->format('Y-m-d')) )
							->where('projects.manager', '=', $user->id)
							->sum('value');	
			$currentOpen = Invoice::select(DB::raw("SUM(`value`-`paid`) AS openValue"))
							->leftJoin('projects', 'invoices.project_id','=', 'projects.id')
							->where('type', '!=', '3')
							->whereRaw('`paid` < `value`')
							->whereBetween("payable", array($currentMonth->modify('first day of this month')->format('Y-m-d'),$currentMonth->modify('last day of this month')->format('Y-m-d')) )
							->where('projects.manager', '=', $user->id)
							->first();
			$lastValue = Invoice::leftJoin('projects', 'invoices.project_id','=', 'projects.id')
							->where('type', '!=', '3')
							->whereRaw('`paid` >= `value`')
							->whereBetween("payable", array($lastMonth->modify('first day of this month')->format('Y-m-d'),$lastMonth->modify('last day of this month')->format('Y-m-d')) )
							->where('projects.manager', '=', $user->id)
							->sum('value');	
			$lastOpen = Invoice::select(DB::raw("SUM(`value`-`paid`) AS openValue"))
							->leftJoin('projects', 'invoices.project_id','=', 'projects.id')
							->where('type', '!=', '3')
							->whereRaw('`paid` < `value`')
							->whereBetween("payable", array($lastMonth->modify('first day of this month')->format('Y-m-d'),$lastMonth->modify('last day of this month')->format('Y-m-d')) )
							->where('projects.manager', '=', $user->id)
							->first();

			$salesPerMember[] = 
			array('member' => $user,
				  'data' => array(
						'currentMonth' => array('value' => $currentValue, 'open' => ($currentOpen->openValue >0) ? $currentOpen->openValue : 0),
						'lastMonth' => array('value' => $lastValue, 'open' => ($lastOpen->openValue >0) ? $lastOpen->openValue : 0)
					)
			);

		}

		$salesPerMemberMonth = array(
			'currentMonth' => $currentMonth->format('M Y'),
			'lastMonth' => $lastMonth->format('M Y')
		);
		
		return View::make('reports.dashboard', array('salesPerMonth' => $salesPerMonth, 'salesPerMember' =>$salesPerMember, 'salesPerMemberMonth' => $salesPerMemberMonth));
	}

	public function invoices(){
		if(!Auth::check()){
			return Redirect::to('users/login')->with('message', 'Bitte logge dich ein, damit du diese Seite sehen kannst!');	
		}
		
		if(!Auth::user()->hasRole('administrator') && !Auth::user()->hasRole('finance')){
			return View::make('layouts.no-access');
		}

		$invoicesPaid = Invoice::where('type', '!=', '3')->whereRaw('`paid` >= `value`')->get();
		$invoicesOpen = Invoice::where(function($query){
			$query->where('type', '!=', '3')
				  ->whereRaw('`paid` < `value`')
			      ->whereRaw("'".date('Y-m-d')."' <= `payable`");
		})->get();
		$invoicesDue = Invoice::where(function($query){
			$query->where('type', '!=', '3')
				  ->whereRaw('`paid` < `value`')
			      ->whereRaw("'".date('Y-m-d')."' > `payable`");
		})->get();

		return View::make('reports.invoices',array('invoicesPaid' => $invoicesPaid,'invoicesOpen' => $invoicesOpen,'invoicesDue' => $invoicesDue));
	}
}
?>