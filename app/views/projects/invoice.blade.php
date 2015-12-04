@extends('layouts.default')
@section('title', $project->name)

@section('header')
    
@stop

@section('titleLink')
	<a href="{{ url('projects') }}" title="Erstellen" class="btn btn-success pull-right"><i class="fa fa-chevron-left"></i>  Zurück</a>
@stop

@section('content')
	<div class="content-box">
		<ul class="nav nav-tabs page-nav" role="tablist">
			<li><a href="{{ url('/projects') }}" title="" class=""><i class="fa fa-chevron-left"></i> Zurück</a></li>
			<li><a href="{{  url('/projects/detail/'.$project->id) }}" title="" class=""> Projekt</a></li>
			<li><a href="{{ url('/projects/task/'.$project->id) }}" title="Aufgaben" class="">Aufgaben</a></li>
			<li><a href="{{ url('/projects/timeline/'.$project->id) }}" title="Projekt Verlauf anzeigen" class="">Verlauf</a></li>
			<li><a href="{{ url('/projects/timemanagement/'.$project->id) }}" title="Arbeitsstunden anzeigen" class="">Arbeitsstunden</a></li>
			@if ($project->status <= 1)
				<li class="active"><a href="{{  url('/projects/invoice/'.$project->id) }}" title="Rechnungen" class="">Rechnungen</a></li>
			@endif
			@if ($project->status >= 2)
				<li class="active"><a href="{{  url('/projects/invoice/'.$project->id) }}" title="Abgerechnet">Abgerechnet</a></li>
			@endif
			<li><a href="{{ url('/projects/edit/'.$project->id) }}" title="Bearbeiten" class="">Bearbeiten</a></li>
		</ul>
		
		<div class="page project-invoice">
		{{ Form::open(array('url' => 'projects/create.invoice/'. $project->id, 'class' => 'form-inline' )) }}
			<div class="form-group">
				<select name="type" class="form-control input-sm">
					<option value="1">Schlussrechnung</option>
					<option value="2">Teilrechnung</option>
					<option value="3">Pauschale</option>
				</select>
			</div>
			<div class="form-group">
				<label for="value">Summe:</label>
				{{ Form::text('value', Input::old('value'), array('class' => 'form-control input-sm')) }}
			</div>
			<div class="form-group">
				<label for="payable">fällig am:</label>
				{{ Form::text('payable', Input::old('payable'), array('class' => 'form-control datepicker input-sm')) }}
			</div>
			{{ Form::submit('Rechnung erstellen', array('class' => 'btn btn-success btn-sm')) }}
		{{ Form::close() }}

		<hr />

		@if (count($project->invoices) > 0)
			<div class="row">
				<div class="col-lg-6">
					<table class="table table-striped invoices no-select">
						<thead>
							<tr>
								<th>Rechnungstyp</th>
								<th>Rechnungsnummer</th>
								<th>Bezahlt / Gesamt</th>
								<th>fällig am / erstellt</th>
								<th>Bezahlt</th>
							</tr>
						</thead>
						@foreach ($project->invoices as $invoice)
							<tr class="pointer no-select form-inline" data-url="{{ url('projects/update.invoice/'. $invoice->id)  }}">
								@if($invoice->type < 3)
									<td>{{ $invoice->getInvoiceType() }}</td>
									<td>#{{ $invoice->number }}</td>
									
									<td><div class="invoice_value">{{ $invoice->paid }}€ / {{ $invoice->value }}€</div>
										{{ Form::text('paid', $invoice->paid, array('class' => 'form-control input-sm paid hide', 'placeholder' => 'Summe')) }} {{ Form::text('value', $invoice->value, array('class' => 'form-control input-sm value hide', 'placeholder' => 'Bezahlt')) }} {{ Form::submit('Speichern', array('class' => 'btn btn-success btn-sm hide')) }}
									</td>
									<td><div class="invoice_payable">{{ date('d.m.Y', strtotime($invoice->payable));  }} / {{ date('d.m.Y', strtotime($invoice->created_at)) }}</div>
										{{ Form::text('payable', date('d.m.Y', strtotime($invoice->payable)), array('class' => 'form-control datepicker input-sm payable hide', 'placeholder' => 'Summe')) }}
										
									</td>
									<td>{{ ($invoice->value <= $invoice->paid) ? '<div class="text-success"><i class="fa fa-check"></i></div>' : '<div class="text-danger"><i class="fa fa-close"></i></div>' }}</td>
								@else
									<td colspan="4">{{ $invoice->getInvoiceType() }}</td>
									<td><div class="text-success"><i class="fa fa-check"></i></div></td>
								@endif
							</tr>
							
						@endforeach
					</table>
				</div>
			</div>

		@else
			<p>Es wurde noch keine Rechnung angelegt</p>
		@endif
		</div>

		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$('.invoices tbody tr').dblclick(function(){
					$(this).find('div.invoice_value, div.invoice_payable').toggleClass('hide');
					$(this).find('input').toggleClass('hide');
				});

				$('.invoices .btn-success').click(function(e){
					e.preventDefault();
					var $this = $(this).parent().parent();
					$.ajax({
		                url             :  $this.attr('data-url'),
		                data            :  $this.find('input').serialize(),
		                dataType        :  'json',
		                type            :  'POST'
		            }).done(function(data){
		            	if(data.success){
		            		$this.find('.invoice_value').html(data.paid +'€ / '+ data.value +'€' );
		            		$this.find('.invoice_payable').html(data.payable);
		            	}

		            	$this.find('div.invoice_value, div.invoice_payable').toggleClass('hide');
						$this.find('input').toggleClass('hide');
		            });

				});
			});
		</script>
		
		
	</div>

@stop