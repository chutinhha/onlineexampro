<?php
session_start();
include("class.phpmailer.php");
/*if(($_POST['code'] != $_SESSION['rand_code']) || $_POST['code'] == '')
{
			$_SESSION['form_val'] = $_POST;
			$_SESSION['form_val']['error']= '<div class="ermsg">Please Enter correct Security code</div>';
			echo '<script>window.location.href="register_now.php?er=s";</script>';
}
else{*/
		$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("fidha@umsoman.com");
		//$mail->AddAddress("tqwebsupport@gmail.com");
	
		$mail->Subject = "Omangreenawards - Nomination Form - For Individuals";
		$mail->IsHTML(true);
		$mail->From = $_REQUEST['email'];
		$mail->FromName = $_REQUEST['email'];
		//$attachename =$_FILES["attache"]["tmp_name"];
		//$atname = $_FILES["attache"]["name"];
		//$mail->AddAttachment($attachename, $atname); 
	
		$Data.='<table border="0" cellpadding="4" style="border-collapse: collapse" height="1322">
											<tr>
												<td width="493" colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Contact Detail</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Title</font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Title'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Name </font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['realname'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												ID number </font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['ID_number'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Position/Designation</font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Position'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Email address </font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['email'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Telephone number </font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Telephone'].'
												</font></td>
											</tr>
											<tr>
												<td colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Project Details</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Project Title</font></td>
												<td width="332" height="22" valign="top">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Project_Title'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Location of project </font></td>
												<td width="332" height="22" valign="top">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Location_of_project'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" valign="top" height="68">
												<font face="Verdana" style="font-size: 8pt">
												One line description of project
												</font></td>
												<td width="332" height="68" valign="top">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Description_of_project'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" valign="top" height="39">
												<font face="Verdana" style="font-size: 8pt">
												Award Category</font></td>
												<td width="332" height="39" valign="top">
												<font face="Verdana" style="font-size: 8pt">'.$_REQUEST['Select_Award_Category'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="26" valign="top">
												<font face="Verdana" style="font-size: 8pt">
                                                Contact for CSR / Community 
                                                Activities </font></td>
												<td width="332" valign="top" height="26">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Contact_for_CSR'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="41">
												<font face="Verdana" style="font-size: 8pt">
                                                Commencement of Project </font></td>
												<td width="332" height="41" valign="top">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Commencement_project'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" valign="top" height="116">
												<font face="Verdana" style="font-size: 8pt">
                                                Objectives of Project </font>
												</td>
												<td width="332" height="116" valign="top">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Objectives_green_project'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" valign="top" height="116">
												<font face="Verdana" style="font-size: 8pt">
                                                Environmental Achievements</font></td>
												<td width="332" height="116" valign="top">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Environmental_achievements'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" valign="top" height="116">
												<font face="Verdana" style="font-size: 8pt">
                                                Hopes on achievement in the long 
                                                term </font></td>
												<td width="332" height="116" valign="top">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Achieve_longterm'].'
												</font></td>
											</tr>
											<tr>
												<td width="493" colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Referee Details </font></td>
											</tr>
											<tr>
												<td width="172" height="19">
												<font face="Verdana" style="font-size: 8pt; ">
												Referee 1</font></td>
												<td width="332" height="19">&nbsp;</td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Title</font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee1_Title'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Name </font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee1_Name'].'</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Organisation Name</font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee1_Organisation_Name'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Position/Designation</font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee1_Position'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Email address </font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee1_email'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Telephone number </font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee1_Telephone'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="19">&nbsp;</td>
												<td width="332" height="19">&nbsp;</td>
											</tr>
											<tr>
												<td width="172" height="19">
												<font style="font-size: 8pt" face="Verdana">Referee
												<span style="font-size:8pt">
												<font style="font-size: 8pt">
												2</font></span></font></td>
												<td width="332" height="19">&nbsp;</td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Title</font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee2_Title'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Name </font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee2_Name'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Organisation Name</font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee2_Organisation_Name'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Position/Designation</font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee2_Position'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Email address </font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee2_email'].'
												</font></td>
											</tr>
											<tr>
												<td width="172" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Telephone number </font></td>
												<td width="332" height="22">
												<font style="font-size: 8pt" face="Verdana">'.$_REQUEST['Referee2_Telephone'].'
												</font></td>
											</tr>
										</table>';

		$mail->Body = $Data;
		$mail->Send();
		//$_SESSION['form_val'] = array();
			//$_SESSION['form_val']['sus'] = '<div class="susmsg">Successfully Sent..</div>';
		echo '<script>window.location.href="http://www.omangreenawards.com/register_now_ty.html";</script>';
	//}
?>