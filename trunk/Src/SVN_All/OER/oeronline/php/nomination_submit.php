<?php
session_start();
include("class.phpmailer.php");
if(($_POST['captchacode'] != $_SESSION['random_number']) || $_POST['captchacode'] == '')
{
			$_SESSION['form_val'] = $_POST;
			$_SESSION['form_val']['error']= '<div class="eMsg">Enter correct code</div>';
			echo '<script>window.location.href="NominationForm.php?er=s";</script>';
}
else{
		$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("info@jseoman.com");
		//$mail->AddAddress("nadia@umsoman.com");
	
		$mail->Subject = "Jawad Sultan Group Nomination Form";
		$mail->IsHTML(true);
		$mail->From = $_REQUEST['mail'];
		$mail->FromName = $_REQUEST['name'];
	
		$Data.='<table width="500" border="0" cellpadding="8">
  <tr>
    <td width="223" bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">Name</font></td>
    <td width="239" bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['name'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">SurName</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['surname'].'</font></td>
  </tr>
   <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">Mobile</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['mobile'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">Land Line</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['landLine'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">Email Id</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['mail'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">Nominated By</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['nominated'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">Mobile</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['nomMob'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">E-mail</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['nomMail'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">Description of Achievement</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['descrOfachv'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">Impact - How did it affect your Colleagues/ Community</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['affect'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">Has the achievement won accolades or awards/ been recognized internationally/ others</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['awards'].'</font></td>
  </tr>
</table>
';

		$mail->Body = $Data;
		$mail->Send();
		$_SESSION['form_val'] = array();
			$_SESSION['form_val']['sus'] = '<div class="sMsg">Successfully Sent..</div>';
		echo '<script>window.location.href="nomination.php?sus=s";</script>';
	}
?>