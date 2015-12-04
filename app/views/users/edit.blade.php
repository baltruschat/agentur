@extends('layouts.default')

@section('title', 'Mein Account bearbeiten')

@section('header')
    {{ HTML::script('asset/js/dropzone.js') }}
    {{ HTML::script('asset/js/jquery/jcrop/jquery.Jcrop.min.js') }}
    {{ HTML::style('asset/js/jquery/jcrop/jquery.Jcrop.min.css') }}
    {{ HTML::script('asset/js/jquery/jquery.edit.user.js') }}
    {{ HTML::style('asset/css/user.css') }}
@stop

@section('content')
<div class="content-box">
    <div class="page">
        <div class="register-form">
            <div class="account-wall">
                
                @include('layouts.errors')

                <div class="row">
                    <div class="col-sm-4 col-md-4 col-lg-3">
                        <div class="profil text-center">
                            @if(Auth::user()->image == '')
                                <img class="img-circle image profil-img" src="{{ asset('asset/img/photo.png') }} " alt="{{ Auth::user()->firstname }} {{ Auth::user()->lastname }}">
                            @else
                                <img class="img-circle image profil-img" src="{{ asset( Auth::user()->image ) }}" alt="{{ Auth::user()->firstname }} {{ Auth::user()->lastname }}">
                            @endif
                            
                            <h3 class="profil-name">{{ Auth::user()->firstname }} {{ Auth::user()->lastname }}</h3>
                            <p class="profil-email">{{ Auth::user()->email }}</p>
                        </div>
                        <div class="profil_dropzone">

                            <form method="POST" action="http://wir-denken-online.de/users/update" accept-charset="UTF-8" class="dropzone" id="user-profil-dropzone" enctype="multipart/form-data">
                                {{ Form::token() }}
                                <div class="fallback">
                                    <input name="file" type="file" multiple />
                                </div>
                            </form>
                        </div>
                        <div class="previews"></div>
                        
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <h3>Mein Account</h3>
                        {{ Form::open(array('url' => 'users/update')) }}
                            <div class="form-group"><label for="">Vorname:</label> {{ Form::text('firstname', $user->firstname, array('placeholder' => 'Vorname', 'class' => 'form-control')) }}</div>
                            <div class="form-group"><label for="">Nachname:</label> {{ Form::text('name', $user->lastname, array('placeholder' => 'Nachname', 'class' => 'form-control')) }}</div>
                            <div class="form-group"><label for="">E-Mail:</label> {{ Form::text('email', $user->email, array('placeholder' => 'E-Mail', 'class' => 'form-control')) }}</div>
                            <div class="form-group"><label for="">Passwort:</label> {{ Form::password('password', array('placeholder' => 'Neues Passwort','class' => 'form-control')) }}<br />
                            {{ Form::password('password_confirmation', array('placeholder' => 'Passwort wiederholen','class' => 'form-control')) }}</div>
                            <div class="form-group">{{ Form::submit('Speichern', array('class' => 'btn btn-primary')) }}</p>
                        {{ Form::close() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade modal-edit-img">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">X</span></button>
                    <h4 class="modal-title">Bild bearbeiten</h4>
                </div>
                <div class="modal-body">
                    <div class="">
                        <img src="" style="width:100%" class="edit-img-tmp" />
                        {{ Form::open(array('url' => 'users/crop', 'class' => 'modal-form')) }}
                            <input type="hidden" name="x1" value="" />
                            <input type="hidden" name="y1" value="" />
                            <input type="hidden" name="x2" value="" />
                            <input type="hidden" name="y2" value="" />
                        {{ Form::close() }}
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Speichern</button>
                </div>
            </div>
        </div>
    </div>

@stop