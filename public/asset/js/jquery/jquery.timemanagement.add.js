(function ( $ ) {

	var $this;

	$.fn.timemanagement = function(options) {
		$this = $(this);
		
		$('.datepicker').datetimepicker({
            autoclose : true,
            todayHighlight : true,
            minView: 2,
			language: 'de'
        });

		$this.submit(function(evt) {
			var hasError = validate();
			if(hasError){
				evt.preventDefault();
			}
		});
	}

	var validate = function(){
		var error = false;
		
		if($this.find('.date').val() == ''){
			error = true;
			$this.find('.date').parent().addClass('has-error');
		}else{
			$this.find('.date').parent().removeClass('has-error');	
		}

		if($this.find('.time').val() == ''){
			error = true;
			$this.find('.time').parent().addClass('has-error');
		}else{
			$this.find('.time').parent().removeClass('has-error');	
		}

		if($this.find('.work_group').val() == '0'){
			error = true;
			$this.find('.work_group').parent().addClass('has-error');
		}else{
			$this.find('.work_group').parent().removeClass('has-error');	
		}

		if($this.find('.work_task').val() == '0'){
			error = true;
			$this.find('.work_task').parent().addClass('has-error');
		}else{
			$this.find('.work_task').parent().removeClass('has-error');	
		}

		if($this.find('.project_id').val() == ''){
			error = true;
			$this.find('.project_id').parent().addClass('has-error');
		}else{
			$this.find('.project_id').parent().removeClass('has-error');	
		}

		return error;
	}

}( jQuery ));