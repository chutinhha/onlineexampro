$('.all-icontent').hide();

var bgColor;
var effect = 'ianimated bounceInLeft'; /* bounceIn, bounceInUp, bounceInDown, bounceInLeft,
										 bounceInRight, rotateIn, rotateInUpLeft, rotateInDownLeft,
										 rotateInUpRight, rotateInDownRight  */

$('.icontent li').click(function(){
	$('.card-front, .card-back').hide();
	$('.icontent li').removeClass('iactive').hide().css('border','none');
	$(this).addClass('iactive').show();
	bgColor = $('.iactive .card-back').css('background-color');
	$('.icontent').css('background-color',bgColor);
	$('.close, .all-icontent').show();
	$('.iresponsive').append('<span class="close">close</span>').addClass(effect);
});


$('.iresponsive').on('click', '.close', function(){

	$('.close').remove();
	bgColor = $('.iactive .card-front').css('background-color');
	$('.iresponsive').removeClass(effect);
	$('.all-icontent').hide();
	$('.icontent li').removeClass('iactive').show().css({ 'border-bottom':'1px solid #2c2c2c',
													    'border-left':'1px solid #2c2c2c' });
	$('.card-front, .card-back').show();
	$('.icontent').css('background-color',bgColor);
});