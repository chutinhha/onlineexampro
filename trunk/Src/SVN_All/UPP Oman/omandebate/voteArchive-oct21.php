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
<style>
.voteResBg {
	width:120px;
	height: 8px;
	margin: 0px auto;
	background-image: url(images/vote_res_bg.gif);
	background-repeat: repeat-x;
}
.voteRes {
	height: 8px;
	background-image: url(images/vote_agr.gif);
	background-repeat: repeat-x;
	float:left;
}
.voteResDis{
	height: 8px;
	background-image: url(images/vote_disAgr.gif);
	background-repeat: repeat-x;
	float:left;
}
form
{
	margin-bottom: 0px;
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
                            <table width="98%" border="0" align="center" cellpadding="5" cellspacing="1" style="font-family:verdana; font-size: 8pt;">
                              <tr>
                                <th width="4%" bgcolor="#bac4c9" scope="col">#</th>
                                <th width="40%" bgcolor="#bac4c9" scope="col">Statement</th>
                                <th bgcolor="#bac4c9" scope="col" colspan="2">Agree</th>
                                <th width="16%" bgcolor="#bac4c9" scope="col" colspan="2">Disagree</th>
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
								if($tot ==0)
								{
									$agrNew = 0;
									$disAgrNew = 0;
								}
								else
								{
									$agrNew = round(($agrVal[agrCount]/$tot)*100,2);
									$disAgrNew = round(($disVal[disCount]/$tot)*100,2);
								}
								echo'<tr>
									<td bgcolor="#d9dfe3" align="center" valign="middle">'.$cnt++.'</td>
									<td bgcolor="#d9dfe3" >'.$arVal[question].'</td>
									<td bgcolor="#d9dfe3" align="center" valign="middle"><div class="voteResBg">
                	<div class="voteRes" style="width:'.$agrNew.'%"></div>
            </div></td><td bgcolor="#d9dfe3" align="center" valign="middle"> '.$agrNew .'%'.'</td>
									<td bgcolor="#d9dfe3" align="center" valign="middle"> <div class="voteResBg">
                	<div class="voteResDis" style="width:'.$disAgrNew.'%"></div>
            </div></td><td bgcolor="#d9dfe3" align="center" valign="middle"> '.$disAgrNew .'%</td>
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
