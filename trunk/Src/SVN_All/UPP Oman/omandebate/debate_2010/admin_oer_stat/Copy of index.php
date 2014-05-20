<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Al Mazyona</title>
</head>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: Verdana;
	font-size:8pt;
	color:#000;
}
table td {
	font-size:8pt;
}

.loginHead
{
	font-weight: bold;
	text-align: Left;
	color: #072696;
}

.errMsg
{
	color: Maroon;
	font-weight: bold;
	text-align: right;
	padding-right: 20px;
}

</style>
<script type="text/javascript">
function setColour(element, colour) {
if (element.style) element.style.background = colour;
}
</script>
<body bgcolor="#CECECE">
<? include("../db.php");?>
<table border="0" width="1001" cellspacing="0" cellpadding="0" bgcolor="#E7E7E9" align="center">
  <tr>
    <td  valign="top"><img border="0" src="../images/topline.jpg" width="1001" height="17"></td>
  </tr>
  <tr>
    <td  valign="top" style="background-image:url(../images/left_quesmark.jpg); background-repeat:repeat" class="title">&nbsp;</td>
  <tr>
    <td  valign="top" style="background-image:url(../images/left_quesmark.jpg); background-repeat:repeat; padding: 120px 0px;">&nbsp;
      <table width="300" border="0" align="center" cellpadding="0" bgcolor="#CCC" style="padding : 0px;">
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
      </table>
      <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td  align="center" valign="bottom"><img border="0" src="../images/bottomline.jpg" width="1001" height="23"></td>
  </tr>
</table>
</body>
</html>
