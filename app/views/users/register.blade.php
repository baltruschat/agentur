@extends('layouts.empty')

@section('title', 'Register')

@section('content')

<div class="container register">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="row">
                <div class="register-form">
                    <div class="account-wall">
                        <h1 class="login-title">Registrierung</h1>

                        @if($errors->all())
                            <div class="alert alert-danger">
                            @foreach($errors->all() as $error)
                                <p>{{ $error }}</p>
                            @endforeach
                            </div>
                        @endif

                        {{ Form::open(array('url' => 'users/create')) }}
                            <p>{{ Form::text('firstname', Input::old('firstname'), array('placeholder' => 'Vorname', 'class' => 'form-control')) }}</p>
                            <p>{{ Form::text('name', Input::old('name'), array('placeholder' => 'Nachname', 'class' => 'form-control')) }}</p>
                            <p>{{ Form::text('email', Input::old('email'), array('placeholder' => 'E-Mail', 'class' => 'form-control')) }}</p>
                            <p>{{ Form::password('password', array('placeholder' => 'Passwort','class' => 'form-control')) }}</p>
                            <p>{{ Form::password('password_confirmation', array('placeholder' => 'Passwort wiederholen','class' => 'form-control')) }}</p>
                            <p>{{ Form::submit('Account erstellen', array('class' => 'btn btn-primary btn-block')) }}</p>
                        
                        {{ Form::close() }}

                        
                        <p>{{ HTML::link('/users/login', 'Zurück') }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@stop