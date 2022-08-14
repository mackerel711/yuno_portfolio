$(document).ready(function(){
    var barFlug = 0;
    $('#bar').click(function(){
        if(barFlug == 0){
            $('#navigation').fadeIn();
            barFlug = 1;
        }else{
            $('#navigation').fadeOut() ;
            barFlug = 0;
        }
    });

})