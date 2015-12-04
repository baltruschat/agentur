$(document).ready(function() {
	var base_url = $("base").attr("href");
	$('.editor').wysihtml5({
		"stylesheets": base_url +'/asset/css/wysiwyg-colors.css',
		"color": true
	});

	$('.datepicker').datetimepicker({
		autoclose : true,
		todayHighlight : true,
		minView: 2,
		language: 'de'
	});
	$('.selectpicker').selectpicker();
	$('.file-uploader').file({ form: true});

	var AddressTypeahead = new Bloodhound({
		datumTokenizer: function (d) {
		    return Bloodhound.tokenizers.whitespace(d.value);
		},
		queryTokenizer: Bloodhound.tokenizers.whitespace,
		remote: {
		    url: base_url + '/addresses/json?query=%QUERY',
		    filter: function ( response ) {

		        return $.map(response, function (object) {
		            return {
		                value: object.firstname + " " + object.name,
		                firstName: object.firstname,
		                lastName: object.name,
		                id: object.id
		            };
		        });
		    }
		}
	});
	AddressTypeahead.initialize();

	var InvoiceTypeahead = new Bloodhound({
		datumTokenizer: function (d) {
		    return Bloodhound.tokenizers.whitespace(d.value);
		},
		queryTokenizer: Bloodhound.tokenizers.whitespace,
		remote: {
		    url: base_url + '/addresses/json?query=%QUERY',
		    filter: function ( response ) {

		        return $.map(response, function (object) {
		            return {
		                value: object.street + ", " + object.zip +' '+ object.city,
		                firstName: object.firstname,
		                lastName: object.name,
		                id: object.id
		            };
		        });
		    }
		},
		
	});
	InvoiceTypeahead.initialize();

	var TeamTypeahead = new Bloodhound({
		datumTokenizer: function (d) {
		    return Bloodhound.tokenizers.whitespace(d.value);
		},
		queryTokenizer: Bloodhound.tokenizers.whitespace,
		remote: {
		    url: base_url + '/users/json?query=%QUERY',
		    filter: function ( response ) {

		        return $.map(response, function (object) {
		            return {
		                value: object.firstname + " " + object.lastname,
		                firstName: object.firstname,
		                lastName: object.lastname,
		                id: object.id
		            };
		        });
		    }
		}
	});
	TeamTypeahead.initialize();

	
	$('.provider-contact').typeahead(null, {
		minLength: 3,
		displayKey: 'value',
		source: AddressTypeahead.ttAdapter()
	}).on('typeahead:selected', function (object, item) { 
		$('input.contact').val(item.id);
	});

	$('.provider-invoice').typeahead(null, {
		minLength: 3,
		displayKey: 'value',
		source: InvoiceTypeahead.ttAdapter(),
		templates: {
			suggestion: function(data){ return data.firstName +' '+data.lastName+'<br />'+data.value; }
		},
	}).on('typeahead:selected', function (object, item) { 
		$('input.invoice').val(item.id);
	});

	$('.provider-manager').typeahead(null, {
		minLength: 3,
		displayKey: 'value',
		source: TeamTypeahead.ttAdapter()
	}).on('typeahead:selected', function (object, item) { 
		$('input.manager').val(item.id);
	});

	/* Team Functions */
	$('.team-list .member').on('click', function(event){
		var target = event.target;
		var state = $(this).hasClass('active');
		
		if($(target).is('.task')) return;

		if(state) { $(this).removeClass('active'); $(this).find('input.active').val(0); $(this).find('.member-form').addClass('hide');  }
		else{ $(this).addClass('active'); $(this).find('input.active').val(1); $(this).find('.member-form').removeClass('hide'); }
	});

});