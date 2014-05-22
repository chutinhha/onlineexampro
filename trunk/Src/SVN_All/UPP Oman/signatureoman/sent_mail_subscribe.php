<?php 
session_start();

		include("class.phpmailer.php");
				if(($_POST['captchacode'] != $_SESSION['random_number']) || $_POST['captchacode'] == '')
		{
			echo '<SCRIPT language="JavaScript">window.location="error_sub.shtml";</SCRIPT>';
		}
		else{
		$sendMail = "radhak@umsoman.com";
		$mail = new PHPMailer();
		$mail->IsMail();
		$mail->CharSet="utf-8";
		$mail->AddAddress($sendMail);
	
		$mail->Subject = "Signature Oman Online";
		$mail->IsHTML(true);
		$mail->From = $_REQUEST['email'];
		$mail->FromName = $_REQUEST['name'];
		$Data.='<table width="70%" border="0" align="center" cellpadding="4" cellspacing="0" bordercolor="#111111" bgcolor="#E4E4E4" style="border-collapse: collapse">
          <tr>
            <td width="523" align="center" colspan="5" height="16" class="style4" >
            <p align="left"><strong><font face="Tahoma" style="font-size: 10pt">Please choose 
            a subscription plan</font></strong></td>
          </tr>
          <tr>
            <td width="42" align="center" bgcolor="#FFFFFF" height="24">&nbsp;</td>
            <td width="120" align="center" bgcolor="#FFFFFF" height="24">&nbsp;</td>
            <td width="213" align="center" bgcolor="#FFFFFF" height="24"><b>
            <font face="Tahoma" style="font-size: 10pt">Issues</font></b></td>
            <td width="269" align="center" bgcolor="#FFFFFF" height="24"><b>
            <font face="Tahoma" style="font-size: 10pt">Subscription Amount in RO</font></b></td>
            <td width="121" align="center" bgcolor="#FFFFFF" height="24">&nbsp;</td>
          </tr>
          <tr>
            <td width="42" align="center" bgcolor="#FFFFFF" height="20">
			<font face="Tahoma" size="1"><span style="font-size: 9pt">';
            if($_REQUEST['Region'] == 'R1')
            $r1 = '<input type="radio" value="R1" name="Region" checked readonly>';
            else
            $r1 = '<input type="radio" value="R1" name="Region" readonly>';
    $Data.=$r1.'</span></font></td>
            <td width="120" align="center" bgcolor="#FFFFFF" height="20">
			<font face="Tahoma" style="font-size: 10pt">Signature Oman</font></td>
            <td width="213" align="center" bgcolor="#FFFFFF" height="20">
            <font face="Tahoma" style="font-size: 10pt">12</font></td>
            <td width="269" align="center" bgcolor="#FFFFFF" height="20">
			<font style="font-size: 10pt" face="Tahoma">R.O. 11</font></td>
            <td width="121" align="center" bgcolor="#FFFFFF" height="20">&nbsp;</td>
          </tr>
          <tr>
            <td width="42" align="center" bgcolor="#FFFFFF" style="height: 12px">&nbsp;
            </td>
            <td width="120" align="center" bgcolor="#FFFFFF" style="height: 12px">&nbsp;
            </td>
            <td width="213" align="center" bgcolor="#FFFFFF" style="height: 12px">&nbsp;
            </td>
            <td width="269" align="center" bgcolor="#FFFFFF" style="height: 12px">&nbsp;
            </td>
            <td width="121" align="center" bgcolor="#FFFFFF" style="height: 12px">&nbsp;
            </td>
          </tr>
          <tr>
            <td width="42" align="center" bgcolor="#FFFFFF" style="height: 12px">&nbsp;
            </td>
            <td width="602" align="center" bgcolor="#FFFFFF" style="height: 12px" colspan="3">
            <p align="left"><font face="Tahoma" style="font-size: 10pt">[* For 
			GCC &amp; International subscribers postal charges will be extra]</font></td>
            <td width="121" align="center" bgcolor="#FFFFFF" style="height: 12px">&nbsp;
            </td>
          </tr>
          <tr>
            <td width="42" align="center" bgcolor="#FFFFFF" style="height: 12px">
            <font face="Tahoma" style="font-size: 10pt">&nbsp;</font></td>
            <td width="120" align="center" bgcolor="#FFFFFF" style="height: 12px">
            <font face="Tahoma" style="font-size: 10pt">&nbsp;</font></td>
            <td width="213" align="center" bgcolor="#FFFFFF" style="height: 12px">
            <font face="Tahoma" style="font-size: 10pt">&nbsp;</font></td>
            <td width="269" align="center" bgcolor="#FFFFFF" style="height: 12px">
            <font face="Tahoma" style="font-size: 10pt">&nbsp;</font></td>
            <td width="121" align="center" bgcolor="#FFFFFF" style="height: 12px">
            <font face="Tahoma" style="font-size: 10pt">&nbsp;</font></td>
          </tr>
          <tr>
            <td width="523" align="center" colspan="5" height="16" class="style4" style="background-color: #DCE4E7">
            <p align="left"><strong><font face="Tahoma" style="font-size: 10pt">Please choose 
            a subscription type </font></strong></td>
          </tr>
          <tr>
            <td width="42" align="center" bgcolor="#FFFFFF" height="20">
			<font face="Tahoma" size="1"><span style="font-size: 9pt">';
             if($_REQUEST['Subscribe'] == 'N1')
            $n1 = '<input type="radio" value="N1" name="Subscribe" checked readonly>';
            else
            $n1 = '<input type="radio" value="N1" name="Subscribe" readonly>';
      $Data.=$n1.'</span></font></td>
            <td width="355" align="center" bgcolor="#FFFFFF" colspan="3" height="20">
            <p align="left"><span class="head4">
			<font face="Tahoma">I want a new subscription</font></span></td>
            <td width="121" align="center" bgcolor="#FFFFFF" height="20">&nbsp;</td>
          </tr>
          <tr>
            <td width="42" align="center" bgcolor="#FFFFFF" valign="top" height="34">
			<font face="Tahoma" size="1"><span style="font-size: 9pt">';
             if($_REQUEST['Subscribe'] == 'RN1')
            $rn1 = '<input type="radio" value="RN1" name="Subscribe1" checked readonly>';
            else
            $rn1 = '<input type="radio" value="RN1" name="Subscribe1" readonly>';
      $Data.=$rn1.'</span></font></td>
            <td width="391" align="center" bgcolor="#FFFFFF" colspan="2" valign="top" height="34">
            <p align="left"><span class="head4">
			<font face="Tahoma">I want to renew my subscription</font></span></td>
            <td align="center" bgcolor="#FFFFFF" valign="top" colspan="2" height="34">
            <p align="left"><font face="Tahoma" size="2">
			<span style="font-size: 9pt">Subscription ID - '.$_REQUEST['IfrenewSubID'].'
            </span></font></td>
          </tr>
          <tr>
            <td width="42" align="center" bgcolor="#FFFFFF" height="1">
            <font face="Tahoma" style="font-size: 10pt">&nbsp;</font></td>
            <td width="120" align="center" bgcolor="#FFFFFF" height="1">
            <font face="Tahoma" style="font-size: 10pt">&nbsp;</font></td>
            <td width="213" align="center" bgcolor="#FFFFFF" height="1">
            <font face="Tahoma" style="font-size: 10pt">&nbsp;</font></td>
            <td width="269" align="center" bgcolor="#FFFFFF" height="1">
            <font face="Tahoma" style="font-size: 10pt">&nbsp;</font></td>
            <td width="121" align="center" bgcolor="#FFFFFF" height="1">
            <font face="Tahoma" style="font-size: 10pt">&nbsp;</font></td>
          </tr>
          <tr>
            <td width="525" align="center" colspan="5" height="16" class="style4" style="background-color: #DCE4E7">
            <p align="left"><strong><font face="Tahoma" style="font-size: 10pt">Please fill in 
            your details</font></strong></td>
          </tr>
          <tr>
            <td width="525" height="388" colspan="5" align="center" bgcolor="#ffffff" style="padding:0px;">
                        <table border="0" width="100%" cellspacing="1" cellpadding="5" height="127">
                          <tr>
                            <td width="31%" height="22" align="right" bgcolor="#DCE4E7">
							<font face="Tahoma" style="font-size: 10pt">
                            Name</font></td>
                            <td width="2%" height="22" bgcolor="#DCE4E7">
							<font face="Tahoma" style="font-size: 10pt">&nbsp;&nbsp;</font></td>
                            <td width="67%" height="22" bgcolor="#DCE4E7">
							<font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['realname'].'
                            </span></font></td>
                          </tr>
                          <tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">Designation</font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="26" bgcolor="#DCE4E7"><span class="head4">
							<font size="2" face="Tahoma" >'.$_REQUEST['Designation'].'
             </font></span></td>
                          </tr>
							<tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">Profession </font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="26" bgcolor="#DCE4E7">
              <font face="Tahoma" size="2">'.$_REQUEST['Profession'].'</font></td>
                          </tr>
							<tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">Company name</font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="26" bgcolor="#DCE4E7"><span class="head4">
							<font size="2" face="Tahoma">'.$_REQUEST['companyname'].'
              </font></span></td>
                          </tr>
                          <tr>
                            <td width="31%" height="25" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">Sex</font></td>
                            <td width="2%" height="25" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="25" bgcolor="#DCE4E7">
                            <font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['Sex'].'</span>
                            </font></td>
                          </tr>
                          <tr>
                            <td width="31%" height="33" align="right" bgcolor="#DCE4E7">
							<font face="Tahoma" style="font-size: 10pt">
                            Address</font></td>
                            <td width="2%" height="33" bgcolor="#DCE4E7"></td>
                            <td width="67%" height="33" bgcolor="#DCE4E7">
							<font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['Address'].'</span></font></td>
                          </tr>
                          <tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">Postal Code</font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7"></td>
                            <td width="67%" height="26" bgcolor="#DCE4E7">
							<font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['PC'].'</span></font></td>
                          </tr>
                          <tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">City</font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="26" bgcolor="#DCE4E7">
							<font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['City'].'
                            </span></font></td>
                          </tr>
                          <tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">State</font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="26" bgcolor="#DCE4E7">
							<font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['State'].'
                           </span></font></td>
                          </tr>
                          <tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">Country</font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="26" bgcolor="#DCE4E7">
							<font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['Country'].'
                            </span></font></td>
                          </tr>
                          <tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">Telephone</font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="26" bgcolor="#DCE4E7">
							<font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['Tel'].'
                            </span></font></td>
                          </tr>
							<tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">Fax</font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="26" bgcolor="#DCE4E7">
							<font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['Fax'].'
                           </span></font></td>
                          </tr>
							<tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">GSM</font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="26" bgcolor="#DCE4E7">
							<font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['gsm'].'
                           </span></font></td>
                          </tr>
                          <tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
							<font face="Tahoma" style="font-size: 10pt">
                            Email</font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7"></td>
                            <td width="67%" height="26" bgcolor="#DCE4E7">
							<font face="Tahoma" size="2">
							<span style="font-size: 9pt">'.$_REQUEST['email'].'
                            </span></font></td>
                          </tr>
                          <tr>
                            <td width="31%" height="26" align="right" bgcolor="#DCE4E7">
                            <font face="Tahoma" style="font-size: 10pt">Education </font></td>
                            <td width="2%" height="26" bgcolor="#DCE4E7">&nbsp;</td>
                            <td width="67%" height="26" bgcolor="#DCE4E7">
              <font face="Tahoma" style="font-size: 9pt">'.$_REQUEST['Education'].'
              </font></td>
                          </tr>
                         
</table>
                      </td>
          </tr>
        </table>';
		$mail->Body = $Data;
		$mail->Send();
	echo '<SCRIPT language="JavaScript">window.location="thankyou.shtml";</SCRIPT>';
		}
?>