<?php
if($gm!="" && $gy!=""){
$equery	= "SELECT * FROM `".TB_PUBLICATIONS."` Where Pub_month='".$gm."' AND Pub_year='".$gy."' AND publish=1";
$eres = mysql_query($equery);
}
else{
$equery	= "SELECT * FROM `".TB_PUBLICATIONS."` Where Pub_month='".$m."' AND Pub_year='".$y."' AND publish=1";
$eres = mysql_query($equery);
}
//while($erow=mysql_fetch_assoc($eres)){
//	echo "hai";
//}
?>      
<marquee direction="up" onMouseOut="this.start();" onMouseOver="this.stop();" height="175" width="214" scrolldelay="300" scrollamount="10">          
<table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" cellpadding="0">
<?php
while($erow=mysql_fetch_assoc($eres)){
	$catidd = $erow['Cat_id'];
	$cequery	= "SELECT Pcat_name FROM `".TB_PUBCAT."` Where Pcat_id='".$catidd."'";
	$ceres = mysql_query($cequery);
	$cerow=mysql_fetch_assoc($ceres);
	//print_r($erow);
	if($erow['Pub_img_thumb_eng']!=""){
?>
<tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
			<b><font face="Verdana" size="1"><?php echo $cerow['Pcat_name']; ?> :: English</font></b></td></tr>
            <tr><td width="100%"><p align="center">
	<a target="_blank" href="<?php echo $erow['Pub_link_eng']; ?>">
	<img border="0" src="uploads/publication_uploads/thumb/<?php echo $erow['Pub_img_thumb_eng']; ?>" width="130" height="171"></a></td></tr><tr><td width="100%"></td></tr>
    <?php
	}
	if($erow['Pub_img_thumb_ara']!=""){
	?>
    <tr><td width="100%"><p align="center" style="margin-top: 10px; margin-bottom: 15px">
			<font face="Verdana" size="1"><b><?php echo $cerow['Pcat_name']; ?> :: Arabic</b></font></td></tr>
            <tr><td width="100%"><p align="center">
	<a target="_blank" href="<?php echo $erow['Pub_link_ara']; ?>">
	<img border="0" src="uploads/publication_uploads/thumb/<?php echo $erow['Pub_img_thumb_ara']; ?>" width="130" height="171"></a></td></tr><tr><td width="100%"></td></tr>
    
<?php }} ?>           
  </table></marquee>               
            