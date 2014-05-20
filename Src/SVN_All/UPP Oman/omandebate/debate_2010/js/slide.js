$(document).ready(function(){

	$(".bmsubhead").toggle(function(){
		$(this).addClass("activeArrow");
		}, function () {
		$(this).removeClass("activeArrow");
	});
	
	$('.bmsubhead').click(function()
	{
		speed = $(this).find('.bmsubheadtxt').height() * 500;
		$(this).next('.bmsubheadtxt').slideToggle(speed);
	});
});