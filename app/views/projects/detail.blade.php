@extends('layouts.default')
@section('title', $project->name)

@section('header')

@stop

@section('titleLink')
	<a href="{{ url('projects') }}" title="Erstellen" class="btn btn-success pull-right"><i class="fa fa-chevron-left"></i>  Zurück</a>
@stop

@section('content')

<ul class="nav nav-tabs page-nav" role="tablist">
	<li ><a href="{{ url('/projects') }}" title="" class=""><i class="fa fa-chevron-left"></i> Zurück</a></li>
	<li class="active"><a href="{{  url('/projects/detail/'.$project->id) }}" title="" class=""> Projekt</a></li>
	<li><a href="{{ url('/projects/task/'.$project->id) }}" title="Aufgaben" class="">Aufgaben</a></li>
	<li><a href="{{ url('/projects/timeline/'.$project->id) }}" title="Projekt Verlauf anzeigen" class="">Verlauf</a></li>
	<li><a href="{{ url('/projects/timemanagement/'.$project->id) }}" title="Arbeitsstunden anzeigen" class="">Arbeitsstunden</a></li>
	@if ($project->status <= 1)
		<li><a href="{{  url('/projects/invoice/'.$project->id) }}" title="Rechnungen" class="">Rechnungen</a></li>
	@endif
	@if ($project->status >= 2)
		<li><a href="{{  url('/projects/invoice/'.$project->id) }}" title="Abgerechnet">Abgerechnet</a></li>
	@endif
	<li><a href="{{ url('/projects/edit/'.$project->id) }}" title="Bearbeiten" class="">Bearbeiten</a></li>

</ul>

<div class="page project-detail">
	<div class="row">
        <div class="col-xs-12 col-md-8 col-lg-8">
        	<div class="description">{{ $project->description }}</div>
        	<hr />
        	<div class="file-list">
				@forelse($project->files as $file)
					<div class="file">
						@if (in_array($file->type, array('png', 'gif', 'jpg', 'tiff')))
							<div class="img" style="background-image: url('{{ url($file->path) }}');"></div>
						@else
							<div class="icon"><a href="{{ url('/file/get/'.$file->id) }}" target="_blank"><i class="fa {{ $file->filename }}"></i></a></div>
						@endif
						<div class="meta">
							{{ $file->filename; }}
							<div class="links">
								<a href="{{ url('/files/get/'.$file->id) }}" target="_blank"><i class="fa fa-cloud-download"></i></a>
							</div>
						</div>
					</div>
				@empty
					<p>Keine Datei hochgeladen</p>
				@endforelse
			</div>
        </div>

        <div class="col-xs-12 col-md-4 col-lg-3 pull-right">

        	<address>
				<h3>{{ $project->Address->Company->name }}</h3>
				{{ $project->Address->firstname.' '. $project->Address->name }}<br />
				{{ $project->Address->street.'<br />'.$project->Address->zip .', '. $project->Address->city }}
			</address>

			<h4>Rechnungadresse</h4>
			<address>
				{{ $project->InvoiceAddress->company->name }}<br />
				{{ $project->InvoiceAddress->firstname.' '. $project->InvoiceAddress->name }}<br />
				{{ $project->InvoiceAddress->street.'<br />'.$project->InvoiceAddress->zip .', '. $project->InvoiceAddress->city }}
			</address>
			<hr />

			<h3>Eingangsdatum:</h3>
        	<p>{{ date('d.m.Y', strtotime($project->date)) }}</p>

        	<hr />

			<h3>Mitarbeiter</h3>
			<div class="team-list">
				<?php
				if($project->team):
					foreach ($project->team as $member) {

				?>
					<div class="member member-{{ $member->id }} {{ ($member->id == $project->manager) ? 'member-manager' : '' }}">
						<div class="image pull-left">
							@if($member->image == '')
							  <img width="30" class="img-circle image profil-img" src="{{ asset('asset/img/photo.png') }} " alt="{{ $member->firstname }} {{ $member->lastname }}">
							@else
							  <img width="30" class="img-circle image profil-img" src="{{ asset( $member->image ) }}" alt="{{ $member->firstname }} {{ $member->lastname }}">
							@endif
						</div>
						<div class="data">
							<span class="title=">{{ $member->firstname .' '. $member->lastname }}</span><br />
							{{ $member->email; }}
							<div class="task">{{ $member->pivot->task }}</div>
						</div>
					</div>
				<?php
					}
				endif;
				?>
			</div>

		</div>
    </div>






</div>
@stop
