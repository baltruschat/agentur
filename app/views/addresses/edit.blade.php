@extends('layouts.default')
@section('title', 'Kontakt bearbeiten')

@section('header')
	{{ HTML::style('asset/boostrap/select/bootstrap-select.min.css') }}
    {{ HTML::script('asset/boostrap/select/bootstrap-select.min.js') }}
@stop

@section('titleLink')
	<a href="{{ url('addresses') }}" title="zurück" class="btn btn-default pull-right"><i class="fa fa-chevron-left"></i>  Zurück</a>
@stop

@section('content')
<div class="page project-list">
	<div class="content-box">
	{{ Form::open(array('url' => 'addresses/update')) }}
	<div class="row">
		<div class="col-xs-12 col-sm-10 col-md-8 col-lg-6">
			<div class="row">
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Vorname:</label> {{ Form::text('firstname', $address->firstname, array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Nachname:</label> {{ Form::text('name', $address->name, array('class' => 'form-control')) }}</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-group"><label for="">Unternehmen:</label> {{ Form::text('company', $address->company, array('class' => 'form-control')) }}</div>
			</div>
			<div class="row">
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Position:</label> {{ Form::text('position', $address->position, array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Verbindung:</label>
					<select name="category" class="form-control selectpicker">
						<option value="Kunde" <?php echo ($address->category == 'Kunde') ? 'selected="selected"' : ''; ?>>Kunde</option>
						<option value="Dienstleister" <?php echo ($address->category == 'Dienstleister') ? 'selected="selected"' : ''; ?>>Dienstleister</option>
						<option value="Druckerei" <?php echo ($address->category == 'Druckerei') ? 'selected="selected"' : ''; ?>>Druckerei</option>
						<option value="Sonstiges" <?php echo ($address->category == 'Sonstiges') ? 'selected="selected"' : ''; ?>>Sonstiges</option>
					</select>
					</div>
				</div>
			</div>
			<hr />
			<div class="form-group">
				<div class="form-group"><label for="">Straße & Nr.:</label> {{ Form::text('street', $address->street, array('class' => 'form-control')) }}</div>
			</div>
			<div class="row">
				<div class="col-sm-3 form-group">
					<div class="form-group"><label for="">PLZ:</label> {{ Form::text('zip', $address->zip, array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-9 form-group">
					<div class="form-group"><label for="">Stadt:</label> {{ Form::text('city', $address->city, array('class' => 'form-control')) }}</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-group"><label for="">Land:</label> {{ Form::text('country', $address->country, array('class' => 'form-control')) }}</div>
			</div>
			<hr />
			<div class="row">
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Tel.:</label> {{ Form::text('tel', $address->tel, array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Mobile:</label> {{ Form::text('mobile', $address->mobile, array('class' => 'form-control')) }}</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Tel. 2:</label> {{ Form::text('tel2', $address->tel2, array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Fax:</label> {{ Form::text('fax', $address->fax, array('class' => 'form-control')) }}</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">E-Mail:</label> {{ Form::text('email', $address->email, array('class' => 'form-control')) }}</div>
				</div>
				<div class="col-sm-6 form-group">
					<div class="form-group"><label for="">Webseite:</label> {{ Form::text('www', $address->www, array('placeholder' => 'http://', 'class' => 'form-control')) }}</div>
				</div>
			</div>
			<div class="form-group">
				{{ Form::hidden('id', $address->id) }}
				{{ Form::submit('Speichern', array('class' => 'btn btn-success')) }}
			
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