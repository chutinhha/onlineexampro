<?php 
session_start();
$error_array= array();

		include("class.phpmailer.php");
		
		if($_REQUEST['realname'] == '')
		{array_push($error_array, "Name");}
		if($_REQUEST['email'] =='')
		{array_push($error_array, "Email");}
		if(($_POST['captchacode'] != $_SESSION['random_number']) || $_POST['captchacode'] == '')
		{
			array_push($error_array, "Security Code");
			
		}
		//print_r($error_array);
		if(empty($error_array)){
		$sendMail = "radhak@umsoman.com";
		$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress($sendMail);
	
		$mail->Subject = "Signature Oman";
		$mail->IsHTML(true);
		$mail->From = $_REQUEST['email'];
		$mail->FromName = $_REQUEST['name'];
		$Data.='<table width="56%" border="0" cellspacing="1" cellpadding="7" >
  				<tr bgcolor="#CCCCCC"> 
  					<td width="35%" align="right">Name </td>
    				<td width="65%">  '.$_REQUEST['realname'].'</td>
  				</tr>
    			<tr bgcolor="#e1dfdf"> 
  					<td align="right">Sex </td>
    				<td>  '.$_REQUEST['Sex'].'</td>
  				</tr>
  				<tr bgcolor="#CCCCCC"> 
 					<td align="right">Designation </td>
    				<td>  '.$_REQUEST['Designation'].'</td>
  				</tr>
 				 <tr bgcolor="#e1dfdf"> 
  						<td align="right">Company Name </td>
    					<td>  '.$_REQUEST['companyname'].'</td>
					  </tr>
					  <tr bgcolor="#CCCCCC"> 
					  <td align="right">Email  </td>
						<td>  '.$_REQUEST['email'].'</td>
					  </tr>
					  <tr bgcolor="#e1dfdf"> 
					  <td align="right">Mobile No  </td>
						<td>  '.$_REQUEST['Tel'].'</td>
					  </tr>
					</table>';
		$mail->Body = $Data;
		$mail->Send();
	echo '<SCRIPT language="JavaScript">window.location="thankyou.shtml";</SCRIPT>';
		}
				else
		{
			$_SESSION['err'] = $error_array;
		echo '<SCRIPT language="JavaScript">window.location="error_adv.php";</SCRIPT>';
		}
?>
?>