<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>OER Debate</title>
<style type="text/css">
<!--
.style1 {	text-align: center;
}
-->
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
									<p align="right"><a href="index.php">
									<img border="0" src="images/home_icon.jpg" width="36" height="64"></a></td>
									<td width="25">&nbsp;</td>
								</tr>
							</table>
							</td>
						</tr>
						<tr>
							<td valign="top">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
								<tr>
									<td valign="top" width="151">
									<a href="debate.html">
									<img border="0" src="images/inside_debate.jpg" width="151" height="36"></a></td>
									<td valign="top" width="100">
									<a href="awards.html">
									<img border="0" src="images/inside_awards.jpg" width="100" height="36"></a></td>
									<td valign="top" width="104">
									<a href="panelists.html">
									<img border="0" src="images/inside_panelists.jpg" width="104" height="36"></a></td>
									<td valign="top" width="105">
									<a href="partners.html">
									<img border="0" src="images/inside_partners.jpg" width="105" height="36"></a></td>
									<td valign="top" width="82">
									<a href="press.html">
									<img border="0" src="images/inside_press.jpg" width="82" height="36"></a></td>
									<td valign="top"><a href="contact.html">
									<img border="0" src="images/inside_contact.jpg" width="164" height="36"></a></td>
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
							<td valign="top">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top">&nbsp;</td>
						</tr>
						<tr>
							<td valign="top">
                            <?php
							include('oerDb.php');
							$cntQuery = mysql_query("SELECT id,code,question FROM question WHERE pub=0 AND deleted=0");
							if(mysql_num_rows($cntQuery) >0)
							{
							?>
                            <table width="80%" border="0" align="center" cellpadding="5" cellspacing="1" style="font-family:verdana; font-size: 8pt;">
                              <tr>
                                <th width="6%" bgcolor="#bac4c9" scope="col">#</th>
                                <th width="7%" bgcolor="#bac4c9" scope="col">Code</th>
                                <th width="45%" bgcolor="#bac4c9" scope="col">Statement</th>
                                <th width="14%" bgcolor="#bac4c9" scope="col">Total Poll</th>
                                <th width="14%" bgcolor="#bac4c9" scope="col">Agree</th>
                                <th width="14%" bgcolor="#bac4c9" scope="col">Disagree</th>
                              </tr>
                              <?php
							  
							  $cnt = 1;
							  $arQuery = mysql_query("SELECT id,code,question FROM question WHERE pub=0");
							  while($arVal = mysql_fetch_array($arQuery))
							  {
							  	$agrQuery = mysql_query("SELECT COUNT(id) agrCount FROM votedet WHERE question=$arVal[id] AND result = 1");
							  	$agrVal = mysql_fetch_array($agrQuery);
								$disQuery = mysql_query("SELECT COUNT(id) disCount FROM votedet WHERE question=$arVal[id] AND result = 0");
							  	$disVal = mysql_fetch_array($disQuery);
								$tot = $agrVal[agrCount]+$disVal[disCount];
								echo'<tr>
									<td bgcolor="#d9dfe3">'.$cnt++.'</td>
									<td bgcolor="#d9dfe3">'.$arVal[code].'</td>
									<td bgcolor="#d9dfe3">'.$arVal[question].'</td>
									<td bgcolor="#d9dfe3">'.$tot.'</td>
									<td bgcolor="#d9dfe3">'.round(($agrVal[agrCount]/$tot)*100,2) .'%'.'</td>
									<td bgcolor="#d9dfe3">'.round(($disVal[disCount]/$tot)*100,2) .'%</td>
								  </tr>';
							  }
							  ?>
                              
                            </table>
                            <?php
							}
							else
							{?>
                            <table width="80%" border="0" align="center" cellpadding="5" cellspacing="1" style="font-family:verdana; font-size: 8pt;">
                              <tr>
                                <td align="center"><strong>Please visit us later</strong></td>
                              </tr>
                            </table>
							<?php }
							?>
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
			<td valign="top">&nbsp;</td>
		</tr>
		<tr>
			<td valign="top"><table border="0" cellpadding="0" style="border-collapse: collapse" width="100%" bgcolor="#FFFFFF" height="127">
              <tr>
                <td><p style="margin-left: 20px; margin-right: 10px; margin-top: 10px; margin-bottom: 10px"> <font face="Verdana" style="font-size: 9pt" color="#464646"> <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Partners&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Media Partners</b></font></p>
                    <table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                      <tr>
                        <td width="30">&nbsp;</td>
                        <td width="115" valign="top"><p align="center"> <img src="images/banksohar_logo_sm.jpg" width="100" height="82" border="0"></td>
                        <td valign="middle" style="width: 162px" class="style1"><font face="Verdana" style="font-size: 8pt; font-weight: 700" color="#464646"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/timesofoman_logo_sm.jpg" width="100" height="39" border="0"></font></td>
                        <td valign="top"><font face="Verdana" style="font-size: 8pt; font-weight: 700" color="#464646"> <br>
                              <br>
                          &nbsp;</font></td>
                        <td width="27">&nbsp;</td>
                      </tr>
                      <tr>
                        <td width="30">&nbsp;</td>
                        <td width="115" valign="top">&nbsp;</td>
                        <td valign="top" style="width: 162px">&nbsp;</td>
                        <td valign="top">&nbsp;</td>
                        <td width="27">&nbsp;</td>
                      </tr>
                  </table></td>
                <td>&nbsp;</td>
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
			<td valign="top" bgcolor="#889198">
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
