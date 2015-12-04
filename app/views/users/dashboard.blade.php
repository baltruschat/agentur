@section('title', 'Dashboard')

@section('header')
    {{ HTML::script('asset/js/Chart.min.js') }}
@stop

@section('content')
	@include('layouts.errors')
	<div class="content-box">
		<div class="row">
			
			<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
				<div class="widget">
					<h3>Aufgaben</h3>
					@if(count($tasks) > 0)
					<table class="table table-hover table-responsiv">
						<thead>
							<tr>
								<th>Zu wann</th>
								<th>Projekt</th>
								<th colspan="2">Aufgabe</th>
								<th>Erstellt von</th>
							</tr>
						</thead>
						<tbody>
							@foreach($tasks as $task)
							<tr>
								<td>{{ date('d.m.Y', strtotime($task->finish)) }}
								<td>{{ $task->project->id }} | {{ $task->project->name }}</td>
								<td>{{ $task->title }}</td>
								<td>{{ $task->description }}</td>
								<td>{{ $task->creator->firstname }} {{ $task->creator->lastname }}</td>
							</tr>
							@endforeach
						</tbody>
					</table>
					@else
					<p>Für dich wurden noch keine Aufgaben erstellt.</p>
					@endif

					
				</div>	
			</div>
			
			<div class="col-xs-12 col-sm-4 col-md-4 col-lg-5">
				<div class="widget event-timeline">
					<h3>Termine heute</h3>
					<div class="row">
						<div class="col-xs-3">Um</div>
						<div class="col-xs-9">Termin</div>
					</div>
					@if(count($events) > 0)
						@foreach($events as $event)
							<div class="timeline-item" style="border-top: 1px solid #CCC;">
								<div class="row">
									<div class="col-xs-3">
										{{ date('H:i', strtotime($event->starttime)) }} Uhr<br />
										{{ $event->diffInHours() }} Std. 
									</div>
									<div class="col-xs-9" style="border-left: 1px solid #EEE;">
										<p><strong>{{ $event->name }}</strong><br />
										<em>
										@foreach($event->members as $member)
											{{ $member->firstname }} {{ $member->lastname }},
										@endforeach</em>
										</p>
									</div>
								</div>
							</div>
						@endforeach
					@else
						<p>Keine Termine für dich geunfden.</p>
					@endif
				</div>	
			</div>
			<div class="col-xs-12 col-sm-3 col-md-3 col-lg-2">
				<div class="widget timemanagement">
					<h3>Stundenkonto</h3>
					<div class="chart">
						<canvas id="timeChart" width="100%" height=""></canvas>
						<div class="count"><h1>{{ $timemanagement }}</h1></div>
					</div>
					<script type="text/javascript" charset="utf-8">
						var data = [
							{
								value: {{ $timemanagement }},
								color: '#F7464A',
								highlight: '#FF5A5E',
								label: 'Red'
							},
							{
								value: <?php echo ( 8-$timemanagement <= 0) ? 0 : 8-$timemanagement; ?>,
								color: '#f3f3f4',
								highlight: '#e6e6e8',
								label: 'Red'
							}
						]
						var ctx = document.getElementById("timeChart").getContext("2d");
						var myDoughnutChart = new Chart(ctx).Doughnut(data, { responsive: true });
					</script>
				</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="widget">
					<h3>Aktuelle Projekte</h3>
					@if(count($projects) > 0)
					<table class="table  project-list">
					<colgroup>
		              <col width="1">
		              <col>
		              <col width="1">
		              <col width="1">
		              <col>
		            </colgroup>  
					<thead>
						<tr>
							<th class="text-center">#</th>
							<th>Projekt</th>
							<th>Eingangsdatum</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					@foreach($projects as $project)
						<tr>
							<td class="col-id">{{ $project->id }}</td>
							<td class="col-title"><h2>{{ $project->name }}</h2>
							{{ $project->Customer->getFullName() }}</td>
							<td> {{ date('d.m.Y', strtotime($project->date)) }}</td>
							<td><a href="{{ url('projects/detail/'.$project->id) }}" class="btn btn-xs btn-success">öffnen</a></td>
						</tr>
					@endforeach
					</tbody>
					</table>
					@endif
				</div>	
			</div>
						
		</div>

		
	</div>
@stop