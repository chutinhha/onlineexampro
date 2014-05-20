<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>OER Debate</title>
</head>

<body bgcolor="#889198">

<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="994">
		<tr>
			<td valign="top">
			<p align="center">
			<img border="0" src="images/top.jpg" width="994" height="52"></td>
		</tr>
		<tr>
			<td valign="top">
			<table border="0" cellpadding="0" style="border-collapse: collapse" width="994" bgcolor="#C9D0D4">
				<tr>
					<td width="559" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="559" height="636">
                      <param name="movie" value="images/home_flash.swf">
                      <param name="quality" value="high">
                      <embed src="images/home_flash.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="559" height="636"></embed>
				    </object></td>
				  <td valign="top">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
						<tr>
							<td valign="top" colspan="3">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
								<tr>
									<td valign="top" width="108">
									<a href="debate.html">
									<img border="0" src="images/debate.jpg" width="108" height="42"></a></td>
									<td valign="top" width="95">
									<a href="awards.html">
									<img border="0" src="images/awards.jpg" width="95" height="42"></a></td>
									<td valign="top" width="109">
									<a href="panelists.html">
									<img border="0" src="images/panelists.jpg" width="109" height="42"></a></td>
									<td valign="top">
									<a href="partners.html">
									<img border="0" src="images/partners.jpg" width="123" height="42"></a></td>
								</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">&nbsp;</td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">&nbsp;</td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">
							<p align="right" style="line-height: 18px"><b>
							<font face="Verdana" style="font-size: 10pt" color="#464646">
							Date - 25th October 2010 <br>
							at the Capital Market Authority Auditorium</font></b></td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">&nbsp;</td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">&nbsp;</td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">
							<p style="line-height: 20px" align="justify">
							<font color="#252525" face="Verdana" style="font-size: 8pt">
							Oman Inc.’s best minds share their insights from the 
							recent economic downturn, identify challenges and 
							outline the way forward. OER and Capital Market 
							Authority are proud to recreate the platform for 
							heads of institutions, policy-makers, 
							decision-makers and corporate captains to 
							participate in this biggest national forum that not 
							only presents the challenges of the recent economic 
							downturn but also urges them to throw light on 
							paving a way ahead. This mind stimulating forum gets 
							better as we recognize and award Oman’s largest 
							companies of 2009.</font></td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">&nbsp;</td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">&nbsp;</td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%" height="187">&nbsp;</td>
							<td valign="top" width="82%" height="187">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="101%">
								<tr>
									<td bgcolor="#676767" width="49%">
									<p style="margin: 10px">
									<font face="Verdana" style="font-size: 9pt; font-weight: 700" color="#FFFFFF">
									Opinion Poll</font></td>
									<td bgcolor="#676767" width="51%">
									<p align="right" style="margin: 10px">
									<font face="Verdana" style="font-size: 9pt" color="#FFFFFF">
								  <a style=" color: #FFFFFF; text-decoration: none;" href="voteArchive.php">View Archive</a></font></td>
								</tr>
								<tr>
									<td bgcolor="#343434" colspan="2" height="46">
									<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" height="80">
										<tr>
											<td width="75">
											<p align="center">
											<font color="#FFFFFF" face="Verdana" style="font-size: 8pt">
											<img border="0" src="images/poll_icon.jpg" width="52" height="54" align="middle" hspace="0"></font></td>
											<td>
											<font color="#FFFFFF" face="Verdana" style="font-size: 8pt">
											<?php
												include('oerDb.php');
												$votQuery = mysql_query("SELECT * FROM question WHERE pub=1 AND deleted=0");
												if(mysql_num_rows($votQuery)>0)
												{
													$vote = mysql_fetch_array($votQuery);
													echo $vote[question];
													$noPoll = '';
												}
												else
												{
													echo "No Opinion Poll statement"; 
													$noPoll = 'disabled';
												}
											?></font></td>
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td bgcolor="#FEFEFE" colspan="2">
										<?php include('vote.php');?>
                                    </td>
								</tr>
								<tr>
									<td bgcolor="#FEFEFE" colspan="2">&nbsp;</td>
								</tr>
							</table>
							</td>
							<td valign="top" width="9%" height="187">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">&nbsp;</td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">&nbsp;</td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top" width="9%">&nbsp;</td>
							<td valign="top" width="82%">&nbsp;</td>
							<td valign="top" width="9%">&nbsp;</td>
						</tr>
						</table>
					</td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td valign="top" bgcolor="#C9D0D4" height="46">
			<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bgcolor="#FFFFFF" height="127">
				<tr>
					<td width="37" bgcolor="#C9D0D4">&nbsp;</td>
					<td>
					<p style="margin-left: 20px; margin-right: 10px; margin-top: 10px; margin-bottom: 10px">
					<font face="Verdana" style="font-size: 9pt" color="#464646">
					<b>Partners</b></font></p>
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
						<tr>
							<td width="30">&nbsp;</td>
							<td width="115" valign="top">
							<p align="center">
							<img border="0" src="images/banksohar_logo_sm.jpg" width="100" height="82"></td>
							<td width="120" valign="top">&nbsp;</td>
							<td valign="top">
							<font face="Verdana" style="font-size: 8pt; font-weight: 700" color="#464646">
							<br>
							<br>
&nbsp;</font></td>
							<td width="27">&nbsp;</td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td width="115" valign="top">&nbsp;</td>
							<td width="120" valign="top">&nbsp;</td>
							<td valign="top">&nbsp;</td>
							<td width="27">&nbsp;</td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td width="115" valign="top">&nbsp;</td>
							<td width="120" valign="top">&nbsp;</td>
							<td valign="top">&nbsp;</td>
							<td width="27">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="5">
							<p style="margin-left: 20px; margin-right: 10px; margin-top: 10px; margin-bottom: 10px">
							<font style="font-size: 9pt" color="#464646" face="Verdana">
							<b>Media Partners</b></font></td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td width="115" valign="top">
							<p align="center">
							<font face="Verdana" style="font-size: 8pt; font-weight: 700" color="#464646">
							<img border="0" src="images/timesofoman_logo_sm.jpg" width="100" height="39"></font></td>
							<td width="120" valign="top">&nbsp;</td>
							<td valign="top">&nbsp;</td>
							<td width="27">&nbsp;</td>
						</tr>
						<tr>
							<td width="30">&nbsp;</td>
							<td width="115" valign="top">&nbsp;</td>
							<td width="120" valign="top">&nbsp;</td>
							<td valign="top">&nbsp;</td>
							<td width="27">&nbsp;</td>
						</tr>
					</table>
					<p style="margin: 10px">&nbsp;</td>
					<td width="38" bgcolor="#C9D0D4">&nbsp;</td>
				</tr>
				<tr>
					<td width="37" bgcolor="#C9D0D4">&nbsp;</td>
					<td bgcolor="#C9D0D4"><br>
&nbsp;</td>
					<td width="38" bgcolor="#C9D0D4">&nbsp;</td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td valign="top">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top">
			<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
				<tr>
					<td width="510">
					<font face="Verdana" style="font-size: 9pt" color="#FFFFFF">
					<a href="press.html" style="text-decoration: none">
					<font color="#FFFFFF">Press</font></a>&nbsp; |&nbsp; 
					<a href="contact.html" style="text-decoration: none">
					<font color="#FFFFFF">Contact Us</font></a></font></td>
					<td>&nbsp;</td>
					<td>
					<p align="right">
					<font face="Verdana" style="font-size: 8pt" color="#FFFFFF">
					(c) OER Debate 2010, Sultanate of Oman</font></td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
</div>

</body>

</html>
