<?php
session_start();
include("db.php");
$myusername=$_POST['txtuname'];
$mypassword=$_POST['txtpwd'];
$sql="SELECT * FROM tblogin WHERE uname='$myusername' and pwd='$mypassword'";
$result=mysql_query($sql) or die(mysql_error());
$resultRow = mysql_fetch_array($result);
$count=mysql_num_rows($result);
if($count >= 1)
{
	if($resultRow['permission']==2){
	$_SESSION['id'] = $resultRow['permission'];
	header("location:userform.php");
	}
	else if($resultRow['permission']==1){
	$_SESSION['id'] = $resultRow['permission'];
	header("location:listadmin.php");
	}
}
else
{
header("location:login.php?flag=0");
}
?>
