<center>
<?
$fcontents = join ('', file ('/var/www/vhosts/oeronline.com/httpdocs/inc/banner_ads.txt'));
$s_con = split("~",$fcontents);
$banner_no = rand(0,(count($s_con)-1));
echo $s_con[$banner_no];
?>
</center>