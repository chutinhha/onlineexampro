<?php

session_start();
include("class.phpmailer.php");
if (($_POST['code'] != $_SESSION['rand_code']) || $_POST['code'] == '') {
    $_SESSION['form_val'] = $_POST;
    $_SESSION['form_val']['error'] = '<div class="ermsg">Please Enter correct Security code</div>';
    echo '<script>window.location.href="register_now.php?er=s";</script>';
} else {
    $mail = new PHPMailer();
    $mail->IsMail();
    $mail->CharSet = "utf-8";
    $mail->AddAddress("fidha@umsoman.com");
    $mail->AddAddress("ramesh@umsoman.com");
    $mail->AddAddress("Omangreenawards2014@gmail.com");
    //$mail->AddAddress("mahendran@72dpioman.com");
    //$mail->AddAddress("support@72dpioman.com");
    $mail->Subject = "Omangreenawards - Nomination Form - For Organisation";
    $mail->IsHTML(true);
    $mail->From = $_REQUEST['email'];
    $mail->FromName = $_REQUEST['email'];
    $attachename = $_FILES["attache"]["tmp_name"];
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
												' . $_REQUEST['Organisation_Name'] . '</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Organisation Type (<em> Business/NGO/Gov</em>)  </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												' . $_REQUEST['Organisation_Type'] . '</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Website </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												' . $_REQUEST['Website'] . '</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493">
												<font face="Verdana" style="font-size: 8pt">
												Address</font></td>
												<td width="493">
												<font style="font-size: 8pt" face="Verdana">
												' . $_REQUEST['Address'] . '</font></td>
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
												' . $_REQUEST['Title'] . '</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Name </font></td>
												<td width="493" height="22">
												<font style="font-size: 8pt" face="Verdana">
												' . $_REQUEST['realname'] . '</font></td>
  </tr>
											<tr align="left" valign="top">
												<td width="493" height="22">
												<font face="Verdana" style="font-size: 8pt">
												Position/Designation</font></td>
												<td width=