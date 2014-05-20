<?php 
include("class.phpmailer.php");
//print_r($_POST);
//exit;
$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("fidha@umsoman.com,dossieroman@gmail.com");
		$mail->Subject = "BEST ARCHITECT AWARD";
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
    <td>Main Architect&#8217;s Name</td>
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
    <td>Project Title </td>
    <td>:</td>
    <td>".$_REQUEST['project']."</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>:</td>
    <td>".$_REQUEST['Location']."</td>
  </tr>
  <tr>
    <td>Brief description of project</td>
    <td>:</td>
    <td>".$_REQUEST['brief']."</td>
  </tr>
  <tr>
    <td>Project owner&#8217;s name</td>
    <td>:</td>
    <td>".$_REQUEST['project_owner']."</td>
  </tr>
  <tr>
    <td>What was the brief to you for creating the architecture for the project?</td>
    <td>:</td>
    <td>".$_REQUEST['architecture_brief']."</td>
  </tr>
  <tr>
    <td> What are the most outstanding and innovative features <br />of the project from architecture point of view?</td>
    <td>:</td>
    <td>".$_REQUEST['innovative_features']."</td>
  </tr>
  <tr>
    <td>Did you use any new materials in the project? If yes, share their brief details.</td>
    <td>:</td>
    <td>".$_REQUEST['new_materials']."</td>
  </tr>
  <tr>
    <td>What makes the project friendly to the environment and appealing to the Omani society?</td>
    <td>:</td>
    <td>".$_REQUEST['project_friendly']."</td>
  </tr>
  <tr>
    <td>What are the key awards or certifications you have received <br />from your clients or third party bodies for the project? </td>
    <td>:</td>
    <td>".$_REQUEST['key_awards']."</td>
  </tr>

</table>
";

		$mail->Body = $Data;
		$mail->Send();
		echo '<script>window.location.href="http://www.dossieroman.com/thnks.html";</script>';
?>
