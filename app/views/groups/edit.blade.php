@extends('layouts.default')
@section('title', 'Gruppe bearbeiten')

@section('titleLink')
	<a href="{{ url('groups') }}" title="zurück" class="btn btn-default pull-right"><i class="fa fa-chevron-left"></i>  Zurück</a>
@stop

@section('content')
<div class="content-box">
	{{ Form::open(array('url' => 'groups/update')) }}
	<div class="row">
		<div class="col-xs-12 col-sm-10 col-md-8 col-lg-6">


			<!-- Nav tabs -->
			<ul class="nav nav-tabs page-nav" role="tablist">
			  <li class="active"><a href="#general" role="tab" data-toggle="tab">Allgemein</a></li>
			  <li><a href="#member" role="tab" data-toggle="tab">Mitglieder</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">

			  <div class="tab-pane page active" id="general">
				<div class="form-group"><label for="">Gruppenname:</label> {{ Form::text('name', $group->name, array('class' => 'form-control')) }}</div>
				<div class="form-group"><label for="">Beschreibung:</label> {{ Form::textarea('description', $group->description, array('class' => 'form-control')) }}</div>
				<div class="form-group"></div>
			  </div>

			  <div class="tab-pane page" id="member">


				<table class="table table-striped table-condensed table-hover table-groupmembers">
					<thead>
						<tr>
							<th class="h_name">Nachname</th>
							<th class="h_leader">Vorname</th>
							<th class="h_count">Email</th>
						</tr>
					</thead>
					<tbody>

					  	<?php $members = $group->members->all(); ?>
					  	@forelse($members as $member)
							<tr data-id="{{ $group->id }}">
								<td class="">{{ $member->lastname }}</td>
								<td class="">{{ $member->firstname }}</td>
								<td class="">{{ $member->email }}</td>
							</tr>
						@empty
							<tr><td colspan="3">Es wurden noch keine Mitglieder hinzugefügt.</td></tr>
						@endforelse

					</tbody>

				</table>

			  </div>

			</div>

			<div class="form-group">
				{{ Form::hidden('id', $group->id) }}
				{{ Form::submit('Speichern', array('class' => 'btn btn-success')) }}
			</div>




		</div>
	</div>
	{{ Form::close() }}
</div>
@stop