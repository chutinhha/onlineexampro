<?php 
session_start();
?>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Signature Oman</title>
<style>
<!--
.style4 {
	background-color: #F9E3F7;
}

.head4 { font-family: Arial, Helvetica, sans-serif; font-size: 10pt; font-weight: bold }
-->
</style>
</head>

<body bgcolor="#A2BECC">

<div align="center">
	<table border="3" cellpadding="0" style="border-collapse: collapse" width="1000" bordercolor="#C6C9C6">
		<tr>
			<td valign="top">
			<div align="center">
				<table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
					<tr>
						<td bgcolor="#E2E9EB">&nbsp;</td>
					</tr>
					<tr>
						<td bgcolor="#E2E9EB">
						<!--#include file="inc_top.htm"--> 
						</td>
					</tr>
					<tr>
						<td bgcolor="#E2E9EB">&nbsp;</td>
					</tr>
					<tr>
						<td bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
					<tr>
						<td>
						<div align="center">
							<!--#include file="inc_banner.htm"--> 
						</div>
						</td>
					</tr>
					<tr>
						<td bgcolor="#FFFFFF">&nbsp;</td>
					</tr>
					<tr>
						<td bgcolor="#A7A7A7">
						<p align="center">&nbsp;</td>
					</tr>
					<tr>
						<td bgcolor="#A7A7A7">
						<div align="center">
							<table border="0" cellpadding="0" style="border-collapse: collapse" width="74%">
								<tr>
									<td>
									<p align="center"><b>
									<font face="Tahoma" size="4" color="#676767">
									Error</font></b></td>
								</tr>
								<tr>
									<td align="center">&nbsp;</td>
								</tr>
								<tr>
									<td align="center">
									<font face="Tahoma" size="2" color="#FF0000">Sorry...!. <br>
									Required Fields : <br><br>
                                    <?php
									foreach($_SESSION['err'] as $key => $value)
									{
										echo $value.'<br>';	
									}
									session_unregister('err');
									?>
                                    <b> <a href="javascript:history.back()" style="text-decoration:none;color:#FF0000">&laquo; Back </a></b>
&nbsp;</font></td>
								</tr>
							</table>
						</div>
						</td>
					</tr>
					<tr>
						<td bgcolor="#A7A7A7">&nbsp;</td>
					</tr>
					
					<tr>
						<td bgcolor="#E2E9EB">
						<div align="center">
							<!--#include file="inc_bottom.htm"--> 
						</div>
						</td>
					</tr>
					</table>
			</div>
			</td>
		</tr>
	</table>
</div>

</body>

</html>