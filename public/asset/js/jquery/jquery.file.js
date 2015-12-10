// Felix Baltruschat

(function ( $ ) {
	var $settings;
	var $this;

	// ToDo
	// Form Element erstellen
	// Fallback für PDF usw...

	// Add Progress to Ajax Event
    var originalXhr = $.ajaxSettings.xhr;
    $.ajaxSetup({
        xhr: function() {
            var req = originalXhr(), that = this;
            if (req) {
                if (typeof req.addEventListener == "function" && that.progress !== undefined) {
                    req.addEventListener("progress", function(evt) {
                        that.progress(evt);
                    }, false);
                }
                if (typeof req.upload == "object" && that.progressUpload !== undefined) {
                    req.upload.addEventListener("progress", function(evt) {
                        that.progressUpload(evt);
                    }, false);
                }
            }
            return req;
        }
    });





	$.fn.file = function(options) {
	   	$this = $(this);
	    $settings = $.extend({
	    	progressBarTemplate : '<div class="progress"><div class="progress-bar" role="progressbar" aria-valuenow="00" aria-valuemin="0" aria-valuemax="100" style="width: 00%;"><span class="sr-only">00% Complete</span></div></div>',
	    	base_url : $("base").attr("href"),
	    	form : false
	    }, options );

	    jQuery.event.props.push("dataTransfer");
	    init();
	};

	var init = function(){
		if($this.find('.drop-zone').length <= 0)
			$this.append('<div class="drop-zone">Dateien hier ablegen</div>');
		if($this.find('.file-list').length <= 0)
			$this.append('<div class="file-list"></div>')

		if($this.find('.file').length > 0){
			$this.find('.file .delete').on('click', handleDeleteFile);
		}
		$this.find('.drop-zone').bind('dragover', handleDropOver).bind('dragleave', handleDropLeave).bind('drop', handleDrop);

	}

	var handleDropOver = function(evt){
		console.log('Function: handleDropOver');
		evt.stopPropagation();
    	evt.preventDefault();
    	evt.dataTransfer.dropEffect = 'copy';
		$(evt.target).addClass('active');
	}

	var handleDropLeave = function(evt){
		console.log('Function: handleDropLeave');
		evt.stopPropagation();
    	evt.preventDefault();
		$(evt.target).removeClass('active');
	}

	var handleDrop = function(evt){
		var $evt = evt;
		var countUploads = $this.find('.file-list div.file').length;
		console.log('Function: handleDrop');
		evt.stopPropagation();
    	evt.preventDefault();
    	$(evt.target).removeClass('active');

    	var files = evt.dataTransfer.files;


    	for (var i = 0, file; file = files[i]; i++) {
    		var index =  countUploads+i;
	    	$this.find('.file-list').append('<div class="file file-'+index+' uploading">'+$settings.progressBarTemplate+'</div>');


	    	var reader = new FileReader();
			reader.readAsDataURL(file);

			var data = new FormData();
			data.append('file', file);

			$.ajax({
				url: 			$settings.base_url+'/projects/upload',
				dataType:  		'json',
				type: 			'POST',
				data: 			data,
				processData: 	false,
        		contentType: 	false,
        		'index': 		index,
        		progressUpload: function (evt) {
		    		if (evt.lengthComputable) {
			    		var percentComplete = parseInt( (evt.loaded / evt.total * 100));
			    		$('.file-'+ this.index).find('.progress-bar').css('width', percentComplete +'%');
	      				$('.file-'+ this.index).find('.progress-bar').html('<span class="sr-only">'+percentComplete + '%</span>');
	      			}else {
			            console.log("Length not computable.");
			        }
			    },
        		success: function(response){
        			$('.file-'+ this.index).find('.progress').remove();
        			handleUploadResponse(response, '.file-'+ this.index, this.index);
        		}

        	});
	    }
	}

	var handleUploadResponse = function(response, target, index){
		console.log('Function: handleUploadResponse');
		$(target).removeClass('uploading');

		$(target).attr('data-fileOnServer', response.fileOnServer);

		if($settings.form){
			$(target).append('<input type="hidden" name="upload['+index+'][fileName]" value="'+response.fileName+'" /><input type="hidden" name="upload['+index+'][fileOnServer]" value="'+response.fileOnServer+'" />');
		}
		if(isImage(response.fileType)){
			$(target).append('<div class="img" style="background-image: url('+response.fileUrl+');"></div>');

		}else{
			$(target).append('<div class="icon"><i class="fa '+response.icon+'"></i></div>');
		}
		$(target).append('<div class="meta">'+response.fileName+' <div class="links"><a href="'+response.fileUrl+'" target="_blank"><i class="fa fa-cloud-download"></i></a> <a href="#" title="Datei löschen" class="delete" data-id="'+response.fileOnServer+'"><i class="fa fa-times"></i></a></div></div>');
		$(target).find('.delete').on('click', handleDeleteFile);
	}

	var handleDeleteFile = function(evt){
		console.log('Function: handleDeleteFile');
		console.log(evt);
		evt.preventDefault();
		$.ajax({
			url: 			$settings.base_url+'/projects/delete.file',
			dataType:  		'json',
			type: 			'POST',
			data: 			{id: $this.find($(evt.currentTarget)).attr('data-id') },
    		success: function(response){

    			$this.find($(evt.currentTarget)).parent().parent().parent().addClass('zoomOut animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
			    		$this.find($(evt.currentTarget)).parent().parent().parent().remove();
			    });

    		}

    	});
    	return false;
	}

	var isImage = function(type){
		switch(type){
			case 'jpg':
			case 'gif':
			case 'png':
				return true;
			break;
			default: return false;
		}
	}


}( jQuery ));
