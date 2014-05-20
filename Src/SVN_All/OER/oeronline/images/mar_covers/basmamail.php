<?php 

	$gender=$_POST['Gender'];
	$realname=$_POST['realname'];
	$idnumber=$_POST['IDnumber'];
	$gsm=$_POST['GSM'];
	$pbox=$_POST['pobox'];
	$pc=$_POST['PC'];
	$area=$_POST['Area'];
	$email=$_POST['email'];
	$to=$_POST['recipients'];
	$url=$_POST['good_url'];
		
	$subject = "Apply Basma Card";
	$headers = "From: $email";
	   $MsgBody .= "=============================================\n";
	   $MsgBody	.= "\n";
	   $MsgBody	.= "Gender		  : $gender\n";
	   $MsgBody .= "Name		  : $realname\n"; 
	   $MsgBody	.= "ID Number	: $idnumber\n";
	   $MsgBody .= "GSM		  : $gsm\n"; 
	   $MsgBody	.= "PO Box		 : $pbox\n";
	   $MsgBody .= "PC		    : $pc\n"; 
	   $MsgBody	.= "area		    : $area\n";
	   $MsgBody	.= "Email 		   : $email\n";
	   $MsgBody	.= "\n";
	   $MsgBody .= "=============================================\n";
	
	$sent = mail($to, $subject, $MsgBody, $headers) ;
	if($sent)
	{
	header("Location:$url"); 
	//header("Location:http://www.basmaoman.com/apply_basma_thankyou.htm");  
	}
	else
	{print "We encountered an error sending your details"; }
	

?>