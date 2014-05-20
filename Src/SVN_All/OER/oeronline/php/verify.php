<?session_start();?>
<?php
	
	//$db=mysql_connect("localhost","root");
	//mysql_select_db("oer",$db);
	
	$db=mysql_connect("localhost","oer","rtfGREsd");
	mysql_select_db("oeronline_com",$db);

	
	$sql="select * from OER where id=lower('".$_POST['f_id']."') and pwd=lower('".$_POST['f_pwd']."')";
	
	$result=mysql_query($sql);
	if($myrow=mysql_fetch_array($result))
	{
	
		session_register("id");
		$HTTP_SESSION_VARS["id"]=$_POST['f_id'];
		header("Location: /index.php"); 
	}
	else
	{
		header("Location: /inc/error.php"); 

	}


?>