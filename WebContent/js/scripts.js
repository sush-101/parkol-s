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
    $.fn.refreshTable = function(){
    	$.ajax({
    		url : 'Attendant',
    		method : 'GET',
    		dataType : 'json',
    		contentType: 'application/json',
    		success : function(data,status){
    			$('#attendantsList table').remove();
    			var table = $('<table>').appendTo($('#attendantsList'));
    			var a = "rgb(111, 199, 86)",b = "rgb(204, 219, 200)",cur1 = a,cur2 = b;
    			$("<tr>").appendTo(table)
    					 .append($("<th>").text("Email ID"))
    					 .append($("<th>").text("Name"))
    					 .append($("<th>").text("Ph.no"))
    					 .append($("<th>").text("Age"));
    			$.each(data,function(index,attendant){
    				if(cur1 === a){cur1 = b;cur2 = a;}
    				else {cur1 = a;cur2 = b}
    				$("<tr>").appendTo(table)
    						 .append($("<td>").text(attendant.email))
    						 .append($("<td>").text(attendant.name))
    						 .append($("<td>").text(attendant.phno))
    						 .append($("<td>").text(attendant.age))
    						 .css({"background-color":cur1},{"color":cur2});
    			});
    			$(table).css({"border":"2px solid rgb(100, 104, 98)"});
    		}
    	});
    }	
    $.fn.refreshTable();
    $('#addatten').submit(function(event){
    	var map = {email : $('#email').val(),name : $('#name').val(),phno : $('#phno').val(),
    				pass: $('#pass').val(),age : $('#age').val()}
    	event.preventDefault();
    	var form = $(this),addr = form.attr('action');
    	var submit = $.ajax({
    		url : addr,
    		method : 'POST',
    		data : map,
    		success : function(result){$.fn.refreshTable();}
    	});
    	submit.fail(function(){alert("please enter valid details");});
    });
    $('#removeatten').submit(function(event){
    	var map = {email : $('#removeattendant').val()}
    	event.preventDefault();
    	var form = $(this),addr = form.attr('action');
    	var submit = $.ajax({
    		url : addr,
    		method : 'GET',
    		data : map,
    		success : function(result){$.fn.refreshTable();}
    	});
    	submit.fail(function(){alert("something went wrong");});
    });
});
