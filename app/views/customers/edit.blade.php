
@extends('layouts.default')
@section('title', 'Kunde bearbeiten')

@section('header')
	{{ HTML::style('asset/css/bootstrap-select.min.css') }}
    {{ HTML::script('asset/js/bootstrap-select.min.js') }}
@stop

@section('content')
	
	<div class="content-box">
		@include('layouts.errors')

		<div class="row">
			<a href="customer/delete/{{$customer->id}}"><button class="btn btn-danger pull-right">Löschen</button></a>

			<div class="col-xs-12 col-sm-10 col-md-4 col-lg-4">


				{{ Form::open(array('url' => 'customer/update')) }}

				<input type="hidden" name="customerid" value="{{$customer->id}}" />

				<div class="form-group">
					<label class="control-label">Elternkunde:</label><br />
					<select name="parentid" class="selectpicker" data-live-search="true">

					@if ($customer->parent == 0)
						<option value="0" selected="selected">nicht vorhanden</option>
					@else
						<option value="0">nicht vorhanden</option>
					@endif

					@foreach ($customerHelper->customerArray() as $key => $val)

						@if ($customer->parent == $val['id'])
							<option value="{{ $val['id'] }}" selected="selected">{{ $val['name'] }}</option>
						@else
							<option value="{{ $val['id'] }}">{{ $val['name'] }}</option>
						@endif

						@if (count($val['nodes']) > 0)

							@foreach ($val['nodes'] as $k => $v)

								@if ($customer->parent == $v['id'])
									<option value="{{ $v['id'] }}" selected="selected">-- {{ $v['name'] }}</option>
								@else
									<option value="{{ $v['id'] }}">-- {{ $v['name'] }}</option>
								@endif

							@endforeach

						@endif
						
					@endforeach

					</select>
				</div>

				<div class="form-group">
					<label class="control-label">Kundenname:</label>
					{{ Form::text("name", $customer->name, array('class' => 'form-control') ) }}
				</div>

				{{ Form::submit('Speichern', array('class' => 'btn btn-success')) }}

				{{ Form::close() }}

			</div>
		</div>

	</div>

	<script>
		$('.selectpicker').selectpicker();
	</script>

@stop