@extends('layouts.default')
@section('title', 'Projekte')
@section('header')
	{{ HTML::script('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.js') }}
	{{ HTML::script('asset/bootstrap/datetimepicker/locales/bootstrap-datetimepicker.de.js') }}
	{{ HTML::script('asset/bootstrap/select/bootstrap-select.min.js') }}
	{{ HTML::style('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.css') }}
	{{ HTML::style('asset/bootstrap/select/bootstrap-select.min.css') }}
@stop
@section('titleLink')
	<a href="{{ url('projects/create') }}" title="Erstellen" class="btn btn-success pull-right"><i class="glyphicon glyphicon-plus"></i>  Erstellen</a>
@stop
@section('content')
<div class=" project-list">
	<div class="page">
		<p>Projektfilter</p>
		{{ Form::open(array('url' => 'projects', 'method' => 'get', 'class' => 'form-inline project-filter')) }}
			<div class="form-group">
				{{ Form::text('s', Input::get('s'), array('class' => 'form-control input-sm', 'placeholder' => 'Suche...')) }}
				<select name="customer" class="form-control input-sm ">
					<option value="0">Kunde</option>
					@foreach ($customerHelper->customerArray() as $key => $val)
						@if (count($val['nodes']) > 0)

							<optgroup label="{{ $val['name'] }}">
								@foreach ($val['nodes'] as $k => $v)
									<option value="{{ $v['id'] }}" <?php echo (Input::get('customer') == $v['id']) ? 'selected="selected"' : ''; ?>>{{ $v['name'] }}</option>
								@endforeach
							</optgroup>
							
						@else
							<option value="{{ $val['id'] }}" <?php echo (Input::get('customer') == $val['id']) ? 'selected="selected"' : ''; ?>>{{ $val['name'] }}</option>
						@endif
						
					@endforeach
				</select>
			</div>
			<div class="form-group">
				<input type="text" placeholder="Datum" name="date" value="{{ Input::get('date') }}" class="form-control input-sm datepicker" data-date-format="dd.mm.yyyy" />
				<select name="date-type" class="form-control input-sm">
					<option value="=" <?php echo (Input::get('date-type') == '=') ? 'selected="selected"' : ''; ?>>genau</option>
					<option value=">" <?php echo (Input::get('date-type') == '>') ? 'selected="selected"' : ''; ?>>ab</option>
					<option value="<" <?php echo (Input::get('date-type') == '<') ? 'selected="selected"' : ''; ?>>vor</option>
				</select>
			</div>
			<div class="form-group">
				<select name="status" class="form-control input-sm">
					<option value="1" <?php echo (Input::get('status') == 1) ? 'selected="selected"' : ''; ?>>laufende Projekte</option>
					<option value="2" <?php echo (Input::get('status') == 2) ? 'selected="selected"' : ''; ?>>in Rechnung gestellt</option>
					<option value="3" <?php echo (Input::get('status') == 3) ? 'selected="selected"' : ''; ?>>Pauschale</option>
					<option value="-1" <?php echo (Input::get('status') == -1) ? 'selected="selected"' : ''; ?>>alle</option>
				</select>
			</div>
			<div class="form-group">
				<select name="count" class="form-control input-sm">
					<option value="10" <?php echo (Input::get('count') == 10) ? 'selected="selected"' : ''; ?>>10</option>
					<option value="25" <?php echo (Input::get('count') == 25) ? 'selected="selected"' : ''; ?>>25</option>
				</select>
			</div>
			<input type="submit" name="filter" value="Filter" class="btn btn-primary btn-sm" />
			{{ HTML::Link('projects','Filter zurücksetzten', array('class' => 'btn btn-default btn-sm')) }}
		{{ Form::close() }}
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			var base_url = $("base").attr("href");
			$('.datepicker').datetimepicker({
				autoclose : true,
				todayHighlight : true,
				minView: 2,
				language: 'de',
				

			});
			$('.selectpicker').selectpicker();
		});
	</script>

	

		@include('layouts.errors')
		
		<div class="page">

			@if (count($projects)>0)
				
				<div class="text-center">{{ $projects->appends($filter)->links(); }}</div>

				<table class="table table-striped project-list">
					<colgroup>
		              <col width="1">
		              <col>
		              <col width="1">
		              <col width="200px">
		              <col width="1">
		              <col>
		            </colgroup>  
					<thead>
						<tr>
							<th class="col-id text-center">#</th>
							<th class="col-title">Projekt</th>
							
							<?php if($filter['status'] <= 1){ ?>
								<th class="col-date">Eingangsdatum</th>
								<th class="col-team">Team</th>
							<?php }else{ ?>
								<th>Rechnungsnummer</th>
								<th>Bezahlstatus</th>
							<?php
								} 
							?>
							<th class="col-stats">Arbeitsstunden</th>
							<th class="col-action"></th>
						</tr>
					</thead>
					<tbody>	
					@foreach($projects as $project)
						
						<tr>
							<td class="col-id"><?php echo $project->id; ?></td>
							<td class="col-title"><h2><?php echo $project->name; ?></h2><?php echo $project->Customer->getFullName(); ?></td>
							<?php if($filter['status'] <= 1){ ?>
								<td><?php echo date('d.m.Y', strtotime($project->date)); ?></td>
								<td>
									<?php
									if(count($project->team) > 0):
										foreach($project->team as $member){
									?>
											@if($member->image == '')
											  <img width="30" class="img-circle image profil-img" src="{{ asset('asset/img/photo.png') }} " alt="{{ $member->firstname }} {{ $member->lastname }}">
											@else
											  <img width="30" class="img-circle image profil-img" src="{{ asset( $member->image ) }}" alt="{{ $member->firstname }} {{ $member->lastname }}">
											@endif
											
											<?php
										}
									else:
										echo 'Kein Team';
									endif;
									?>
								</td>
							<?php }else{ ?>
								<td class="invoice">
								@if($project->invoices ) 
									@foreach($project->invoices as $invoice) 
										#{{ $invoice->number }}<br />
									@endforeach
								@endif
								</td>
								<td></td>
							<?php } ?>
							
							
							<td>0</td>
							<td class="links">
								<a class="btn btn-success btn-xs" href="<?php echo url('/projects/detail/'.$project->id); ?>" title="Dieses Projekt öffnen"><i class="fa fa-plus-square"></i> Öffnen</a> 
								<a class="btn btn-danger btn-xs" href="<?php echo url('/projects/timeline/'.$project->id); ?>" title="Verlauf zu diesem Projekt"><i class="fa fa-clock-o"></i> Verlauf</a> 
								<a class="btn btn-primary btn-xs" href="<?php echo url('/projects/task/'.$project->id); ?>" title="Aufgaben zu diesem Projekt"><i class="fa fa-users"></i> Aufgaben</a> 
							</td>
						</tr>
						
					@endforeach
					</tbody>
				</table>
				<div class="text-center">{{ $projects->appends($filter)->links(); }}</div>	
				
			@else
				<div class="alert alert-warning">Bissher wurde noch kein Projekt angelegt.<br />{{ HTML::Link('projects/create','» Projekt erstellen') }}</div>
			@endif
		</div>
</div>
@stop