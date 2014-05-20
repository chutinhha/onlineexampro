<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>OER Debate</title>
<style type="text/css">
table td {
	font-size:8pt;
	font-family: verdana;
}
.loginHead {
	font-weight: bold;
	text-align: Left;
	color: #072696;
}
.errMsg {
	color: Maroon;
	font-weight: bold;
	text-align: right;
	padding-right: 20px;
}
.style1 {
	color: #FFFFFF
}
</style>
</head>
<body bgcolor="#889198">
<div align="center">
  <table border="0" cellpadding="0" style="border-collapse: collapse" width="993" bgcolor="#FFFFFF">
    <tr>
      <td valign="top"><table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
          <tr>
            <td valign="top"><table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                <tr>
                  <td valign="top"><table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                      <tr>
                        <td>&nbsp;</td>
                        <td width="25">&nbsp;</td>
                      </tr>
                    </table></td>
                </tr>
                <tr>
                  <td valign="top"><table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
                      <tr>
                        <td height="40" align="right" valign="top" background="../images/menuBg.gif" style="padding: 12px 20px 0 0;">&nbsp;</td>
                      </tr>
                    </table></td>
                </tr>
                <tr>
                  <td valign="top">&nbsp;</td>
                </tr>
              </table></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td height="300" valign="middle"><table width="300" border="0" align="center" cellpadding="0" bgcolor="#a6afb4" style="padding : 0px;">
          <tr>
            <form name="form1" method="post" action="loginaction.php">
              <td align="center" style="padding : 2px;"><table width="300" border="0" cellpadding="4" cellspacing="0" bgcolor="#FFFFFF">
                  <tr>
                    <td colspan="3" class="loginHead">Login</td>
                  </tr>
                  <tr>
                    <td width="200">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="errMsg"><? if(isset($_REQUEST['aa'])) echo "Login Failed...."; ?></td>
                  </tr>
                  <tr>
                    <td colspan="2" align="right">Username :</td>
                    <td width="294" align="left"><input name="myusername" type="text" id="myusername" value="<?=$_REQUEST['name']?>"></td>
                  </tr>
                  <tr>
                    <td colspan="2" align="right">Password :</td>
                    <td align="left"><input name="mypassword" type="password" id="mypassword"></td>
                  </tr>
                  <tr>
                    <td >&nbsp;</td>
                    <td >&nbsp;</td>
                    <td align="left"><input type="submit" name="Submit" value="Login"></td>
                  </tr>
                </table></td>
            </form>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td valign="top"><p align="center"> <img border="0" src="../images/grey_line.jpg" width="938" height="5"></td>
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
      <td valign="top" bgcolor="#889198"><table border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
          <tr>
            <td width="510">&nbsp;</td>
            <td>&nbsp;</td>
            <td><p align="right"> <font face="Verdana" style="font-size: 8pt" color="#FFFFFF"> (c) OER Debate 2010, Sultanate of Oman</font></td>
          </tr>
        </table></td>
    </tr>
  </table>
</div>
</body>
</html>
