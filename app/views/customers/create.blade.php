
@extends('layouts.default')
@section('title', 'Kunde anlegen')

@section('header')
	{{ HTML::style('asset/css/bootstrap-select.min.css') }}
    {{ HTML::script('asset/js/bootstrap-select.min.js') }}
@stop

@section('content')
	
	<div class="content-box">
		@include('layouts.errors')

		<div class="row">

			<div class="col-xs-12 col-sm-10 col-md-4 col-lg-4">


				{{ Form::open(array('url' => 'customer/save')) }}

				<div class="form-group">
					<label class="control-label">Elternkunde:</label><br />
					<select name="parentid" class="selectpicker" data-live-search="true">

					<option value="0">nicht vorhanden</option>

					@foreach ($customerHelper->customerArray() as $key => $val)

						<option value="{{ $val['id'] }}">{{ $val['name'] }}</option>

						@if (count($val['nodes']) > 0)

							@foreach ($val['nodes'] as $k => $v)
								<option value="{{ $v['id'] }}">-- {{ $v['name'] }}</option>
							@endforeach

						@endif
						
					@endforeach

					</select>
				</div>

				<div class="form-group">
					<label class="control-label">Kundenname:</label>
					{{ Form::text("name", "", array('class' => 'form-control') ) }}
				</div>

				{{ Form::submit('Anlegen', array('class' => 'btn btn-success')) }}

				{{ Form::close() }}

			</div>

		</div>

	</div>

	<script>
		$('.selectpicker').selectpicker();
	</script>

@stop