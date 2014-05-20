<?
session_start();
include('../oerDb.php');
$name=addslashes($_POST['myusername']);
$pass=md5(addslashes($_POST['mypassword']));
$gvb="select id from admin where username='$name'and password='$pass'";
$result=mysql_query($gvb);
$rows=mysql_num_rows($result);
if($rows>0)
{
	$_SESSION['name'] = $name;
	$_SESSION['pass'] = $pass;
	Header("location:home.php");
}
else
{
header("location:index.php?aa=a&name=$name");
}
?>