<?php 
include("class.phpmailer.php");
//print_r($_POST);
//exit;
$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("fidha@umsoman.com,dossieroman@gmail.com");
		$mail->Subject = "BEST PROJECT DESIGN";
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
    <td width='30%'>Organization Type</td>
    <td width='2%'>:</td>
    <td width='66%'>".$_REQUEST['dropdown']."</td>
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
    <td>Project Title </td>
    <td>:</td>
    <td>".$_REQUEST['project']."</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>:</td>
    <td>".$_REQUEST['location']."</td>
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
    <td>Project&#8217;s design contractor name</td>
    <td>:</td>
    <td>".$_REQUEST['design_contractor_owner']."</td>
  </tr>
  <tr>
    <td>What were the project&#8217;s objectives?</td>
    <td>:</td>
    <td>".$_REQUEST['project_objective']."</td>
  </tr>
  <tr>
    <td>What are the main design features of the project?</td>
    <td>:</td>
    <td>".$_REQUEST['main_design_feature']."</td>
  </tr>
  <tr>
    <td>Share details of the new technologies used in the project   </td>
    <td>:</td>
    <td>".$_REQUEST['new_technologies']."</td>
  </tr>
  <tr>
    <td>What makes the project sustainable and environment friendly?    </td>
    <td>:</td>
    <td>".$_REQUEST['environment_friendly']."</td>
  </tr>

</table>
";

		$mail->Body = $Data;
		$mail->Send();
		echo '<script>window.location.href="http://www.dossieroman.com/thnks.html";</script>';
?>
