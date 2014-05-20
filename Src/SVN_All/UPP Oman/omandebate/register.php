<?php
include("class.phpmailer.php");
include("oerDb.php");
$res = mysql_query("SELECT * FROM code WHERE code='".$_REQUEST['code']."'");
if(mysql_num_rows($res) > 0)
{
	$res1 = mysql_query("SELECT * FROM register WHERE code='".$_REQUEST['code']."'");
	if(mysql_num_rows($res1) > 0)
	{
		
				 header("Location: register_er.php?s=as");
}
else
{

$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("kc.kc.pradeep@gmail.com");
	
		$mail->Subject = $_REQUEST['subject'];
		$mail->IsHTML(false);
		$mail->From = $_REQUEST['email'];
		$mail->FromName = $_REQUEST['name'];
	
		$Data.="Name : ".$_REQUEST['name']."\r\n\n";
		$Data.="Contact : ".$_REQUEST['contact']."\r\n\n";
		$Data.="Email : ".$_REQUEST['email']."\r\n\n";
		$Data.="Designation : ".$_REQUEST['designation']."\r\n\n";
		$Data.="Company : ".$_REQUEST['company']."\r\n\n";
		$Data.="Confirming Presence : ".$_REQUEST['presence']."\r\n\n";


		$mail->Body = $Data;
		$mail->Send();

		mysql_query("INSERT INTO register VALUES('".addslashes($_REQUEST['code'])."','".addslashes($_REQUEST['name'])."','".addslashes($_REQUEST['contact'])."','".addslashes($_REQUEST['email'])."',
		'".addslashes($_REQUEST['designation'])."','".addslashes($_REQUEST['company'])."','".addslashes($_REQUEST['presence'])."',now())") or die(mysql_error());
 		 header("Location: register_er.php?s=s");

}

}
else
{
	 		 header("Location: register_er.php?s=n");
}
?>