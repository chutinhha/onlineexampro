<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OER Debate</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
</head>

<body bgcolor="#889198">
<?php include('../oerDb.php');?>
<div align="center">
	<table border="0" cellpadding="0" style="border-collapse: collapse" width="993" bgcolor="#FFFFFF">
		<tr>
			<td valign="top">
			<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
				<tr>
				  <td valign="top">
					<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
						<tr>
							<td valign="top">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
								<tr>
									<td>&nbsp;</td>
									<td width="25">&nbsp;</td>
								</tr>
							</table>							</td>
						</tr>
						<tr>
							<td valign="top">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
								<tr>
									<td height="40" align="right" valign="top" background="../images/menuBg.gif" style="padding: 5px 20px 0 0; background-repeat: repeat-x;"><?php include('menu.php');?></td>
								</tr>
							</table>							</td>
						</tr>
						<tr>
							<td valign="top">&nbsp;</td>
						</tr>
					</table>					</td>
				</tr>
			</table>		  </td>
		</tr>
		<tr>
			<td height="300" valign="top">
            <?php
			$contId = $_REQUEST['contId'];
			if($contId == 'vot')
				include('vote/admin/addVote.php');
			if($contId == 'vot_ed')
				include('vote/admin/editVote.php');
			if($contId == 'list')
				include('vote/admin/listVote.php');
			if($contId == 'qus')
				include('vote/admin/questions.php');
			?>
            </td>
		</tr>
		
		<tr>
			<td valign="top">
			<p align="center">
		  <img border="0" src="../images/grey_line.jpg" width="938" height="5"></td>
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
					<td width="510">&nbsp;</td>
				  <td>&nbsp;</td>
					<td>
					<p align="right">
					<font face="Verdana" style="font-size: 8pt" color="#FFFFFF">
					(c) OER Debate 2010, Sultanate of Oman</font></td>
				</tr>
			</table>			</td>
		</tr>
	</table>
</div>

</body>

</html>
