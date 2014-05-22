<?php
session_start();
$string = '';
for ($i = 0; $i < 5; $i++)
{
	$string .= chr(rand(97, 122));
}
$_SESSION['rand_code'] = $string;
$dir = 'fonts/';

$image = imagecreatetruecolor(105, 30);
$black = imagecolorallocate($image, 0, 0, 0);
$color = imagecolorallocate($image, 12, 101, 43);
$white = imagecolorallocate($image, 212, 213, 214);

imagefilledrectangle($image,0,0,399,99,$white);
imagettftext ($image, 25, 0, 20, 23, $color, $dir."monofont.ttf", $_SESSION['rand_code']);

header("Content-type: image/png");
imagepng($image);

?>