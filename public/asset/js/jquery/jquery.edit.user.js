Dropzone.autoDiscover = false;

$(document).ready(function() {
	var base_url = $("base").attr("href");
	var jcrop_api, boundx, boundy;
	var crop = $('.edit-img-tmp');

	var dropzone = $("#user-profil-dropzone").dropzone({ 
		maxFiles			: 1,
		url 				: "/users/upload",
		dictDefaultMessage	: "Dein Profilbild hier ablegen oder klicken zum hochladen.",
		acceptedFiles 		: "image/*",
		init 				: function () {
			this.on("complete", function(file) {
				console.log('Test');
				var img =  JSON.parse(file.xhr.response);
				jQuery('.edit-img-tmp').attr('src', img).load(function(){
					jQuery('.modal-edit-img').modal('show');
					crop.Jcrop({ 
        				aspectRatio: 1,
        				setSelect: [0,0,250,250],
        				onChange: function (selection) {
				            jQuery('input[name="x1"]').val(selection.x);
				            jQuery('input[name="y1"]').val(selection.y);
				            jQuery('input[name="x2"]').val(selection.x2);
				            jQuery('input[name="y2"]').val(selection.y2);           
				        },
				        boxWidth: 500,
				        allowSelect: false,
				        bgOpacity: .5,
				        keySupport: false
					
					},function(){
					    jcrop_api = this;
					});

					jQuery('.modal-edit-img .btn-primary').click(function(){
				        				
        				jQuery('.modal-edit-img').modal('hide');	
        			});
        			jQuery('.modal-edit-img').on('hidden.bs.modal', function (e) {
        				

						jQuery.ajax({
					        url: base_url+'/users/crop',
					        type: 'POST',
					        data: jQuery('.modal-form').serialize(),
					        cache: false,
					        dataType: 'json',
					        success: function(data){
					        	if(data.img != 'undefined'){
					        		jQuery('.profil-img').attr('src', data.img);	
					        	}
					      	}
					    });
					});
				});
				this.removeFile(file);
			});

			this.on("uploadprogress", function(file, progress) {
				jQuery(".previews").find('.progress-bar').css({width: progress+'%'})
			});
		},
		createImageThumbnails: false,
		previewsContainer	: '.previews',
		previewTemplate		: '<div class="file"><div style="width: 0" class="progress-bar progress-bar-success" data-dz-uploadprogress></div><div class="dz-error-message"><span data-dz-errormessage></span></div></div>'
	});
	
	
});