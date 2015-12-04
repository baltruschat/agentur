@extends('layouts.default')
@section('title', $project->name)

@section('header')

	{{ HTML::script('asset/js/jquery/jquery-ui-1.10.4.min.js') }}

	{{ HTML::script('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.js') }}
	{{ HTML::script('asset/bootstrap/datetimepicker/locales/bootstrap-datetimepicker.de.js') }}
	{{ HTML::style('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.css') }}

	{{ HTML::script('asset/js/jquery/jquery.json.js') }}
@stop

@section('titleLink')
	<a href="{{ url('projects') }}" title="Erstellen" class="btn btn-success pull-right"><i class="fa fa-chevron-left"></i>  Zurück</a>
@stop

@section('content')

		<ul class="nav nav-tabs page-nav" role="tablist">
			<li ><a href="{{ url('/projects') }}" title="" class=""><i class="fa fa-chevron-left"></i> Zurück</a></li>
			<li><a href="{{  url('/projects/detail/'.$project->id) }}" title="" class=""> Projekt</a></li>
			<li><a href="{{ url('/projects/task/'.$project->id) }}" title="Aufgaben" class="">Aufgaben</a></li>
			<li class="active"><a href="{{ url('/projects/timeline/'.$project->id) }}" title="Projekt Verlauf anzeigen" class="">Verlauf</a></li>
			<li><a href="{{ url('/projects/timemanagement/'.$project->id) }}" title="Arbeitsstunden anzeigen" class="">Arbeitsstunden</a></li>
			@if ($project->status <= 1)
				<li><a href="{{  url('/projects/invoice/'.$project->id) }}" title="Rechnungen" class="">Rechnungen</a></li>
			@endif
			@if ($project->status >= 2)
				<li><a href="{{  url('/projects/invoice/'.$project->id) }}" title="Abgerechnet">Abgerechnet</a></li>
			@endif
			<li><a href="{{ url('/projects/edit/'.$project->id) }}" title="Bearbeiten" class="">Bearbeiten</a></li>
		</ul>

		<?php //print_r( $project->timeline ); ?>
		<div class="page project-timeline">
			<div class="row">
        		<div class="col-xs-12 col-md-8 col-lg-8">
        			<h2>Verlauf</h2>
        			<div class="clearfix"></div>
        			<div class="timeline">
						 @foreach ($project->timeline()->OrderBy('created_at', 'DESC')->get() as $timeline)
						 	<div class="item">
						      <a class="comment-img" href="#non">
						        @if($timeline->creator->image == '')
								  <img width="50" class="img-circle image profil-img" src="{{ asset('asset/img/photo.png') }} " alt="{{ $timeline->creator->firstname }} {{ $timeline->creator->lastname }}">
								@else
								  <img width="50" class="img-circle image profil-img" src="{{ asset( $timeline->creator->image ) }}" alt="{{ $timeline->creator->firstname }} {{ $timeline->creator->lastname }}">
								@endif
						      </a>
						      <div class="comment-body">
						        <div class="text">
						          <p>{{ $timeline->formatDescription() }}</p>
						          <p class="meta">von {{ $timeline->creator->firstname }} {{ $timeline->creator->lastname }} am {{ date('d.m.Y \u\m H:i', strtotime($timeline->created_at)) }} Uhr</p>
						        </div>

						      </div>
						    </div>

						 @endforeach
					</div>
				</div>

		        <div class="col-xs-12 col-md-4 col-lg-3 pull-right">

		        	<address>
						<h3>{{ $project->Address->company->name }}</h3>
						{{ $project->Address->firstname.' '. $project->Address->name }}<br />
						{{ $project->Address->street.'<br />'.$project->Address->zip .', '. $project->Address->city }}
					</address>

					<h4>Rechnungadresse</h4>
					<address>
						{{ $project->Address->company->name }}<br />
						{{ $project->Address->firstname.' '. $project->Address->name }}<br />
						{{ $project->Address->street.'<br />'.$project->Address->zip .', '. $project->Address->city }}
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
	</div>

@stop
