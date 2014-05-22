<?php 
include("class.phpmailer.php");
$toMail ="laurelledesa@gmail.com,laurelle@umsoman.com";
$mail = new PHPMailer();
$mail->AddAttachment($_FILES["attachment1"]["tmp_name"], $_FILES["attachment1"]["name"]);
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress($toMail);
	
		$mail->Subject = "Nomaination Details";
		$mail->IsHTML(true);
		$mail->From = 'Al_Mara_Online';
		$mail->FromName ='Al_Mara_Online';
$message ='Nomaination Details';

$mail->Body = $message;
	if(!$mail->Send())
	{
		header("Location:thank_you.htm");
		
	}
	else
	{
		header("Location:index.htm");
	}
?>


