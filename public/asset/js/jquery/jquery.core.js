$(document).ready(function() {

	var base_url = $("base").attr("href");

    $('.toggle-navigation button').click(function(){
        $('#content').toggleClass('slide');
    });

	$('.selectpicker').selectpicker('render');

});


/* TIME CORE FUNCTIONS */

function stringToDate(date) {
    
    var yyyy = parseInt(date.substring(6,10), 10);
    var mm   = parseInt(date.substring(3,5), 10) - 1;
    var dd   = parseInt(date.substring(0,2), 10);

    return new Date(yyyy,mm,dd);
}

function timestampToString(timestamp){
    var date = new Date(timestamp);

    return dateToString(date);
}

function stringToTimestamp(date){
    var date = stringToDate(date);
    
    return date.getTime();
}

function stringDateGER_ENG(date){
   
    var yyyy = date.substring(6,10);
    var mm   = date.substring(3,5);
    var dd   = date.substring(0,2);

    return yyyy + "-" + mm + "-" + dd;
}

function stringDateENG_GER(date){
    var yyyy = date.substring(0,4);
    var mm   = date.substring(5,7);
    var dd   = date.substring(8,10);

    return dd + "." + mm + "." + yyyy;
}


/* TIME CORE FUNCTIONS END */