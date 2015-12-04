@extends('layouts.default')
@section('title', 'Gruppen')

@section('header')
    {{ HTML::style('asset/css/group.css') }}
@stop

@section('titleLink')
	<a href="{{ url('groups/create') }}" title="Erstellen" class="btn btn-success pull-right"><i class="glyphicon glyphicon-plus"></i>  Erstellen</a>
@stop

@section('content')
	<div class="content-box">

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

@stop