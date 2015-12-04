@extends('layouts.default')
@section('title', 'Kontakt erstellen')

@section('header')
	{{ HTML::style('asset/css/bootstrap-select.min.css') }}
    {{ HTML::script('asset/js/bootstrap-select.min.js') }}
@stop
@section('titleLink')
	<a href="{{ url('addresses') }}" title="zurück" class="btn btn-default pull-right"><i class="fa fa-chevron-left"></i>  Zurück</a>
@stop

@section('content')
<div class="page project-list">
	<div class="content-box">
	{{ Form::open(array('url' => 'addresses/save')) }}
	<div class="row">
		<div class="col-xs-12 col-sm-10 col-md-8 col-lg-6">
			<div class="row">
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Vorname:</label> {{ Form::text('firstname', Input::old('firstname'), array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Nachname:</label> {{ Form::text('name', Input::old('name'), array('class' => 'form-control')) }}</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-group"><label for="">Unternehmen:</label> <select name="customer" class="selectpicker" data-live-search="true">

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

						</select></div>
			</div>
			<div class="row">
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Position:</label> {{ Form::text('position', Input::old('position'), array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Verbindung:</label> 
						<select name="category">
						<option value="Kunde" <?php echo (Input::old('category') == 'Kunde') ? 'selected="selected"' : ''; ?>>Kunde</option>
						<option value="Dienstleister" <?php echo (Input::old('category') == 'Dienstleister') ? 'selected="selected"' : ''; ?>>Dienstleister</option>
						<option value="Druckerei" <?php echo (Input::old('category') == 'Druckerei') ? 'selected="selected"' : ''; ?>>Druckerei</option>
						<option value="Sonstiges" <?php echo (Input::old('category') == 'Sonstiges') ? 'selected="selected"' : ''; ?>>Sonstiges</option>
					</select>
					</div>
				</div>
			</div>
			<hr />
			<div class="form-group">
				<div class="form-group"><label for="">Straße & Nr.:</label> {{ Form::text('street', Input::old('street'), array('class' => 'form-control')) }}</div>
			</div>
			<div class="row">
				<div class="col-sm-3 form-group">
					<div class="form-group"><label for="">PLZ:</label> {{ Form::text('zip', Input::old('zip'), array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-9 form-group">
					<div class="form-group"><label for="">Stadt:</label> {{ Form::text('city', Input::old('city'), array('class' => 'form-control')) }}</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-group"><label for="">Land:</label> {{ Form::text('country', Input::old('country'), array('class' => 'form-control')) }}</div>
			</div>
			<hr />
			<div class="row">
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Tel.:</label> {{ Form::text('tel', Input::old('tel'), array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Mobile:</label> {{ Form::text('mobile', Input::old('mobile'), array('class' => 'form-control')) }}</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Tel. 2:</label> {{ Form::text('tel2', Input::old('tel2'), array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Fax:</label> {{ Form::text('fax', Input::old('fax'), array('class' => 'form-control')) }}</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">E-Mail:</label> {{ Form::text('email', Input::old('email'), array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Webseite:</label> {{ Form::text('www', Input::old('www'), array('placeholder' => 'http://', 'class' => 'form-control')) }}</div>
				</div>
			</div>
			<div class="form-group">
				{{ Form::submit('Anlegen', array('class' => 'btn btn-success')) }}
			</div>
		</div>
	</div>
	{{ Form::close() }}
</div>
</div>
<script type="text/javascript">
	$('.selectpicker').selectpicker();
</script>
@stop