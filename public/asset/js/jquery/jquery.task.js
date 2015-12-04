$(document).ready(function() {
    
        $('.datepicker').datetimepicker({
            autoclose : true,
            todayHighlight : true
        });

        $('.task-add').on('submit', function(e){
            e.preventDefault();
            var $form = $(this);
            $.ajax({
                url             :  '/projects/task/add',
                data            :  $form.serialize(),
                dataType        :  'json',
                type            :  'POST'
            }).done(function(data){
                console.log(data.status);
                if(data.status == 0){
                    $('.task-add').find('.alert').remove();
                    $('.task-add').append('<div class="alert alert-danger fade in">'+data.error+'</div>');
                }else{
                    console.log($form.find('select[name=user]').val());
                    if( $('.user-'+ $form.find('select[name=user]').val() +' .task').length == 0){
                        $('.user-'+ $form.find('select[name=user]').val() +' .task-list').html('<table class="task table"><tbody></tbody></table>');

                        $('.user-'+ $form.find('select[name=user]').val() +' .task tbody').sortable({ 
                            handle: ".sortable",
                            stop: function(event, ui) {
                                var order = [];
                                $(ui.item).parent().find('tr').each(function(i,el){
                                   order.push({ id : $(el).attr('data-id'), order: i });
                                });
                                if(DEBUG) console.log('Task | SortableEvt | table > tr | Order: '+ order);

                                $.ajax({
                                    url             :  '/projects/task/order',
                                    data            :  {order : $.toJSON(order)},
                                    dataType        :  'json',
                                    type            :  'POST'
                                });
                            }
                        }).disableSelection();
                    }
                    console.log('<tr class="'+data.class+' task-'+data.task_id+' animated flipInY"><td class="sortable"><i class="fa fa-arrows-v"></i></td><td class="selector"><input type="checkbox" name="" value="'+data.task_id+'" data-task="task-'+data.task_id+'" /></td><td class="task-data"><h2>'+ $form.find('input[name=title]').val()+ ' <span class="pull-right date">'+ $form.find('input[name=date]').val()+ '</span></h2><div class="task-desc">'+ $form.find('input[name=description]').val()+ '</div><small>'+data.creator+'</small></td></tr>');
                    $('.tasks .user-'+ $form.find('select[name=user]').val() +' table tbody').append('<tr class="'+data.class+' task-'+data.task_id+' animated flipInY"><td class="sortable"><i class="fa fa-arrows-v"></i></td><td class="selector"><input type="checkbox" name="" value="'+data.task_id+'" data-task="task-'+data.task_id+'" /></td><td class="task-data"><h2>'+ $form.find('input[name=title]').val()+ ' <span class="pull-right date">'+ $form.find('input[name=date]').val()+ '</span></h2><div class="task-desc">'+ $form.find('input[name=description]').val()+ '</div><small>'+data.creator+'</small></td></tr>');

                    $( ".task tbody" ).sortable( "refresh" );
                }
            });

        });
        
        $('.selector :checkbox').change(function(){
            
            var parrentEl = $(this).attr('data-task');
            if(DEBUG){
                console.log('Task | ClickEvt | table > tr > checkbox | Checkbox val: '+ parrentEl);
            }
            $('.'+parrentEl).toggleClass('done');
            $.ajax({
                url             :  '/projects/task/done',
                data            :  {status : $('.'+parrentEl).hasClass('done'), id : $('.'+parrentEl).attr('data-id') },
                dataType        :  'json',
                type            :  'POST'
            });
        });

        $( ".task tbody" ).sortable({ 
            handle: ".sortable",
            stop: function(event, ui) {
                var order = [];
                $(ui.item).parent().find('tr').each(function(i,el){
                   order.push({ id : $(el).attr('data-id'), order: i });
                });
                if(DEBUG) console.log('Task | SortableEvt | table > tr | Order: '+ order);

                $.ajax({
                    url             :  '/projects/task/order',
                    data            :  {order : $.toJSON(order)},
                    dataType        :  'json',
                    type            :  'POST'
                });
            }
        }).disableSelection();
 
    });