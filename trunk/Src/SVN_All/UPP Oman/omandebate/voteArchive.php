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
.auto-style1 {
            width: 900px;
            text-align: center;
            font-family:Verdana;
            font-size:8pt;
            margin-left:31px;
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

        .auto-style2 {
            width: 100%;
            font-family: Verdana;
            font-size: 8pt;
        }

        .auto-style3 {
            width: 100%;
            text-align: center;
        }

        .auto-style4 {
            width: 100%;
            font-family: Verdana;
            font-size: 8pt;
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
							$cntQuery = mysql_query("SELECT id,code,question FROM question WHERE deleted=0 and year(`date`) = 2014");
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
							  $arQuery = mysql_query("SELECT id,code,question FROM question WHERE year(`date`) = 2014");
							  while($arVal = mysql_fetch_array($arQuery))
							  {
							  	$agrQuery = mysql_query("SELECT COUNT(id) agrCount FROM votedet WHERE question=$arVal[id] AND result = 1 and year(`date`) = 2014");
							  	$agrVal = mysql_fetch_array($agrQuery);
								$disQuery = mysql_query("SELECT COUNT(id) disCount FROM votedet WHERE question=$arVal[id] AND result = 0 and year(`date`) = 2014");
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
                <td valign="top">

                    <table class="auto-style2">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">Strategic Partners</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">
                                <map name="FPMap2">
								<area target="_blank" href="http://www.galfar.com" shape="rect" coords="25, 22, 119, 83">
								<area target="_blank" href="http://www.shelloman.com.om" shape="rect" coords="136, 18, 214, 87">
								<area target="_blank" href="http://www.zubaircorp.com" shape="rect" coords="242, 18, 344, 88">
								<area target="_blank" href="http://www.pdo.co.om" shape="rect" coords="366, 25, 627, 83">
								</map>
                                <img border="0" src="images/2014/Sta.jpg" usemap="#FPMap2"></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">
                                <img border="0" src="images/grey_line.jpg" width="938" height="5"></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">Associate Partners</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">
                                <table border="0" width="100%" cellspacing="0" cellpadding="0">
									<tr>
										<td>&nbsp;</td>
										<td width="173">
										<p align="center">
                                <a target="_blank" href="http://www.omancables.com">
                                <img src="images/2014/10.jpg" border="0" /></a></td>
										<td width="175">
										<p align="center">
                                <a target="_blank" href="http://www.omantel.om">
                                <img src="images/2014/omantel.jpg" border="0" /></a></td>
										<td>&nbsp;</td>
									</tr>
								</table>
							</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">
                                <img border="0" src="images/grey_line.jpg" width="938" height="5"></td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </td>
            </tr>
		<tr>
                <td valign="top">&nbsp;</td>
            </tr>
		<tr>
                <td valign="top">
                    <table class="auto-style4">
                        <tr>
                            <td>&nbsp;</td>
                            <td>Support Partners</td>
                            <td>&nbsp;</td>
                            <td>Media Partners</td>
                            <td>&nbsp;</td>
                            <td>Print Partner</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <map name="FPMap3">
								<area target="_blank" href="http://www.soharsteel.com" shape="rect" coords="8, 8, 88, 72">
								<area target="_blank" coords="97, 21, 225, 69" shape="rect" href="http://www.alhabib.om">
								<area target="_blank" href="http://www.aofsoman.com" shape="rect" coords="235, 15, 390, 69">
								<area target="_blank" href="http://www.takatuf.om" shape="rect" coords="411, 8, 472, 78">
								</map>
                                <img src="images/2014/Support.jpg" usemap="#FPMap3" border="0" /></td>
                            <td>&nbsp;</td>
                            <td>
                                <map name="FPMap7">
								<area target="_blank" coords="10, 44, 62, 67" shape="rect" href="http://www.timesofoman.com">
								<area target="_blank" coords="72, 42, 130, 64" shape="rect" href="http://www.shabiba.com">
								</map>
								<img border="0" src="images/2014/Media.jpg" width="134" height="80" usemap="#FPMap7"></td>
                            <td>&nbsp;</td>
                            <td>
                                <map name="FPMap5">
								<area target="_blank" href="http://www.mazoonprinting.com/" shape="rect" coords="10, 8, 115, 20">
								</map>
                                <img src="images/2014/Print.jpg" usemap="#FPMap5" border="0" /></td>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>

                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="7">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>

                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="7">
                                <div align="center">
									<table border="0" width="703" cellspacing="0" cellpadding="0">
										<tr>
											<td width="339">
											<p align="center">
											<span style="font-size: 8pt">Ambience Partners</span></td>
											<td width="98">
											&nbsp;</td>
											<td>
											<p align="center">
											<span style="font-size: 8pt">Radio</span><font style="font-size: 8pt"> Partners</font></td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td width="339">
											<p align="center">
											<map name="FPMap6">
											<area target="_blank" href="http://www.desertdreamsoman.com/" shape="rect" coords="8, 7, 130, 32">
											</map>
											<img border="0" src="images/2014/Ambi.jpg" width="300" height="40" usemap="#FPMap6"></td>
											<td width="98">
											&nbsp;</td>
											<td>
											<p align="center">
											<map name="FPMap8">
											<area target="_blank" href="https://www.radiomerge.fm/merge/" shape="rect" coords="5, 7, 63, 29">
											</map>
											<img border="0" src="images/2014/radio_partner.jpg" width="134" height="30" usemap="#FPMap8"></td>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
										</tr>
									</table>
								</div>
							</td>
                            <td>&nbsp;</td>
                        </tr>

                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
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
					(c) OMAN Debate, Sultanate of Oman</font>
                            </td>
				</tr>
			</table>
			</td>
		</tr>
	</table>
</div>

</body>

</html>
