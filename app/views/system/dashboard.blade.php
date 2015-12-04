
@extends('layouts.default')
@section('title', 'System')

@section('header')
	{{ HTML::style('asset/css/bootstrap-select.min.css') }}
    {{ HTML::script('asset/js/bootstrap-select.min.js') }}
@stop

@section('content')

	<div class="content-box">
		@include('layouts.errors')

		<div class="row">
			<div class="col-xs-12 col-sm-10 col-md-8 col-lg-8">


				<!-- Nav tabs -->
				<ul class="nav nav-tabs page-nav" role="tablist">
				  <li class="active"><a href="#general" role="tab" data-toggle="tab">Allgemein</a></li>
				  <li><a href="#customers" role="tab" data-toggle="tab">Kunden</a></li>
				  <li><a href="#workinggroup" role="tab" data-toggle="tab">Arbeitsgruppen</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">

				  <div class="tab-pane page active" id="general">
					
				  </div>

				  <div class="tab-pane page" id="customers">

					<div class="row">
				  	<a href="{{ url('customer/create') }}" title="Erstellen" class="btn btn-success pull-right"><i class="glyphicon glyphicon-plus"></i>  Kunden anlegen</a>
				  	</div>

				  	{{ Form::open(array('url' => 'customer/edit')) }}


					<select name="customerid" class="selectpicker" data-live-search="true">

					@foreach ($customerHelper->customerArray() as $key => $val)

						<option value="{{ $val['id'] }}">{{ $val['name'] }}</option>

						@if (count($val['nodes']) > 0)

							@foreach ($val['nodes'] as $k => $v)
								<option value="{{ $v['id'] }}">-- {{ $v['name'] }}</option>
							@endforeach

						@endif
						
					@endforeach

					<?php /*
					@foreach ($customerHelper->customerArray() as $key => $val)
						@if (count($val['nodes']) > 0)

							<optgroup label="{{ $val['name'] }}">

							@foreach ($val['nodes'] as $k => $v)
								<option value="{{ $v['id'] }}">{{ $v['name'] }}</option>
							@endforeach

							</optgroup>
							
						@else
							<option value="{{ $val['id'] }}">{{ $val['name'] }}</option>
						@endif
						
					@endforeach 
					*/ ?>

					</select>

					<button class="btn btn-default">bearbeiten</button>

					{{ Form::close() }}

				

				  </div>

				  <div class="tab-pane page" id="workinggroup">

				  	<a href="{{ url('groups/create') }}" title="Erstellen" class="btn btn-success pull-right"><i class="glyphicon glyphicon-plus"></i>  Erstellen</a>

					<table class="table table-striped table-condensed table-hover table-groups">
						<thead>
							<tr>
								<th class="h_name">Name</th>
								<th class="h_leader">Gruppenleiter</th>
								<th class="h_count">Mitgliederanzahl</th>
								<th class="h_actions"></th>
							</tr>
						</thead>
						<tbody>
							@forelse($groups as $group)

								<tr data-id="{{ $group->id }}">
									<td class="name">{{ $group->name }}</td>
									<td class="leader">{{ User::find($group->leader)->firstname }} {{ User::find($group->leader)->lastname }}</td>
									<td class="count">{{ sizeof($group->members->all()) }}</td>
									<td class="actions">
										<a href="{{ url('groups/edit') }}{{ '/'.$group->id }}" alt=""><button type="button" class="btn btn-primary btn-xs">bearbeiten</button></a>
										<a href="{{ url('groups/delete') }}{{ '/'.$group->id }}" alt=""><button type="button" class="btn btn-danger btn-xs">löschen</button></a>
									</td>
								</tr>
							@empty
								<tr><td colspan="4">Es wurden noch keine Gruppen angelegt.</td></tr>
							@endforelse
						</tbody>

					</table>



				  </div>

				</div>


			</div>
		</div>

	</div>

	<script>
		$('.selectpicker').selectpicker();
	</script>

@stop