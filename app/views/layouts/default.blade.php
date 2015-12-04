<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <base href="{{ url() }}" />
    <title>@yield('title') | Agentur 3.0.1</title>

    {{ HTML::style('asset/bootstrap/bootstrap/css/bootstrap.min.css') }}
    {{ HTML::style('asset/bootstrap/font-awesome/css/font-awesome.min.css') }}
    {{ HTML::style('asset/css/style.css') }}
    {{ HTML::style('asset/css/animate.css') }}
    {{ HTML::script('asset/js/jquery/jquery-2.1.1.min.js') }}
    {{ HTML::script('asset/bootstrap/bootstrap/js/bootstrap.min.js') }}
    
    @yield('header')

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript">
        var DEBUG = true;
    </script>

</head>
<body>
  <div id="wrapper">
    <div class="sidebar">
      <div class="user widget text-center">
      
        <a href="<?php echo url('/users/edit'); ?>" title="Mein Profil bearbeiten">
          @if(Auth::user()->image == '')
              <img class="img-circle image profil-img" src="{{ asset('asset/img/photo.png') }} " alt="{{ Auth::user()->firstname }} {{ Auth::user()->lastname }}">
          @else
              <img class="img-circle image profil-img" src="{{ asset( Auth::user()->image ) }}" alt="{{ Auth::user()->firstname }} {{ Auth::user()->lastname }}">
          @endif
        </a>
      <div class="profil">{{ HTML::link('/users/edit', Auth::user()->firstname.' '. Auth::user()->lastname) }}</div>
      <div class="workgroup dropdown">
        <a data-toggle="dropdown" href="#">{{ Auth::user()->group->name }}  <span class="caret"></span></a>
        <ul class="dropdown-menu" role="workgroup_menu">
          @foreach (Auth::user()->groups as $group)
            <li><a href="" title="Arbeitsgruppe ändern">{{ $group->name }}</a></li>
          @endforeach
        </ul>
      </div>
    </div>

      <div id="main-nav" class="widget">
        {{ $MainMenu->asUl(array('class' => 'nav nav-stacked')) }}
      </div>
    </div>

    <div id="content-right" class="">
      <?php
        $notes = Auth::user()->notifications()->where('read', '=', 0)->orderBy('created_at','DESC')->get();
      ?>
      <div id="navbar" class="collapse navbar-collapse navbar-header">
          <ul class="nav navbar-nav pull-right">
            <li class="notification">
              <a href="#" title="Meldungen" class="count-info dropdown-toggle" id="noteDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-bell">@if(count($notes) > 0)<label class="label label-danger">{{ count($notes) }}</label>@endif</i>
              </a>
              <ul class="dropdown-menu dropdown-extended dropdown-dark dropdown-notification dropdown-menu-right" aria-labelledby="noteDropdown" style="min-width:450px;">
                <li class="external"><h4>Benachrichtigungen<a href="" title="" class="btn btn-xs btn-danger pull-right">alle ansehen</a></h4></li>

                @foreach(Auth::user()->notifications()->orderBy('created_at','DESC')->limit(10)->get() as $note)
                    <li class="@if($note->read == 0) unread @else readed @endif note" data-id="{{ $note->id }}">
                      <strong>{{ $note->creator->firstname }} {{ $note->creator->lastname }}</strong> {{ $note->format() }}
                      <div class="meta">{{ $note->humanTiming() }}</div>
                    </li>
                @endforeach
              </ul>
             
            </li>
            <li><a href="{{ url('/users/logout') }}" title="Abmelden"><i class="glyphicon glyphicon-log-out"></i> Logout</a></li>
          </ul>
      </div>
      <script type="text/javascript" charset="utf-8">
        $(document).ready(function() {
          $('.notification').on('show.bs.dropdown', function(){
            var ids = [];
            $(this).find('.note').each(function(){
              ids.push( $(this).attr('data-id') );
            });
            $.ajax({
              url: '{{ url('/users/notifications/read') }}',
              data: 'notes='+ ids.toString()
            }).done(function(data){
              $('.notification .label').remove();
            });
          });
        });
      </script>

      <div id="content">
        @include('layouts.title')
        @yield('content')
      </div>
    </div>

  </div>
</body>

</html>