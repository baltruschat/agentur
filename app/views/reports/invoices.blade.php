@extends('layouts.default')
@section('title', 'Rechnungen')

@section('header')
   
@stop

@section('content')

<ul class="nav nav-tabs page-nav" role="tablist">
	<li><a href="{{  url('/reports/') }}" title="Übersicht" class=""> Reports</a></li>
	<li class="active"><a href="{{ url('/reports/invoices/') }}" title="Rechnungen" class=""> Rechnungen</a></li>
	@if(Auth::user()->hasRole('administrator'))
		<li><a href="{{ url('/reports/hours/') }}" title="Stundenübersicht" class="">Stundenübersicht</a></li>
	@endif
</ul>
<div class="page reports">
		
		<div class="row">
			<div class="col-xs-12 col-md-4">
				<h3>Offene Rechnungen</h3>
				<table class="table table-striped invoices">
					<thead>
						<tr>
							<th>#</th>
							<th>fällig am</th>
							<th>bezahlt / fällig</th>
						</tr>
					</thead>
					<tbody>
					@forelse($invoicesOpen as $invoice)
						<tr class="pointer no-select form-inline" data-url="{{ url('projects/update.invoice/'. $invoice->id)  }}">
							<td>#{{ $invoice->number }}</td>
							<td><div class="invoice_payable">{{ date('d.m.Y', strtotime($invoice->payable));  }}</div>
								{{ Form::text('payable', date('d.m.Y', strtotime($invoice->payable)), array('class' => 'form-control datepicker input-sm payable hide', 'placeholder' => 'Summe')) }}
								
							</td>
							<td><div class="invoice_value">{{ $invoice->paid }}€ / {{ $invoice->value }}€</div>
								{{ Form::text('paid', $invoice->paid, array('class' => 'form-control input-sm paid hide', 'placeholder' => 'Summe')) }} {{ Form::text('value', $invoice->value, array('class' => 'form-control input-sm value hide', 'placeholder' => 'Bezahlt')) }} {{ Form::submit('Speichern', array('class' => 'btn btn-success btn-sm hide')) }}
							</td>
						</tr>
					@empty
						<tr>
							<td colspan="3">Keine offene Rechnungen</td>
						</tr>
					@endforelse
					</tbody>
				</table>

										
										{{ Form::submit('Speichern', array('class' => 'btn btn-success btn-sm')) }}
			</div>
			<div class="col-xs-12 col-md-4">
				<h3>Überfällige Rechnungen</h3>
				<table class="table table-striped invoices">
					<thead>
						<tr>
							<th>#</th>
							<th>fällig am</th>
							<th>bezahlt / fällig</th>
						</tr>
					</thead>
					<tbody>
					@forelse($invoicesDue as $invoice)
						<tr class="pointer no-select form-inline" data-url="{{ url('projects/update.invoice/'. $invoice->id)  }}">
							<td>#{{ $invoice->number }}</td>
							<td><div class="invoice_payable">{{ date('d.m.Y', strtotime($invoice->payable));  }}</div>
								{{ Form::text('payable', date('d.m.Y', strtotime($invoice->payable)), array('class' => 'form-control datepicker input-sm payable hide', 'placeholder' => 'Summe')) }}
								
							</td>
							<td><div class="invoice_value">{{ $invoice->paid }}€ / {{ $invoice->value }}€</div>
								{{ Form::text('paid', $invoice->paid, array('class' => 'form-control input-sm paid hide', 'placeholder' => 'Summe')) }} {{ Form::text('value', $invoice->value, array('class' => 'form-control input-sm value hide', 'placeholder' => 'Bezahlt')) }} {{ Form::submit('Speichern', array('class' => 'btn btn-success btn-sm hide')) }}
							</td>
						</tr>
					@empty
						<tr>
							<td colspan="3">Keine überfällige Rechnungen</td>
						</tr>
					@endforelse
					</tbody>
				</table>
			</div>
			<div class="col-xs-12 col-md-4">
				<h3>Abgerechnete Rechnungen</h3>
				<table class="table table-striped invoices">
					<thead>
						<tr>
							<th>#</th>
							<th>fällig am</th>
							<th>bezahlt / fällig</th>
						</tr>
					</thead>
					<tbody>
					@forelse($invoicesPaid as $invoice)
						<tr class="pointer no-select form-inline" data-url="{{ url('projects/update.invoice/'. $invoice->id)  }}">
							<td>#{{ $invoice->number }}</td>
							<td><div class="invoice_payable">{{ date('d.m.Y', strtotime($invoice->payable));  }}</div>
								{{ Form::text('payable', date('d.m.Y', strtotime($invoice->payable)), array('class' => 'form-control datepicker input-sm payable hide', 'placeholder' => 'Summe')) }}
								
							</td>
							<td><div class="invoice_value">{{ $invoice->paid }}€ / {{ $invoice->value }}€</div>
								{{ Form::text('paid', $invoice->paid, array('class' => 'form-control input-sm paid hide', 'placeholder' => 'Summe')) }} {{ Form::text('value', $invoice->value, array('class' => 'form-control input-sm value hide', 'placeholder' => 'Bezahlt')) }} {{ Form::submit('Speichern', array('class' => 'btn btn-success btn-sm hide')) }}
							</td>
						</tr>
					@empty
						<tr>
							<td colspan="3">Keine abgerechnete Rechnungen</td>
						</tr>
					@endforelse
					</tbody>
				</table>
			</div>
			
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