
@if(Session::has('success'))
	<div class="alert alert-success">
		{{ Session::get('success') }}
	</div>
@endif

@if(Session::has('message'))
	<div class="alert alert-warning">
		{{ Session::get('message') }}
	</div>
@endif
@if(Session::has('error'))
	<div class="alert alert-danger">
		{{ Session::get('error') }}
	</div>
@endif
@if(Session::has('status'))
	<div class="alert alert-success">
		{{ Session::get('status') }}
	</div>
@endif