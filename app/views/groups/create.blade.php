@extends('layouts.default')
@section('title', 'Gruppe erstellen')

@section('titleLink')
	<a href="{{ url('groups') }}" title="zurück" class="btn btn-default pull-right"><i class="fa fa-chevron-left"></i>  Zurück</a>
@stop

@section('content')
<div class="content-box">
	{{ Form::open(array('url' => 'groups/save')) }}
	<div class="row">
		<div class="col-xs-12 col-sm-10 col-md-8 col-lg-6">
			<div class="form-group"><label for="">Gruppenname:</label> {{ Form::text('name', Input::old('firstname'), array('class' => 'form-control')) }}</div>
			<div class="form-group"><label for="">Beschreibung:</label> {{ Form::text('description', Input::old('firstname'), array('class' => 'form-control')) }}</div>

			<div class="form-group">
				{{ Form::submit('Anlegen', array('class' => 'btn btn-success')) }}
			</div>
		</div>
	</div>
	{{ Form::close() }}
</div>
@stop