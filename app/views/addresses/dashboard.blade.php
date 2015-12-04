
@extends('layouts.default')
@section('title', 'Adressenliste')

@section('header')
    {{ HTML::script('asset/js/jquery/jquery.address.dashboard.js') }}
@stop

@section('titleLink')
	<a href="{{ url('addresses/create') }}" title="Erstellen" class="btn btn-success pull-right"><i class="glyphicon glyphicon-plus"></i>  Erstellen</a>
@stop

@section('content')

<div class="page project-list">
	<div class="content-box">
		@include('layouts.errors')
		<div class="row">
			<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3">
				<div class="address-list">
					<ol class="">
						<li class="search"><input type="text" class="form-control" id="input-filter" name="input-filter" placeholder="Suche ..." /></li>
						@forelse($addresses as $address)
							<li data-id="{{ $address->id }}">
								<p>{{ $address->firstname }} <span class="sort">{{ $address->name }}</span></p>
								<p class="company">
                  @if($address->Company)
                    {{$address->Company->name}}
                  @endif
                </p>
							</li>
						@empty
						<li class="no-entry">Noch keine Adresse angelegt<br />{{ HTML::Link('addresses/create','» Adresse erstellen') }}</li>
						@endforelse
					</ol>
				</div>
			</div>
			<div class="col-xs-12 col-sm-7 col-md-8 col-lg-9">

				<div class="address-content row"></div>

				<div class="hide address-template">
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 address-card">
							<div class="warp">
								<a href="<?php echo url('/addresses/edit/'); ?>" class="edit" title="Kontakt bearbeiten"><i class="fa fa-pencil-square-o"></i></a><a href="<?php echo url('/addresses'); ?>" title="Kontakt schließen" class="remove"><i class="fa fa-times"></i></a>
								<span class="pull-right label label-primary">Kunde</span>

								<div class="favicon pull-left hidden-md"><img width="32" src="https://www.google.com/s2/favicons?domain=x.com" /></div>

								<div class="person">
									<div class="data name"></div>
									<div class="data company"></div>
									<div class="data position"></div>
								</div>

								<div class="address">
									<div class="data street"></div>
									<div class="data zip city"></div>
								</div>
								<div class="contact">
									<div class="data tel"><span>Tel.:</span></div>
									<div class="data tel2"><span>Tel. 2:</span> </div>
									<div class="data mobile"><span>Mobile:</span> </div>
									<div class="data fax"><span>Fax:</span> </div>
								</div>

								<div class="internet">
									<div class="data email"><span>Email:</span> <a href="mailto: baltruschat@wortbildton.de" title="Felix Baltruschat eine Email schreiben"></a></div>
									<div class="data www"><span>www:</span> <a href="http://www.wortbildton.de" title="" target="_blank"></a></div>
								</div>
							</div>
						</div>
					</div>

			</div>
		</div>
	</div>
</div>
@stop
