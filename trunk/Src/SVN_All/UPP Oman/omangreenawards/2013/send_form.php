<?php
session_start();
include("class.phpmailer.php");
if(($_POST['code'] != $_SESSION['rand_code']) || $_POST['code'] == '')
{
			$_SESSION['form_val'] = $_POST;
			$_SESSION['form_val']['error']= '<div class="ermsg">Please Enter correct Security code</div>';
			echo '<script>window.location.href="register_now.php?er=s";</script>';
}
else{
		$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress("haider@umsoman.com");
	
		$mail->Subject = "Omangreenawards - Nomination Form - For Organisation";
		$mail->IsHTML(true);
		$mail->From = $_REQUEST['email'];
		$mail->FromName = $_REQUEST['email'];
		$attachename =$_FILES["attache"]["tmp_name"];
		$atname = $_FILES["attache"]["name"];
		$mail->AddAttachment($attachename, $atname); 
	
		$Data.='<table border="0" cellpadding="4" style="border-collapse: collapse"  width="500">
											<tr>
												<td colspan="2" height="13" bgcolor="#EBEBEB" width="493">
												<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber17">
                                                  <tr>
                                                    <td width="48%">
												<font face="Verdana" style="font-size: 8pt; ">
												Details of organisation&nbsp;&nbsp; </font>
                                                    </td>
                                                  </tr>
                                                </table>
                                                </td>
											</tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Organisation Name</font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Organisation_Name'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Organisation Type (<em> Business/NGO/Gov</em>)  </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Organisation_Type'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Website </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Website'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
												Address</font></td>
												<td width="493">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Address'].'</font></td>
  </tr>
											<tr>
												<td width="493" colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Contact details</font></td>
											</tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Title</font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Title'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Name </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['realname'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Position/Designation</font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Position'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Email address </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['email'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Telephone number </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Telephone'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Optional Contact: Name & Number</font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['contact'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
												Award Category</font></td>
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
												'.$_REQUEST['Select_Award_Category'].'</font>
												</td>

  </tr>
											<tr>
												<td colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Project Details</font></td>
											</tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Project Title</font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Project_Title'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Location of project </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Location_of_project'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
												One line description of project
												</font></td>
												<td width="493">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Description_of_project'].'</font></td>
  </tr>
											<tr>
												<td colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Effectiveness</font></td>
											</tr>
											<tr align="left" valign="top">
												<td width="493" height="26">
												<font face="Verdana" style="font-size: 8pt">
                                                What were your goals?</font></td>
												<td width="493" height="26">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['goals'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
                                                How have you measured your success? </font>
												</td>
												<td width="493">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['measured_your_success'].'</font></td>
  </tr>
											<tr>
												<td colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Innovation & Creativity</font></td>
											</tr>
											<tr align="left" valign="top">
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
                                                How innovative were the methods, strategies or ideas applied?</font></td>
												<td width="493">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['ideas_applied'].'</font></td>
  </tr>
											<tr>
												<td colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Impact</font></td>
											</tr>
											<tr align="left" valign="top">
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
                                                How has the project/initiative/work motivated others to contribute to a greener Oman </font></td>
												<td width="493">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['contribute_greener_oman'].'</font></td>
  </tr>
											<tr>
												<td colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Originality and Leadership</font></td>
											</tr>
											<tr align="left" valign="top">
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
                                                How has the nominee demonstrated vision, foresight and persistence? </font></td>
												<td width="493">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['persistence'].'</font></td>
  </tr>
											<tr>
												<td colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Continuity & Sustainability</font></td>
											</tr>
											<tr align="left" valign="top">
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
                                                How sustainable is the initiative?</font></td>
												<td width="493">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['carried'].'</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
                                                Effectiveness of project in the long term</font></td>
												<td width="493">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['long_term'].'</font></td>
  </tr>
											<tr>
												<td width="493" colspan="2" bgcolor="#EBEBEB" height="13">
												<font face="Verdana" style="font-size: 8pt; ">
												Reference</font></td>
											</tr>
											<tr>
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Title</font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Referee1_Title'].'</font></td>
											</tr>
											<tr>
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Name </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Referee1_Name'].'</font></td>
											</tr>
											<tr>
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Organisation Name</font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Referee1_Organisation_Name'].'</font></td>
											</tr>
											<tr>
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Position/Designation</font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Referee1_Position'].'</font></td>
											</tr>
											<tr>
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Email address </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Referee1_email'].'</font></td>
											</tr>
											<tr>
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Telephone number </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												'.$_REQUEST['Referee1_Telephone'].'</font></td>
											</tr>
											
										</table>
								</td>
							</tr>
						</table>';

		$mail->Body = $Data;
		$mail->Send();
		$_SESSION['form_val'] = array();
			$_SESSION['form_val']['sus'] = '<div class="susmsg">Successfully Sent..</div>';
		echo '<script>window.location.href="register_now.php?sus=s";</script>';
	}
?>