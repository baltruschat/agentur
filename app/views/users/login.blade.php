@extends('layouts.empty')

@section('title', 'Login')

@section('content')
	
<div class="container login">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="row">
                <div class="form animated">
                    <div class="account-wall">
                    
                    @include('layouts.errors')

                    @if( $errors->first('email') )
                        <div class="alert alert-danger">{{ $errors->first('email') }}</div>
                    @endif
                    @if( $errors->first('password') )
                        <div class="alert alert-danger">{{ $errors->first('password') }}</div>
                    @endif
					   
                        

                    	{{ Form::open(array('url' => 'users/signin')) }}
                    		@if( Cookie::get('email') && !isset($_GET['d']) && $user )
                                <div class="image text-center">
                                    @if($user->image == '')
                                        <img class="img-circle" src="{{ asset('asset/img/photo.png') }} " alt="<?php echo $user->firstname .' '. $user->lastname; ?>">
                                    @else
                                        <img class="img-circle" src="{{ asset( $user->image ) }}" alt="{{ $user->firstname }} {{ $user->lastname }}">
                                    @endif
                                    <p class="profil-name">{{ $user->firstname }} {{ $user->lastname }}</p>
                                    <span class="profil-email"><?php echo $user->email; ?></span>
                                    
                                </div>
                                {{ Form::hidden('email', Cookie::get('email'), array('placeholder' => 'E-Mail', 'class' => 'form-control')) }}
                            @else
                                <p>{{ Form::text('email', Input::old('email'), array('placeholder' => 'E-Mail', 'class' => 'form-control')) }}</p>
                    		@endif
                            <p>{{ Form::password('password', array('placeholder' => 'Passwort','class' => 'form-control' )) }}</p>
        	                <p>{{ Form::submit('Login', array('class' => 'btn btn-primary btn-block')) }}</p>
                        
                        {{ Form::close() }}
                        {{ HTML::link('/users/login?d=change', 'Mit einem anderen Konto anmelden') }}

                    </div>
                    <ul class="login-meta">
                        <li>{{ HTML::link('/users/register', 'Noch nicht registriert') }}</li>
                        <li>{{ HTML::link('/password/remind', 'Passwort vergessen?') }}</li>
                    </ul>                
                
        		</div>
        	</div>
        </div>
    </div>
</div>

@stop