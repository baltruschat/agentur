
@extends('layouts.default')
@section('title', 'Kunde bearbeiten')

@section('header')

@stop

@section('content')
	
	<div class="content-box">
		@include('layouts.errors')

		<div class="row">
			<a href="system/customer/delete/{{$customer->id}}"><button class="btn btn-danger pull-right">Löschen</button></a>

			<div class="col-xs-12 col-sm-10 col-md-4 col-lg-4">


				{{ Form::open(array('url' => 'system/customer/save')) }}

				<div class="form-group">
					<label class="control-label">Kundenname:</label>
					{{ Form::text("name", $customer->name, array('class' => 'form-control') ) }}
				</div>

				{{ Form::submit('Abbrechen', array('class' => 'btn btn-default')) }}
				{{ Form::submit('Speichern', array('class' => 'btn btn-success')) }}

				{{ Form::close() }}

			</div>
		</div>

	</div>

	<script>
		$('.selectpicker').selectpicker();
	</script>

@stop