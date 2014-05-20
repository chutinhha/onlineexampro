<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - December 2003 ::</title>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">



















<table border="0" width="100%" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111">
  <tr>
    <td width="100%">
<? include("../../inc/top.htm"); ?>  
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
                    Cover Story<br>
                    </font><font face="Verdana" size="4" color="#FF0000">2003 
            The Year that was</font><p align="center">
            <font face="Verdana" size="4" color="#FF0000">April</font></p>
              <p align="left"><font face="Verdana" size="1"><b>Majan Bank merges 
              with Bank Dhofar</b><br>
              The operations of Majan International Bank were successfully 
              merged with those of Bank Dhofar Al Omani Al Fransi (BDOF), with 
              six Majan branches closing down in areas where BDOF already had a 
              physical presence. The merger brought in synergies and added value 
              to BDOF, which reported a 14.5 per cent jump in its net profit for 
              the first nine months of the current year ended September 30, 
              2003.</font></p>
              <table border="0" cellpadding="1" cellspacing="2" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" height="81">
                <tr>
                  <td width="100%" align="center" height="17" bgcolor="#FFFCD5" colspan="4">
                  <b><font face="Verdana" size="1">Year 2003</font></b></td>
                </tr>
                <tr>
                  <td width="24%" align="center" height="17" bgcolor="#FFFDE6">
                  <p align="center"><font face="Verdana" size="1">
                  <a href="cover_jan.php">January</a></font></td>
                  <td width="26%" align="center" height="17" bgcolor="#FFFDE6">
                  <font face="Verdana" size="1"><a href="cover_feb.php">February</a></font></td>
                  <td width="26%" align="center" height="17" bgcolor="#FFFDE6">
                  <font face="Verdana" size="1"><a href="cover_march.php">March</a></font></td>
                  <td width="24%" align="center" height="17" bgcolor="#FFFDE6">
                  <b>
                  <font face="Verdana" size="1">April</font></b></td>
                </tr>
                <tr>
                  <td width="24%" align="center" height="17" bgcolor="#FFFDE6">
                  <font face="Verdana" size="1"><a href="cover_may.php">May</a></font></td>
                  <td width="26%" align="center" height="17" bgcolor="#FFFDE6">
                  <font face="Verdana" size="1">June</font></td>
                  <td width="26%" align="center" height="17" bgcolor="#FFFDE6">
                  <font face="Verdana" size="1"><a href="cover_july.php">July</a></font></td>
                  <td width="24%" align="center" height="17" bgcolor="#FFFDE6">
                  <font face="Verdana" size="1"><a href="cover_aug.php">August</a></font></td>
                </tr>
                <tr>
                  <td width="24%" align="center" height="17" bgcolor="#FFFDE6">
                  <font face="Verdana" size="1"><a href="cover_sep.php">September</a></font></td>
                  <td width="26%" align="center" height="17" bgcolor="#FFFDE6">
                  <font face="Verdana" size="1"><a href="cover_oct.php">October</a></font></td>
                  <td width="26%" align="center" height="17" bgcolor="#FFFDE6">
                  <font face="Verdana" size="1"><a href="cover_nov.php">November</a></font></td>
                  <td width="24%" align="center" height="17" bgcolor="#FFFDE6">
                  <font face="Verdana" size="1"><a href="cover_dec.php">December</a></font></td>
                </tr>
            </table>
            <p>&nbsp;</p>
            <hr color="#CC3333">
            <p>&nbsp;</td>
            <td  valign=top bgcolor=white>
<? include("right_include.php");?></td>
          </tr>
          
        </table>
        </div>
      </center>
        </table>
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
<p>
        <?}
else 
Header("Location:/inc/error.php");
?>
        </body>
        </html>