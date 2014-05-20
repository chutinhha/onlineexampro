<?php 
include("class.phpmailer.php");
//print_r($_POST);
//exit;
$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("fidha@umsoman.com,dossieroman@gmail.com");
		$mail->Subject = "BEST CONSTRUCTION CONTRACTOR";
		$mail->IsHTML(true);
		$mail->From = $_REQUEST['email'];
		$mail->FromName = $_REQUEST['name'];
		
		$attachename =$_FILES["attachment"]["tmp_name"];
		$atname = $_FILES["attachment"]["name"];
		$mail->AddAttachment($attachename, $atname);

		$Data.="<table width='100%' border='0' cellpadding='4'>
  <tr>
    <td width='30%'>Organization Name</td>
    <td width='2%'>:</td>
    <td width='66%'>".$_REQUEST['orgname']."</td>
  </tr>
  <tr>
    <td>Website Address</td>
    <td>:</td>
    <td>".$_REQUEST['url']."</td>
  </tr>
  <tr>
    <td>Corporate Address</td>
    <td>:</td>
    <td>".$_REQUEST['C_A']."</td>
  </tr>
  <tr>
    <td>Person's Name</td>
    <td>:</td>
    <td>".$_REQUEST['name']."</td>
  </tr>
  <tr>
    <td>Position/Designation</td>
    <td>:</td>
    <td>".$_REQUEST['Designation']."</td>
  </tr>
  <tr>
    <td>Email Address</td>
    <td>:</td>
    <td>".$_REQUEST['email']."</td>
  </tr>
  <tr>
    <td>Mobile</td>
    <td>:</td>
    <td>".$_REQUEST['mobile']."</td>
  </tr>
  <tr>
    <td>Telephone</td>
    <td>:</td>
    <td>".$_REQUEST['phone']."</td>
  </tr>
  <tr>
    <td>Which have been your most outstanding projects in the last two years?</td>
    <td>:</td>
    <td>".$_REQUEST['outstanding_projects']."</td>
  </tr>
  <tr>
    <td>As a construction contractor, what have been your key contributions in executing them?</td>
    <td>:</td>
    <td>".$_REQUEST['key_contributions']."</td>
  </tr>
  <tr>
    <td>What are your key competencies that stand you apart from the competition? </td>
    <td>:</td>
    <td>".$_REQUEST['key_competencies']."</td>
  </tr>
  <tr>
    <td>Tell us about your main achievements in<br /> training your staff and developing Omani talent?</td>
    <td>:</td>
    <td>".$_REQUEST['main_achievements']."</td>
  </tr>
  <tr>
    <td>What are your major accomplishments in adopting and following best HSE practices? </td>
    <td>:</td>
    <td>".$_REQUEST['major_accomplishment']."</td>
  </tr>
  <tr>
    <td>What are the key awards or certifications<br /> you have received from your clients or third party bodies?</td>
    <td>:</td>
    <td>".$_REQUEST['key_awards']."</td>
  </tr>

</table>
";

		$mail->Body = $Data;
		$mail->Send();
		echo '<script>window.location.href="http://www.dossieroman.com/thnks.html";</script>';
?>
