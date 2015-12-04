<html>
<body>

Hallo {{ $name }},
<br/><br/>
Bitte klicke auf folgenden Link, um deinen Account zu aktivieren:<br/>
{{ HTML::link('/users/activate/'.$token) }}
<br/><br/>
-------<br/>
WBT

</body>
</html>

