// JavaScript Document

$(document).ready(function(){
    $('.menu-none').click(function() {
		if (!$('.menu-side').hasClass('menu-side-open')) {
			$('.menu-side').addClass('menu-side-open');
			
		}else{
			$('.menu-side').removeClass('menu-side-open');
		}
	});
	
	$('.menu-btn').click(function() {
		if(!$(this).children('ul').hasClass('show')){
			var menu_id = $(this).attr('data-tab');
			//$('.menu-btn ul').removeClass('show');
			$("#" + menu_id).addClass('show');
		}else{
			$('.menu-btn ul').removeClass('show');
		}
    });

    $('.menu-inbtn').click(function () {
        if (!$(this).children('ul').hasClass('show')) {
            var menu_id = $(this).attr('data-tab');
            $('.menu-btn ul').removeClass('show');
            $('.menu-inbtn ul').removeClass('show');
            $("#" + menu_id).addClass('show');
        } else {
            $('.menu-inbtn ul').removeClass('show');
        }
    });
});
