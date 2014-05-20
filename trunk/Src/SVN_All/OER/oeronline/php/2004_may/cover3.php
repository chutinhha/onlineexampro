<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - May 2004 ::</title><script language="JavaScript">

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



<? if(!$HTTP_SESSION_VARS["id"]==""){echo "<font face=Verdana size=2 color=#000000>Welcome&nbsp;&nbsp;</font><font face=Verdana size=2 color=red><i>".$HTTP_SESSION_VARS["id"]."&nbsp;!</i></font>
            ";}else{echo$HTTP_SESSION_VARS["mes"];$HTTP_SESSION_VARS["mes"]="";}?>
              </b></td>
          </tr>
          <tr>
            <td width="1%" bgcolor="#FFFFFF">&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top"><font face="Verdana" size="2" color="#C0C0C0">::
                    Cover Story</font><p>
            <font face="Verdana" size="4" color="#FF0000">Company snapshots</font></p>
            <p align="left"><b>
            <font face="Gigi" size="3">›</font><font size="1" face="Gigi">
            </font><font face="Verdana" size="1"><a href="cover3_a.php">SHELL 
            OMAN MARKETING CO - NUMERO UNO</a></font></b><br>
            <b><font face="Gigi" size="3">› </font>
            <font face="Verdana" size="1"><a href="cover3_b.php">BANKMUSCAT - 
            STRENGTH AND STATURE</a></font></b><font face="Verdana" size="2" color="#C0C0C0"><br>
                    </font><b><font face="Gigi" size="3">› </font>
            <font face="Verdana" size="1"><a href="cover3_c.php">NATIONAL BANK 
            OF OMAN - THE WORST IS OVER!</a></font></b><br>
            <b><font face="Gigi" size="3">› </font>
            <font face="Verdana" size="1"><a href="cover3_d.php">OMAN AVIATION 
            SERVICES - FLYING OUT OF TURBULENCE</a></font></b><br>
            <b><font face="Gigi" size="3">› </font>
            <font face="Verdana" size="1"><a href="cover3_e.php">OMAN OIL 
            MARKETING CO - BRAND NEW IDENTITY</a></font></b><br>
            <font face="Gigi" size="3">
            <b>›</b></font><b><font face="Verdana" size="1">
            <a href="cover3_f.php">RENAISSANCE SERVICES - EXPLORING NEW 
            FRONTIERS</a></font></b><br>
            <font face="Gigi" size="3">
            <b>›</b></font>
            <b><font face="Verdana" size="1"><a href="cover3_h.php">OMAN 
            INTERNATIONAL BANK - CONSOLIDATION TIME</a></font></b><br>
            <font face="Gigi" size="3">
            <b>› </b></font><b><font face="Verdana" size="1">
            <a href="cover3_i.php">DHOFAR INSURANCE CO. - UNDERWRITING SUCCESS</a></font></b><br>
            <font face="Gigi" size="3">
            <b>›</b></font> <b><font face="Verdana" size="1">
            <a href="cover3_j.php">OMAN HOLDINGS INTERNATIONAL - ON FIRM FOOTING</a></font></b><br>
            <font face="Gigi" size="3">
            <b>›</b></font> <b><font face="Verdana" size="1">
            <a href="cover3_k.php">BANKDHOFAR - GET SET… GROW</a></font></b></p>
                    <hr color="#CC3333">
                    <p><font face="Verdana" size="1" color="#CC3333"><b>Other
                    Headlines<br>
                    </b>
                    </font><font face="Verdana" size="1"><a href="cover.php">
                    Main</a></font><br>
                    <font face="Verdana" size="1"><a href="cover1.php">The OER 
            20 - The Roll of Honor</a></font><font face="Verdana" size="1" color="#CC3333"><b><br>
                    </b>
                    </font>
                    <font face="Verdana" size="1">
                    <a href="JavaScript:NewWindow('listing.php')">The OER 20 
                    List</a></font><br>
                    <font face="Verdana" size="1" color="#FF0000">
            <a href="cover2.php">Definitions and Explanations</a></font><br>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>