@extends('layouts.default')
@section('title', $project->name)

@section('header')
	{{ HTML::script('asset/js/jquery/jquery-ui-1.10.4.min.js') }}

	{{ HTML::script('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.js') }}
	{{ HTML::script('asset/bootstrap/datetimepicker/locales/bootstrap-datetimepicker.de.js') }}
	{{ HTML::style('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.css') }}

	{{ HTML::script('asset/js/jquery/jquery.json.js') }}
	{{ HTML::script('asset/js/jquery/jquery.task.js') }}
@stop

@section('titleLink')
	<a href="{{ url('projects') }}" title="Erstellen" class="btn btn-success pull-right"><i class="fa fa-chevron-left"></i>  Zurück</a>
@stop

@section('content')

		<ul class="nav nav-tabs page-nav" role="tablist">
			<li ><a href="{{ url('/projects') }}" title="" class=""><i class="fa fa-chevron-left"></i> Zurück</a></li>
			<li><a href="{{  url('/projects/detail/'.$project->id) }}" title="" class=""> Projekt</a></li>
			<li class="active"><a href="{{ url('/projects/task/'.$project->id) }}" title="Aufgaben" class="">Aufgaben</a></li>
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

		<div class="page project-task">
			<div class="row">
        		<div class="col-xs-12 col-md-8 col-lg-8">

					<h2>Aufgaben</h2>
					<form action="" name="task-add" class="form-inline task-add well" method="POST">

			            <input type="hidden" name="project_id" value="<?php echo $project->id; ?>">
			        	<input type="text" name="title" value="" placeholder="Titel" class="form-control" />
			            <input type="text" name="description" placeholder="Beschreibung"  class="form-control" /> <select name="user"  class="form-control">
			        		@foreach($project->team as $user)
			        			<option value="{{ $user->id }}">{{ $user->firstname }} {{ $user->lastname }}</option>
			        		@endforeach
			        	</select>
			            <input type="text" name="date" placeholder="Datum" class="datepicker form-control" data-date-format="dd.mm.yyyy" />
			            <input type="submit" name="submit" value="Erstellen" class="btn btn-success" />
			        </form>

					<div class="row tasks">
					    @foreach ($project->team as $member)
					        <div class="selection user-{{ $member->id }} col-xs-6 col-md-4 col-lg-3">
					            <div class="task-user">
					                @if($member->image == '')
									  <img width="30" class="img-circle image profil-img" src="{{ asset('asset/img/photo.png') }} " alt="{{ $member->firstname }} {{ $member->lastname }}">
									@else
									  <img width="30" class="img-circle image profil-img" src="{{ asset( $member->image ) }}" alt="{{ $member->firstname }} {{ $member->lastname }}">
									@endif
									{{ $member->firstname }} {{ $member->lastname }}
					            </div>

					            <div class="task-list">
								    <?php $tasks = $project->task()->where('user_id', $member->id)->orderBy('order')->get(); ?>
							        @if(count($tasks) > 0)
							        <table class="task table">
							        	<tbody>
							        		@foreach($tasks as $task)

							                  <?php /*  $class = '';
							                     */ $class= ''; ?>
						            		<tr class="{{ $task->getClass() }} task-{{ $task->id }}{{ ($task->status == 2) ? ' done' : '' }}" data-id="{{ $task->id }}">
						                        <td class="sortable"><i class="fa fa-arrows-v"></i></td>
						                        <td class="selector"><input type="checkbox" name="" value="{{ $task->id }}" data-task="task-{{ $task->id }}" {{ ($task->status == 2) ? 'checked="checked"' : '' }} /></td>
						                        <td class="task-data">
						                            <h2>{{ $task->title; }}<span class="pull-right date">{{ date('d.m.Y', strtotime($task->finish)) }}</span></h2>
						        	    		    <div class="task-desc">{{ $task->description }}</div>
						                            <small>Angelegt von <?php  echo $task->creator->firstname .' '. $task->creator->lastname ?></small>
						                        </td>

						        	    	</tr>
							    			@endforeach
							            </tbody>
							        </table>
							        @endif
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

@stop
