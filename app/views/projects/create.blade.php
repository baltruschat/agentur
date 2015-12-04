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

	{{ HTML::script('asset/js/handlebars-v2.0.0.js') }}

	{{ HTML::script('asset/js/jquery/jquery.projects.create.js') }}
	{{ HTML::script('asset/js/jquery/jquery.file.js') }}
@stop

@section('title', 'Projekt erstellen')
@section('titleLink')
	<a href="{{ url('projects') }}" title="zurück" class="btn btn-default pull-right"><i class="fa fa-chevron-left"></i>  Zurück</a>
@stop

@section('content')
<div class="content-box create-project">
	<div class="page project-invoice">
		{{ Form::open(array('url' => 'projects/save', 'class' => 'form-horizontal' )) }}
			<div class="form-group">
			    <label for="project_name" class="col-sm-3 control-label">Projektname: <span class="require">*</span> </label>
			    <div class="col-sm-5">{{ Form::text('title', Input::old('title'), array('class' => 'form-control')) }}</div>
			</div>

			<div class="form-group">
			    <label for="date" class="col-sm-3 control-label">Eingangsdatum: <span class="require">*</span></label>
			    <div class="col-sm-3">{{ Form::text('date', Input::old('date'), array('class' => 'datepicker form-control', 'data-date-format' => 'dd.mm.yyyy')) }}</div>
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
			    <div class="col-sm-5">{{ Form::text('provider-contact', '', array('class' => 'provider-contact form-control', 'autocomplete' => 'off' )) }}</div>
			    {{ Form::hidden('contact', Input::old('contact'), array('class' => 'contact') ) }}
			</div>
		
			<div class="form-group">
			    <label class="col-sm-3 control-label">Leiter: <span class="require">*</span></label>
			    <div class="col-sm-5">{{ Form::text('provider-manager', Input::old('manager'), array('class' => 'provider-manager form-control')) }}</div>
			    {{ Form::hidden('manager', Input::old('manager'), array('class' => 'manager') ) }}
			</div>
			
			

			<div class="form-group">
			    <label for="" class="col-sm-3 control-label">Rechnungsstelle: <span class="require">*</span></label>
			    <div class="col-sm-5">{{ Form::text('provider-invoice', '', array('class' => 'form-control provider-invoice')) }}</div>
			    {{ Form::hidden('invoice', Input::old('invoice'), array('class' => 'invoice') ) }}
			</div>
			
			<hr class="divider" />	

			<div class="form-group">
			    <label for="description" class="col-sm-3 control-label">Informationen:</label>
			    <div class="col-sm-9"> <textarea class="form-control editor" name="description" id="description" rows="15"></textarea></div>
			</div>

			<hr class="divider" />	

			<div class="form-group">
				<label class="col-sm-3 control-label">Team:</label>
				<div class="col-sm-9">
					<div class="team-list">
						<div class="row">
							@forelse($team as $member)
								<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
									<div class="member member-<?php echo $member->id; ?>">
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
											<div class="member-form hide"><input type="text" name="member[<?php echo $member->id; ?>][task]" value="" class="form-control task input-sm" /></div>
											<input type="hidden" name="member[<?php echo $member->id; ?>][active]" value="" class="active" />
											<input type="hidden" name="member[<?php echo $member->id; ?>][id]" value="<?php echo $member->id; ?>" placeholder="Aufgabe im Team" />
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
				<div class="col-sm-9 file-uploader"></div>
			</div>
			{{ Form::submit('Projekt anlegen', array('class' => 'btn btn-success')) }}
			
		{{ Form::close() }}
	</div>
</div>
@stop