$(document).ready(function(){  
    $('#mycarousel').carousel({interval:2000});
    $('#mycarousel').carousel({pause:true});
    $("#carouselButton").click(function(){
        if($(this).text() == "Stop"){
            $('#mycarousel').carousel('pause');
            $(this).text('Start');
            $(this).removeClass('btn-danger');
            $(this).addClass('btn-success');
        }
        else{
            $('#mycarousel').carousel('cycle');
            $(this).text('Stop');
            $(this).removeClass('btn-success');
            $(this).addClass('btn-danger');
        }
    });
});