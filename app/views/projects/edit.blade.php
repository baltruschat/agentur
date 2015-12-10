@extends('layouts.default')

@section('header')

	{{ HTML::script('asset/bootstrap/typeahead/bloodhound.js') }}
	{{ HTML::script('asset/bootstrap/typeahead/typeahead.jquery.js') }}
	{{ HTML::style('asset/bootstrap/typeahead/typeahead.js-bootstrap.css') }}

	{{ HTML::script('asset/bootstrap/wysiwyg/wysihtml5-0.3.0.min.js') }}
	{{ HTML::script('asset/bootstrap/wysiwyg/bootstrap3-wysihtml5.js') }}
	{{ HTML::style('asset/bootstrap/wysiwyg/bootstrap-wysihtml5.css') }}

	{{ HTML::script('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.js') }}
	{{ HTML::script('asset/bootstrap/datetimepicker/locales/bootstrap-datetimepicker.de.js') }}
	{{ HTML::style('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.css') }}

	{{ HTML::style('asset/bootstrap/select/bootstrap-select.min.css') }}
    {{ HTML::script('asset/bootstrap/select/bootstrap-select.min.js') }}

	{{ HTML::script('asset/js/jquery/jquery.projects.create.js') }}
	{{ HTML::script('asset/js/jquery/jquery.file.js') }}
@stop

@section('title', 'Projekt bearbeiten')
@section('titleLink')
	<a href="{{ url('projects') }}" title="zurück" class="btn btn-default pull-right"><i class="fa fa-chevron-left"></i>  Zurück</a>
@stop

@section('content')

<ul class="nav nav-tabs page-nav" role="tablist">
			<li><a href="{{ url('/projects') }}" title="" class=""><i class="fa fa-chevron-left"></i> Zurück</a></li>
			<li><a href="{{  url('/projects/detail/'.$project->id) }}" title="" class=""> Projekt</a></li>
			<li><a href="{{ url('/projects/task/'.$project->id) }}" title="Aufgaben" class="">Aufgaben</a></li>
			<li><a href="{{ url('/projects/timeline/'.$project->id) }}" title="Projekt Verlauf anzeigen" class="">Verlauf</a></li>
			<li><a href="{{ url('/projects/timemanagement/'.$project->id) }}" title="Arbeitsstunden anzeigen" class="">Arbeitsstunden</a></li>
			@if ($project->status <= 1)
				<li><a href="{{  url('/projects/invoice/'.$project->id) }}" title="Rechnungen" class="">Rechnungen</a></li>
			@endif
			@if ($project->status >= 2)
				<li><a href="{{  url('/projects/invoice/'.$project->id) }}" title="Abgerechnet">Abgerechnet</a></li>
			@endif
			<li class="active"><a href="{{ url('/projects/edit/'.$project->id) }}" title="Bearbeiten" class="">Bearbeiten</a></li>
		</ul>

<div class="page project-edit">

	<div class="content-box edit-project">
		{{ Form::open(array('url' => 'projects/save', 'class' => 'form-horizontal' )) }}
			{{ Form::hidden('project-id', $project->id) }}
			<div class="form-group">
			    <label for="project_name" class="col-sm-3 control-label">Projektname: <span class="require">*</span> </label>
			    <div class="col-sm-5">{{ Form::text('title', $project->name, array('class' => 'form-control')) }}</div>
			</div>

			<div class="form-group">
			    <label for="date" class="col-sm-3 control-label">Eingangsdatum: <span class="require">*</span></label>
			    <div class="col-sm-3">{{ Form::text('date', date('d.m.Y', strtotime($project->date)), array('class' => 'datepicker form-control', 'data-date-format' => 'dd.mm.yyyy')) }}</div>
			</div>


			<hr class="divider" />

			<div class="form-group">
			    <label for="date" class="col-sm-3 control-label">Kunde: <span class="require">*</span></label>
			    <div class="col-sm-3">
			    	<select name="customer" class="selectpicker" data-live-search="true">

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

						</select>

			    </div>
			</div>

			<div class="form-group">
			    <label class="col-sm-3 control-label">Beauftragt: <span class="require">*</span></label>
			    <div class="col-sm-5">{{ Form::text('provider-contact', $project->Address->firstname .' '. $project->Address->name, array('class' => 'provider-contact form-control', 'autocomplete' => 'off' )) }}</div>
			    {{ Form::hidden('contact', $project->Address->id, array('class' => 'contact') ) }}
			</div>

			<div class="form-group">
			    <label class="col-sm-3 control-label">Leiter: <span class="require">*</span></label>
			    <div class="col-sm-5">{{ Form::text('provider-manager', $project->Manager->firstname.' '. $project->Manager->name, array('class' => 'provider-manager form-control')) }}</div>
			    {{ Form::hidden('manager', $project->Manager->id, array('class' => 'manager') ) }}
			</div>



			<div class="form-group">
			    <label for="" class="col-sm-3 control-label">Rechnungsstelle: <span class="require">*</span></label>
			    <div class="col-sm-5">{{ Form::text('provider-invoice', $project->InvoiceAddress->street.', '.$project->InvoiceAddress->zip .' '.$project->InvoiceAddress->city, array('class' => 'form-control provider-invoice')) }}</div>
			    {{ Form::hidden('invoice', $project->InvoiceAddress->id, array('class' => 'invoice') ) }}
			</div>

			<hr class="divider" />

			<div class="form-group">
			    <label for="description" class="col-sm-3 control-label">Informationen:</label>
			    <div class="col-sm-9"> <textarea class="form-control editor" name="description" id="description" rows="15">{{ $project->description }}</textarea></div>
			</div>

			<hr class="divider" />

			<div class="form-group">
				<label class="col-sm-3 control-label">Team:</label>
				<div class="col-sm-9">
					<div class="team-list">
						<div class="row">
							@forelse($members as $member)
								<?php
									$member->task = '';
									foreach($project->team as $team):
										$active = ($team->id == $member->id) ? true : false;
										if($team->id == $member->id){
											$member->task = $team->pivot->task;
										}
									endforeach;
								?>
								<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
									<div class="member member-<?php echo $member->id; ?> {{ ($active) ? 'active' : '' }}">
										<div class="image pull-left">
											@if($member->image == '')
												<img class="img-circle" width="30" src="{{ asset('asset/img/photo.png') }} " alt="{{ $member->firstname }} {{ $member->lastname }}">
											@else
												<img class="img-circle" width="30" src="{{ asset( $member->image ) }}" alt="{{ $member->firstname }} {{ $member->lastname }}">
											@endif
										</div>
										<div class="data">
											<span class="title="><?php echo $member->firstname .' '. $member->lastname; ?></span><br />
											<?php echo $member->email; ?>
											<div class="member-form {{ ($active) ? '' : 'hide' }}"><input type="text" name="member[<?php echo $member->id; ?>][task]" value="{{ $member->task }}" class="form-control task input-sm" /></div>
											<input type="hidden" name="member[<?php echo $member->id; ?>][active]" value="{{ ($active) ? $member->id : '' }}" class="active" />
											<input type="hidden" name="member[<?php echo $member->id; ?>][id]" value="<?php echo $member->id; ?>" />
										</div>
									</div>
								</div>
							@empty
								<p>Kein Mitarbeiter gefunden</p>
							@endforelse
						</div>
					</div>
				</div>
			</div>
			<hr class="divider" />

			<div class="form-group">
				<label class="col-sm-3 control-label">Dateien:</label>
				<div class="col-sm-9 file-uploader">
					<div class="drop-zone">Dateien hier ablegen</div>
					<div class="file-list">
						@if($project->files)
							<?php $i = 0; ?>
							@foreach($project->files as $file)
								<div class="file file-{{ $i }}" data-id="{{ $file->id }}">
									<div class="icon"></div>
									<div class="meta">
										{{ $file->filename }}
										<div class="links">
											<a href="{{ url('file/get/'.$file->id) }}" title="Download Datei" class="" target="_blank"><i class="fa fa-cloud-download"></i></a>
											<a href="#" data-id="{{ $file->id }}" title="Datei löschen" class="delete"><i class="fa fa-times"></i></a>
										</div>
									</div>
								</div>
								<?php $i++; ?>
							@endforeach
						@endif

					</div>
				</div>
			</div>
			{{ Form::submit('Projekt speichern', array('class' => 'btn btn-success')) }}

		{{ Form::close() }}
	</div>
</div>
@stop
