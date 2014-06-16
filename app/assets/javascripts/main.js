$(document).ready(function() {

	var nav = $('nav');
	var arrow = $(".scroll-arrow");
	var upArrow = $(".arrow-to-top");


	//Scroll features

	upArrow.hide();

	$(window).scroll(function() {
		var distanceFromTop = $(this).scrollTop();

		if (distanceFromTop > 120 ) {
			nav.addClass("nav-scrolled");
		}
		else {
			nav.removeClass("nav-scrolled");
		}

		if (distanceFromTop > 250 ) {
			arrow.fadeOut('slow');
		}
		else { 
			arrow.fadeIn('slow');
		}

		if (distanceFromTop > 500 ) {
			upArrow.fadeIn('slow');
		}

		else {
			upArrow.fadeOut('fast');
		}
	});





	//Scroll links 


    $('a[href^="#"]').on('click', function(event) {
    	var target = $( $(this).attr('href') );
    	
    	if( target.length) {
    		event.preventDefault();
			$('html, body').animate({
			scrollTop: target.offset().top -49}, 1100);
    	}
    });

    $(".arrow-to-top").click(function(event) {
    	event.preventDefault();
    	$('html, body').animate({
			scrollTop: 0}, 1100);
    });

    arrow.click(function(event) {
    	event.preventDefault();
    	$('html, body').animate({
			scrollTop: $("#about").offset().top -62}, 1100);
    });

});
