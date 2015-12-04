@extends('layouts.default')
@section('title', 'Zeiterfassung')
@section('header')
    {{ HTML::script('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.js') }}
	{{ HTML::script('asset/bootstrap/datetimepicker/locales/bootstrap-datetimepicker.de.js') }}
	{{ HTML::script('asset/bootstrap/typeahead/bloodhound.js') }}
	{{ HTML::script('asset/bootstrap/typeahead/typeahead.jquery.js') }}
	{{ HTML::script('asset/bootstrap/select/bootstrap-select.js') }}
	{{ HTML::script('asset/js/jquery/jquery.timemanagement.add.js') }}    

	{{ HTML::style('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.css') }}
	{{ HTML::style('asset/bootstrap/typeahead/typeahead.js-bootstrap.css') }}
	{{ HTML::style('asset/bootstrap/select/bootstrap-select.min.css') }}
@stop
@section('content')
	<div class="content-box">
		@include('layouts.errors')
		<div class="page">
			<p><strong>Stunden eintragen</strong></p>
			{{ Form::open(array('url' => 'timemanagement/save', 'method' => 'post', 'class' => 'form-inline timemanagement-add')) }}
				<div class="form-group">
					<input type="text" placeholder="Datum" name="date" value="{{ Input::get('date') }}" class="form-control input-sm datepicker date" data-date-format="dd.mm.yyyy" />
				</div>
				<div class="form-group">
					{{ Form::text('project_text', Input::get('project_text'), array('class' => 'form-control input-sm project_text', 'placeholder' => 'Projekt' )) }}
					{{ Form::hidden('project_id', Input::get('project_id'), array('class' => 'form-control input-sm project_id' )) }}
				</div>
				<div class="form-group">
					<select name="work_group" class="form-control input-sm work_group">
						<option value="0">Bitte wählen</option>

						@foreach($tasks as $group => $task)
							<option value="{{$group}}">{{$group}}</option>
						@endforeach
					</select>
				</div>
				<div class="form-group">
					<select name="work_task" class="form-control input-sm work_task">
						<option value="0">Bitte wählen</option>
					</select>
				</div>
				<div class="form-group">
					{{ Form::text('work_description', Input::get('work_description'), array('class' => 'form-control input-sm work_description', 'placeholder' => 'Anmerkung' )) }}
				</div>
				<div class="form-group">
					{{ Form::text('time', Input::get('time'), array('class' => 'form-control input-sm time', 'placeholder' => 'Arbeitszeit z.B. 1.5' )) }}
				</div>
				<input type="submit" name="submit" value="Eintragen" class="btn btn-primary btn-sm" />
			{{ Form::close() }}
		</div>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('.timemanagement-add').timemanagement('add');


				var ProjectTypeahead = new Bloodhound({
					datumTokenizer: function (d) {
					    return Bloodhound.tokenizers.whitespace(d.value);
					},
					queryTokenizer: Bloodhound.tokenizers.whitespace,
					remote: {
					    url:  '{{ url('/projects/search/') }}/%QUERY',
					    filter: function ( response ) {

					        return $.map(response, function (object) {
					            return {
					                value: object.value,
					                id: object.id
					            };
					        });
					    }
					}
				});
				ProjectTypeahead.initialize();

				$('.project_text').typeahead(null,{
					minLength: 2,
					displayText: 'value',
					source: ProjectTypeahead.ttAdapter()
				}).on('typeahead:selected', function (object, item) { 
					$('input.project_id').val(item.id);
				});

				var tasks = {{ json_encode($tasks) }};
				$('.work_group').change(function(){
					var value = $(this).val();
					$('.work_task').html('<option value="0">Bitte wählen</option>');
					
					$.each(tasks[value], function(i, val){
						$('.work_task').append('<option value="'+val+'">'+val+'</option>');
					});
					
				});

			});
		</script>

		<div class="page">
			<div class="row">
				<div class="col-xs-12 col-sm-6">
						@for($i = $current_kw; $i >= ($current_kw - 4); $i--)
						<h4 class="underline">KW {{$i}} | {{ date('d.m.Y', strtotime(date('Y') .'-W'.$i) ) }} - {{ date('d.m.Y', strtotime(date('Y') .'-W'.$i.'-7') ) }}</h4>
						<?php
							$kw_date_start = date('Y-m-d H:i:s', strtotime(date('Y') .'-W'.$i) );
							$kw_date_end = date('Y-m-d H:i:s', strtotime(date('Y') .'-W'.$i.'-7') );
							$kw_timemanagement = $user->timemanagement()->whereBetween('date', [$kw_date_start, $kw_date_end])->orderBy('date')->get();
							$kw_amount = 0;
						?>
						@if(count($kw_timemanagement)>0 )

							<table class="table table-striped table-hover">
								<colgroup>
									<col>
									<col>
									<col width="1">
								</colgroup>
								<thead>
									<tr>
										<th>Datum</th>
										<th>Projekt</th>
										<th>Zeitaufwand</th>
									</tr>
								</thead>
								<tbody>
									@foreach($kw_timemanagement as $tm)
									<?php $kw_amount += $tm->time; ?>
									<tr>
										<td>{{ date('d.m.Y', strtotime($tm->date)) }}</td>
										<td><a href="{{ url('/projects/detail/'.$tm->project_id) }}" title="Projetkdetails">{{ $tm->project_id }}</a></td>
										<td class="text-right">{{ number_format($tm->time,2) }}</td>
										
										
									</tr>
									@endforeach
								</tbody>
								<tfoot>
									<tr>
										<th colspan="2">Gesamt:</th>
										<th  class="text-right">{{ number_format($kw_amount,2) }}</th>
									</tr>
								</tfoot>
							</table>
						@else
							<p>Keine Arbeitsstunden eingetragen</p>
						@endif
						<hr>
					@endfor
				</div>
				<div class="col-xs-12 col-sm-6"></div>
			</div>
		</div>

@stop