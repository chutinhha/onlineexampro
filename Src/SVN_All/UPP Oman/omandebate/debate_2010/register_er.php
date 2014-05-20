<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>OER Debate</title>


<!--form  fields validation added-->
<!--#start-->

<SCRIPT language=JavaScript>
function checkCheckBox(f)
{
		
	if (f.name.value == "") 
	{
		alert("Please fill in your Name.")
		f.name.focus()
		return false
	}
	
	if (f.contact.value == "") 
	{
		alert("Please fill in your Contact No.")
		f.contact.focus()
		return false
	}
	
	var valid = " ()+0123456789"
	var ok = "yes";
	var temp;
	if(f.contact.value.length==0)
	ok="no";

	for (var i=0; i<f.contact.value.length; i++) 
	{
		temp = "" + f.contact.value.substring(i, i+1);
		if (valid.indexOf(temp) == "-1" ) 
		ok = "no";
	}

	if (ok == "no") 
	{
		
		alert("Please enter a Valid Telephone Number.  Eg: + (968) 9898900 " );
		f.contact.focus();
		return false;
	}
	
	if (f.email.value == "") 
	{
		alert("Please fill in your Email.")
		f.email.focus()
		return false
	}
	
	var str=document.formname.email.value;
		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID");
		   document.formname.email.focus();
		   return false;
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID");
		   document.formname.email.focus();
		   return false;
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID");
		   document.formname.email.focus();
		    return false;
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID");
		   document.formname.email.focus();
		    return false;
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID");
		   document.formname.email.focus();
		    return false;
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		   alert("Invalid E-mail ID");
		   document.formname.email.focus();
		    return false;
		 }
		
		 if (str.indexOf(" ")!=-1){
		   alert("Invalid E-mail ID");
		   document.formname.email.focus();
		    return false;
		 }
		 	
	

 		 return true;
}



</SCRIPT>



<!--#end-->



<style type="text/css">
.style1 {
	text-align: center;
}
</style>
</head>

<body bgcolor="#889198">

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="993" bgcolor="#FFFFFF">
		<tr>
			<td valign="top">
			<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
				<tr>
					<td valign="top" width="287">
					<img border="0" src="images/oerdebate_logo.jpg" width="287" height="314"></td>
					<td valign="top">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
						<tr>
							<td valign="top">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
								<tr>
									<td>
									<p align="right"></td>
									<td width="25">&nbsp;</td>
								</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td valign="top">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
								<tr>
									<td width="9%">&nbsp;</td>
									<td>
									<font face="Verdana" size="5" color="#FF0000">
									Register</font></td>
									<td width="9%">&nbsp;</td>
								</tr>
								<tr>
									<td width="9%">&nbsp;</td>
									<td>&nbsp;</td>
									<td width="9%">&nbsp;</td>
								</tr>
								<tr>
									<td width="9%">&nbsp;</td>
									<td>&nbsp;</td>
									<td width="9%">&nbsp;</td>
								</tr>
								<tr>
									<td width="9%">&nbsp;</td>
									<td><?php if($_REQUEST['s']=='as')
										echo '<p style="color:red">You have already submitted the details</p>';
										if($_REQUEST['s']=='s')
										echo '<p style="color:green">Successfully submited the details</p>';
										if($_REQUEST['s']=='n')
										echo '<p style="color:red">Code does not exists </p>';
									?>
									</td>
									<td width="9%">&nbsp;</td>
								</tr>
								<tr>
									<td width="9%">&nbsp;</td>
									<td width="82%" valign="top">
									<div align="center">
									
									<form name="formname" method="post" action="register.php" onSubmit="return checkCheckBox(this)">                                 
									<input type="hidden" name="env_report" value="REMOTE_HOST,REMOTE_ADDR,HTTP_USER_AGENT,AUTH_TYPE,REMOTE_USER">
									<input type="hidden" name="recipients" value="jinuXDJRumsoman.com">
									<input type="hidden" name="good_url" value="http://www.oerdebate.com/thankyou.html">
									<input type="hidden" name="subject" value="Oerdebate - Register">

									
									
										<div align="left">

									
									
										<table border="0" cellpadding="0" style="border-collapse: collapse" width="57%" height="192">
										<tr>
												<td valign="top" width="40%" height="30">
												<p style="line-height: 20px">
												<font style="font-size: 8pt" face="Verdana" color="#363636">
												Enter your code </font></td>
												<td valign="top" height="30" width="41%" colspan="2">
												<p style="line-height: 20px"> 
                        <input name="code" type="text" size="24" maxlength="25" ></td>
											</tr>
											<tr>
												<td valign="top" width="40%" height="30">
												<p style="line-height: 20px">
												<font style="font-size: 8pt" face="Verdana" color="#363636">
												Name *</font></td>
												<td valign="top" height="30" width="41%" colspan="2">
												<p style="line-height: 20px"> 
                        <input name="name" type="text" size="24" maxlength="25" ></td>
											</tr>
											<tr>
												<td valign="top" width="40%" height="30">
												<p style="line-height: 20px">
												<font face="Verdana" style="font-size: 8pt" color="#363636">
												GSM *</font></td>
												<td valign="top" height="30" width="41%" colspan="2">
												<p style="line-height: 20px"> 
                        <input name="contact" type="text" size="24" maxlength="14" ></td>
											</tr>
											<tr>
												<td valign="top" width="40%" height="30">
												<p style="line-height: 20px">
												<font face="Verdana" style="font-size: 8pt" color="#363636">
												Email *</font></td>
												<td valign="top" height="30" width="41%" colspan="2">
												<p style="line-height: 20px"> 
                        <input name="email" type="text" size="24" maxlength="35" ></td>
											</tr>
											<tr>
												<td valign="top" width="40%" height="30">
												<p style="line-height: 20px">
												<font face="Verdana" style="font-size: 8pt" color="#363636">
												Designation </font></td>
												<td valign="top" height="30" width="41%" colspan="2">
												<p style="line-height: 20px"> 
                        <input name="designation" type="text" size="24" maxlength="35" ></td>
											</tr>
											<tr>
												<td valign="top" width="40%" height="30">
												<p style="line-height: 20px">
												<font face="Verdana" style="font-size: 8pt" color="#363636">
												Company </font></td>
												<td valign="top" height="30" width="41%" colspan="2">
												<p style="line-height: 20px"> 
                        <input name="company" type="text" size="24" maxlength="35" ></td>
											</tr>
											<tr>
												<td valign="top" width="40%" height="30">
												<p style="line-height: 20px">
												<font face="Verdana" style="font-size: 8pt" color="#363636">
												Confirming Presence *</font></td>
												<td valign="top" height="30" width="15%">
												<p style="line-height: 20px">
												<font face="Verdana" style="font-size: 8pt">
												<input type="radio" value="yes" name="presence" checked> 
                                                Yes</font></td>
												<td valign="top" height="30" width="22%">
												<font face="Verdana" style="font-size: 8pt">
												<input type="radio" value="no" name="presence"> 
                                                No</font></td>
											</tr>
											<tr>
												<td width="90%" height="41" colspan="3">
												<p align="center"> <input type="submit" value="Submit" name="B1"> 
                          <input type="reset" name="Submit2" value="Reset" ></td>
											</tr>
											<tr>
												<td height="31" colspan="3">
												<p style="line-height: 20px" align="right">
												<font style="font-size: 8pt" face="Verdana" color="#363636">
												* indicates mandatory fields</font></td>
											</tr>
										</table>
										
										 </div>
										
										 </form>
										
									</div>
									</td>
									<td width="9%">&nbsp;</td>
								</tr>
								<tr>
									<td width="9%" height="19">&nbsp;</td>
									<td height="19">&nbsp;</td>
									<td width="9%" height="19">&nbsp;</td>
								</tr>
								<tr>
									<td width="9%">&nbsp;</td>
									<td>&nbsp;</td>
									<td width="9%">&nbsp;</td>
								</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td valign="top">&nbsp;</td>
						</tr>
					</table>
					</td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td valign="top">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top">
			<p align="center">
			<img border="0" src="images/grey_line.jpg" width="938" height="5"></td>
		</tr>
		<tr>
			<td valign="top">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top"><table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
              <tr>
                <td width="30">&nbsp;</td>
                <td width="115" valign="top" style="width: 261px"><font face="Verdana" style="font-size: 8pt; font-weight: 700" color="#464646"> <a target="_blank" href="http://www.timesofoman.com/">
                  <map name="FPMap0" id="FPMap0">
                    <area target="_blank" href="http://www.banksohar.com/bankSohar/index.jsp" shape="rect" coords="424, 6, 532, 102">
                    <area target="_blank" href="http://www.shabiba.com/" shape="rect" coords="95, 74, 173, 101">
                    <area target="_blank" href="http://www.timesofoman.com/" shape="rect" coords="7, 74, 79, 101">
                  </map>
                  <img border="0" src="images/partners-sep.jpg" usemap="#FPMap0"></a></font></td>
                <td valign="top">&nbsp;</td>
                <td width="27">&nbsp;</td>
              </tr>
            </table></td>
		</tr>
		<tr>
			<td valign="top">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top" bgcolor="#889198">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top" bgcolor="#889198">&nbsp;
			</td>
		</tr>
	</table>
</div>

</body>

</html>
