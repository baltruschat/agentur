@extends('layouts.empty')

@section('title', 'Password ändern')

@section('content')

<div class="container login">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="row">
                <div class="form">
                    <div class="account-wall">
                        <h1 class="login-title">Passwort ändern</h1>

                        @include('layouts.errors')
                        
                        <p>Sie können nun ein neues Passwort für Ihren Account setzen.</p>

                        <form action="password/reset" method="POST">
                            <p><input type="hidden" name="token" class="form-control" value="{{ $token }}"></p>
                            <p><input type="email" name="email" class="form-control" placeholder="E-Mail"></p>
                            <p><input type="password" name="password" class="form-control" placeholder="Neues Passwort"></p>
                            <p><input type="password" name="password_confirmation" class="form-control" placeholder="Neues Passwort wiederholen"></p>
                            <p><button class="btn btn-primary btn-block" type="submit">speichern</button></p>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@stop