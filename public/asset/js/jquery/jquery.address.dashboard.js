$(document).ready(function() {
	cal_height();

	var base_url = $("base").attr("href");
	$('.address-list li').click(function(){
		if( $('.address-content div[data-id='+$(this).attr('data-id')+']').length == 0){
    		$('.address-list li').removeClass('active');
    		$(this).addClass('active');
    		$.ajax({
                url             :  base_url +'/addresses/get',
                data            :  {id : $(this).attr('data-id') },
                dataType        :  'json',
                type            :  'POST'

            }).done(function(data){
            		var template = $('.address-template').html();
            		$('.address-content').append(template);
            		template =  $('.address-content .address-card:last-child');
            		template.attr('data-id', data.id);
                	template.find('.edit').attr('href',template.find('.edit').attr('href') + '/' + data.id);
                	if(data.www){
                		template.find('.favicon img').attr('src', 'https://www.google.com/s2/favicons?domain='+data.www.replace('http://', '').replace('www.',''));
                	}else{
                		template.find('.favicon').html('<i class="fa fa-book"></i>');
                	}
                	template.find('.name').html(data.firstname+' '+ data.name);
                	template.find('.label').html(data.category);
                	template.find('.company').html(data.customer.name);
                	template.find('.position').html('- '+data.position+' -');
                	template.find('.street').html(data.street);
                	template.find('.zip').html(data.zip+' '+ data.city);
                	template.find('.tel').html('<span>Tel.:</span>'+data.tel);
                	template.find('.tel2').html('<span>Tel. 2:</span>'+data.tel2);
                	template.find('.fax').html('<span>Fax:</span>'+data.fax);
                	template.find('.mobile').html('<span>Mobile.:</span>'+data.mobile);
                	template.find('.email').html('<span>Email:</span> <a href="'+data.email+'" title="Email senden" target="_blank">'+data.email+'</a>');
                	template.find('.www').html('<span>WWW:</span> <a href="'+data.www+'" title="Webseite ansehen" target="_blank">'+data.www+'</a>');
                	cal_height();
            });	
    	

	    	$('.address-card .remove').on('click',function(event){
	    		event.preventDefault();
	    		var card = $(this).parent();
	    		card.addClass('zoomOut animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
	    			card.parent().remove();
	    		});
	    		cal_height();
	    		return false;
	    	});
    	}
    });
	
	$( window ).resize(function(){
		cal_height();
	});

	function cal_height(){
		var height = $(window).height();
		var position = $('.address-list').offset();
		var new_height = height - position.top - 30;
		if( $('.address-content').height() > new_height )
			$('.address-list').height( $('.address-content').height() );
		else
			$('.address-list').height( height - position.top - 30);	
	}
});