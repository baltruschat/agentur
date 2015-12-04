@extends('layouts.default')
@section('title', 'Reports')

@section('header')
   
@stop

@section('content')

<ul class="nav nav-tabs page-nav" role="tablist">
	<li class="active"><a href="{{  url('/reports/') }}" title="Übersicht" class=""> Reports</a></li>
	<li><a href="{{ url('/reports/invoices/') }}" title="Rechnungen" class=""> Rechnungen</a></li>
	@if(Auth::user()->hasRole('administrator'))
		<li><a href="{{ url('/reports/hours/') }}" title="Stundenübersicht" class="">Stundenübersicht</a></li>
	@endif
</ul>
<div class="page reports">
	<div class="row">
		<div class="col-xs-12 col-sm-6">
			<h3>Umsatz nach Monaten</h3>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Monat</th>
						<th>Umsatz</th>
						<th>Ausstehender Umsatz</th>
					</tr>
				</thead>
				<tbody>
				@forelse($salesPerMonth as $sales)
					<tr>
						<td>{{ $sales['month'] }}</td>
						<td>{{ $sales['value'] }}€</td>
						<td>{{ $sales['open'] }}€</td>
					</tr>
				@empty
				@endforelse
				</tbody>
			</table>

		</div>
		<?php /*<div class="col-xs-12 col-sm-6">
			<h3>Umsatz nach Mitarbeitern</h3>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Mitarbeiter</th>
						<th>{{ $salesPerMemberMonth['lastMonth'] }}</th>
						<th>{{ $salesPerMemberMonth['currentMonth'] }}</th>
					</tr>
				</thead>
				<tbody>
				@forelse($salesPerMember as $sales)
					<tr>
						<td>{{ $sales['member']->firstname }} {{ $sales['member']->lastname }}</td>
						<td>{{ $sales['data']['lastMonth']['value'] }}€ / {{ $sales['data']['lastMonth']['open'] }}€</td>
						<td>{{ $sales['data']['currentMonth']['value'] }}€ / {{ $sales['data']['currentMonth']['open'] }}€</td>
					</tr>
				@empty
				@endforelse
				</tbody>
			</table>
			
		</div>*/ ?>
	</div>
</div>
@stop