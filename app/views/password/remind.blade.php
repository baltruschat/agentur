@extends('layouts.empty')

@section('title', 'Passwort vergessen')

@section('content')

<div class="container login">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="row">
                <div class="form">
                    <div class="account-wall">
                        <h1 class="login-title">Passwort vergessen</h1>

                        @include('layouts.errors')

                        <p>Trage Sie ihre Email ein, um einen Link zu erhalten, über den Sie ein neues Passwort erstellen können.</p>

                        <form action="password/remind" method="POST">
                            <p><input type="email" name="email" class="form-control" placeholder="E-Mail" required/></p>
                            <p><button class="btn btn-primary btn-block" type="submit">anfordern</button></p>
                        </form>

                        <p>{{ HTML::link('/users/login', 'Zurück') }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@stop