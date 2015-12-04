
@extends('layouts.default')
@section('title', 'Kalender')

@section('header')
	{{ HTML::script('asset/js/moment.min.js') }}

	{{ HTML::style('asset/js/jquery/fullcalendar/fullcalendar.min.css') }}
    {{ HTML::script('asset/js/jquery/fullcalendar/fullcalendar.min.js') }}
    {{ HTML::script('asset/js/jquery/fullcalendar/lang/de.js') }}

    {{ HTML::style('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.css') }}
    {{ HTML::script('asset/bootstrap/datetimepicker/bootstrap-datetimepicker.min.js') }}
    {{ HTML::script('asset/bootstrap/datetimepicker/locales/bootstrap-datetimepicker.de.js') }}
@stop

@section('content')

	<div class="content-box">
		@include('layouts.errors')
		<div class="page">

			<div id="add-event-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			        <h4 class="modal-title" id="myModalLabel">Termin</h4>
			      </div>

			      
				    <div class="modal-body">
				      	<form id="event-form">
				      	<input type="hidden" id="add-event-id" name="add-event-id" value="">
					      	<div class="row">
					      		<div class="col-md-6">
							      	<div class="form-group"><label for="add-event-title">Titel</label>
							        <input type="text" class="form-control" id="add-event-title" name="add-event-title"></div>
					      		</div>
						      	<div class="col-md-6">
							        <div class="form-group"><label for="add-event-place">Ort</label>
							        <input type="text" class="form-control" id="add-event-place" name="add-event-place"></div>
					      		</div> 
					      	</div>     	
					      	<div class="row">
					      		<div class="col-md-6">
					      			<div class="form-group">
					      				<label for="add-event-start">Start</label>
							            <div class="input-group date">
										    <input name="add-event-start" size="16" class="form-control" id="datetimepicker1" />
										    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
										</div>
									</div>
					      		</div>
						      	<div class="col-md-6">
								    <div class="form-group">
								    	<label for="add-event-end">Ende</label>
							            <div class="input-group date">
										    <input name="add-event-end" size="16" class="form-control" id="datetimepicker2" />
										    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
										</div>
						            </div>
					      		</div> 
					      	</div>     
					      	<div class="row">
					      		<div class="col-md-6">
									<label class="checkbox-inline">
									  <input type="checkbox" id="add-event-allday" name="add-event-allday" value="1"> Ganzer Tag
									</label>
					      		</div>
						      	<div class="col-md-6">
						      		Wiederholung:
									<select id="add-event-repeat" name="add-event-repeat" class="form-control">
									  <option value="0">keine</option>
									  <option value="1">täglich</option>
									  <option value="2">wöchentlich</option>
									  <option value="3">monatlich</option>
									</select>
					      		</div> 
					      	</div>  
					      	<div class="row">
					      		<div class="col-md-12">
						      		Notizen:
						      		<textarea class="form-control" rows="3" id="add-event-note" name="add-event-note"></textarea>
						      	</div>
					      	</div>   
					      	<div class="row">
					      		<div class="col-md-12">
						      		Teilnehmer:
						      		<div class="event-user-list">
										<div class="row">
								      		
								      		@foreach($users as $user)
								      			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
													<div class="user user-<?php echo $user->id; ?>">
														<div class="image pull-left">
															@if($user->image == '')
																<img class="img-circle" width="30" src="{{ asset('asset/img/photo.png') }} " alt="{{ $user->firstname }} {{ $user->lastname }}">
															@else
																<img class="img-circle" width="30" src="{{ asset( $user->image ) }}" alt="{{ $user->firstname }} {{ $user->lastname }}">
															@endif
														</div>
														<div class="data">
															<span class="title"><?php echo mb_substr($user->firstname,0,1,"UTF-8") .'. '. $user->lastname; ?></span>
															<input type="hidden" name="user[<?php echo $user->id; ?>][active]" value="" class="active" />
															<input type="hidden" name="user[<?php echo $user->id; ?>][id]" value="<?php echo $user->id; ?>" />
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
								      		@endforeach
						      			</div>
						      		</div>
						      	</div>
					      	</div>  
						</form>
				    </div>

				 

			      <div class="modal-footer">
			      	<button type="button" id="add-event-delete-btn" class="btn btn-danger pull-left" data-dismiss="modal">löschen</button>
			        <button type="button" class="btn btn-default" data-dismiss="modal">abbrechen</button>
			        <button type="button" id="add-event-save-btn" class="btn btn-success" data-dismiss="modal">speichern</button>
			      </div>
			    </div>
			  </div>
			</div>

			<div id='calendar'></div>
			</div>
	</div>

	<script>

		$(document).ready(function() {


			var picker1 = $('#datetimepicker1').datetimepicker({
				language: 'de',
				autoclose : true,
				todayHighlight : true,
				format: 'dd.mm.yyyy hh:ii'
			});
	    	var picker2 = $('#datetimepicker2').datetimepicker({
	    		language: 'de',
	    		autoclose : true,
				todayHighlight : true,
				format: 'dd.mm.yyyy hh:ii'
	    	});

			$('#calendar').fullCalendar({
				header:{left:'prev,next today',center:'title',right:'month,agendaWeek,agendaDay'},
				lang: 'de',
				editable: true,
				eventLimit: true, // allow "more" link when too many events
				monthNames: ["Januar","Februar","März","April","Mai","Juni","Juli","August","September","Oktober","November","Dezember"],
				monthNamesShort: ["Jan","Feb","Mär","Apr","Mai","Jun","Jul","Aug","Sep","Okt","Nov","Dez"],
				dayNames: ["Sonntag","Montag","Dienstag","Mittwoch","Donnerstag","Freitag","Samstag"],
				dayNamesShort: ["So","Mo","Di","Mi","Do","Fr","Sa"],
				timeFormat: 'H:mm',
				timezone: 'local',
				buttonText: {
					today: "heute",
					month: "Monat",
					week: "Woche",
					day: "Tag"},
				firstDay: 1,
				eventColor: '#ef3434',
			    events: function(start, end, timezone, callback) {
			    	$.getJSON( "/events/json", function( data ) {

			    		var events = [];
			    		$.each(data, function() {

			    			//alert(JSON.stringify(data));
			    			
					    	events.push({
					    		id: this.id,
					    		creator: this.userid,
					    		place: this.place,
							    title: this.name,
							    start: this.starttime,
							    end: this.endtime,
							    allDay: ((this.allday == 1) ? true : false),
							    repeat: this.repeat,
							    note: this.note,
							    members: this.members,
							    backgroundColor: this.backgroundColor,
							    borderColor: this.backgroundColor
							});
						}); 
						callback(events);
					});

			    },
			    dayClick: function(date, jsEvent, view) {

			    	$("#add-event-delete-btn").hide();

			    	$('.event-user-list .user').removeClass('active');
			    	$("#add-event-id").val("");
			    	$("#add-event-title").val("");
			    	$("#add-event-place").val("");
			    	$("#add-event-repeat").val("0");
			    	$("#add-event-notes").val("");
			    	$('#datetimepicker1').val( moment(date).format("DD.MM.YYYY HH:mm") );
			    	$('#datetimepicker2').val( moment(date).format("DD.MM.YYYY HH:mm") );
			    	$('#datetimepicker1').datetimepicker('update');
			    	$('#datetimepicker2').datetimepicker('update');
					$('#add-event-modal').modal('show');



			    },
			    eventClick: function(event, delta, revertFunc){
			    	prepareModal(event);
			    },
			    eventResize: function(event, delta, revertFunc){
			    	prepareModal(event);
			    },
			    eventDrop: function(event, delta, revertFunc){
			    	prepareModal(event);
			    },
			    eventRender: function(event, element) {
			    	
			    }


			});
	
			// Click on delete button
			$( "#add-event-delete-btn" ).click(function() {
				deleteEvent();
			});

			// Click on save button
			$( "#add-event-save-btn" ).click(function() {
				saveEvent();
			});

			$('.event-user-list .user').click(function(){
				$(this).toggleClass('active');
				console.log($(this).find('.active').val());
				if( $(this).find('.active').val() == '1' ){
					$(this).find('.active').val('');
				}else{
					$(this).find('.active').val('1');
				}
			});
			
		});

		function deleteEvent(){
			$.ajax({
			    type: "POST",
			    url: "/events/delete",
			    data: $('#event-form').serialize()
			})
			.done(function() {
				$('#calendar').fullCalendar( 'refetchEvents' );
				$('#calendar').fullCalendar( 'rerenderEvents' );
			});
		}

		function saveEvent(){
			$.ajax({
			    type: "POST",
			    url: "/events/save",
			    data: $('#event-form').serialize()
			})
			.done(function() {
				$('#calendar').fullCalendar( 'refetchEvents' );
				$('#calendar').fullCalendar( 'rerenderEvents' );
			});
		}

		function prepareModal(event){
			$("#add-event-delete-btn").hide();
	    	$("#add-event-id").val(event.id);
	    	$("#add-event-title").val(event.title);
	    	$("#add-event-place").val(event.place);
	    	$("#add-event-repeat").val(event.repeat);
	    	$("#add-event-notes").val(event.note);

	    	$('.event-user-list .user').removeClass('active');
	    	if(event.members.length > 0){
	    		$.each(event.members, function(index, member){
	    			$('.event-user-list').find('.user-' + member.id).addClass('active').find('input.active').val('1');
	    		});
	    	}

	    	$('#datetimepicker1').val( moment(event.start).format("DD.MM.YYYY HH:mm") );
	    	$('#datetimepicker2').val( moment(event.end).format("DD.MM.YYYY HH:mm") );
	    	$('#datetimepicker1').datetimepicker('update');
	    	$('#datetimepicker2').datetimepicker('update');
			$('#add-event-modal').modal('show');
		}


	</script>

@stop