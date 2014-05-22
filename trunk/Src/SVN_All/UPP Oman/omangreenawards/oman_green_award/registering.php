<?php
include("db.php");
$sql="insert into userlogin
values('','$_POST[txtuname]','$_POST[txtpwd]','$_POST[txtemail]','$_POST[txtgsm]','$_POST[txtpost]',now())";

if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
 
mysql_close($con);
header("Location: login.php");
?>
