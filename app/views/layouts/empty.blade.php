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

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>
<body>

      @yield('content')
    
</body>

</html>