<?php
session_start();
include("class.phpmailer.php");
if(($_POST['captchacode'] != $_SESSION['random_number']) || $_POST['captchacode'] == '')
{
			$_SESSION['form_val'] = $_POST;
			$_SESSION['form_val']['error']= '<div class="eMsg">Enter correct code</div>';
			echo '<script>window.location.href="jo_nominationform_arabic.php?er=s";</script>';
}
else{
		$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("fatma@umsoman.com, sushmita.s@umsoman.com");
		//$mail->AddAddress("nadia@umsoman.com");
	
		$mail->Subject = "Nomination Form";
		$mail->IsHTML(true);
		$mail->From = $_REQUEST['mail'];
		$mail->FromName = $_REQUEST['name'];
	
		$Data.='<table width="500" border="0" cellpadding="8">
  <tr>
    <td width="223" bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">الاسم الاول</font></td>
    <td width="239" bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['name'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana"> الاسم الاخير</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['surname'].'</font></td>
  </tr>
   <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">الهاتف المحمول</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['mobile'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">الخط الارضي</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['landLine'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">البريد الالكتروني</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['mail'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">اسم مقدم الطلب</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['nominated'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">الهاتف المحمول</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['nomMob'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">البريد الالكتروني</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['nomMail'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">وصف للإنجاز</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['descrOfachv'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">التأثير على المجتمع</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['affect'].'</font></td>
  </tr>
  <tr>
    <td bgcolor="#f2efef"><font style="font-size: 8pt" color="#4D555B" face="Verdana">هل حصل الإنجاز على تقدير محلي/ عالمي. تفاصيل إضافية عن الإنجاز وصاحبه</font></td>
    <td bgcolor="#ebe9e8"><font style="font-size: 8pt" color="#212020" face="Verdana">'.$_REQUEST['awards'].'</font></td>
  </tr>
</table>
';

		$mail->Body = $Data;
		$mail->Send();
		$_SESSION['form_val'] = array();
			$_SESSION['form_val']['sus'] = '<div class="sMsg">Successfully Sent..</div>';
		echo '<script>window.location.href="jo_nominationform_arabic.php?sus=s";</script>';
	}
?>