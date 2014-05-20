<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - June - 2004 ::</title><script language="JavaScript">

<!--



function NewWindow(url) {                       

                var hWnd = window.open(url,"Window","width=600,height=430,resizable=yes,scrollbars=yes,left=100,top=25");

                if (hWnd.focus != null) hWnd.focus();

        }



// -->

</script>

</head>

<body topmargin="0" leftmargin="0" rightmargin="0">


<table border="0" width="100%" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111">
  <tr>
    <td width="100%">
<? include("../../inc/top1.php"); ?>  
<? include("../../inc/menu_gen.htm");
?></td>
  </tr>
  <tr>
    <td width="100%" height="21">
<?include("../../inc/home_inc1.htm");?></td>
  </tr>
  <tr>
    <td width="100%" height="15" valign="middle">
      <div align="center">
        <center>
        <table border="0" width="95%" bgcolor="#FFFCE8" cellspacing="0" cellpadding="5" style="border-collapse: collapse" bordercolor="#111111">
          <tr>
            <td width="100%" bgcolor="#FFFCE8" colspan="3" align=center><b>



<? if(!$HTTP_SESSION_VARS["id"]==""){echo "<font face=Verdana size=2 color=#000000>Welcome&nbsp;&nbsp;</font><font face=Verdana size=2 color=red><i>".$HTTP_SESSION_VARS["id"]."!</i></font>
            ";}else{echo$HTTP_SESSION_VARS["mes"];$HTTP_SESSION_VARS["mes"]="";}?>
              </b></td>
          </tr>
          <tr>
            <td width="1%" bgcolor="#FFFFFF">&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top"><font face="Verdana" size="2" color="#C0C0C0">
            :: Cover Story<br>
            <br>
                    </font><font color="#FF0000" face="Verdana">
            <font style="font-size: 13pt; font-weight: 700">GCC MOBILE TELEPHONY
            </font><font size="4"><br>
            </font><font style="font-size: 18pt; font-weight: 700">Sharing the 
            Spoils</font></font><p>
            <font face="Verdana" size="4" color="#FF0000">Country snapshots</font><br>
            <b><font face="Gigi" size="3">›</font><a href="cover2_a.php" style="text-decoration: none"><font face="Verdana" size="1">
            </font></a><font face="Verdana" size="1"><a href="cover2_a.php">
            Sultanate of Oman - Call Waiting! Please hold on...</a></font><font face="Gigi" size="3"><br>
            › </font><font face="Verdana" size="1"><a href="cover2_b.php">
            kingdom of Saudi Arabia - Your call is important. We'll revert 
            soon...</a></font><font face="Gigi" size="3"><br>
            › </font><font face="Verdana" size="1">
            <a href="cover2_c.php">kingdom of Bahrain - You've reached world - 
            class mobility...</a></font><font face="Gigi" size="3"><br>
            › </font><font face="Verdana" size="1">
            <a href="cover2_d.php">State of Kuwait - Press 1 for Operator A; 2 
            for Operator B...</a></font><font face="Gigi" size="3"><br>
            › </font><font face="Verdana" size="1">
            <a href="cover2_e.php">United Arab Emirates - Leave your message 
            after the beep...</a></font><font face="Gigi" size="3"><br>
            › </font><font face="Verdana" size="1">
            <a href="cover2_f.php">State of Qatar - All lines are busy. Please 
            try later...</a></font></b><br>
            <br>
            <br>
            <br>
            <br>
&nbsp;</p>
            <p align="center"><font face="Verdana" size="1"><a href="cover.php">
            Back</a></font></p>
                    <hr color="#CC3333">
                    <p><font face="Verdana" size="1" color="#CC3333"><b>Other 
                    Headlines<br>
                    </b>
                    </font><font face="Verdana" size="1"><a href="cover.php">
                    Main</a></font><br>
                    <font face="Verdana" size="1"><a href="cover1.php">
                    Competition Calling</a></font><br>
                    <br>
&nbsp;</td>
            <td  valign=top bgcolor=white><?include("right_include.php");?>&nbsp;</td>
          </tr>
          
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        </table>
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>