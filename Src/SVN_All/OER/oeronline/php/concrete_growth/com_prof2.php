<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - April - 2005 ::</title><script language="JavaScript">

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
            <td width="70%" bgcolor="#FFFFFF" valign="top">
            <p align="justify"><font face="Verdana" size="2" color="#C0C0C0">:: Company Profile </font>
            </p>
            <p align="center" dir="ltr"><b>
            <font face="Verdana" style="font-size: 14pt">TEEJAN TRADING &amp; 
            CONTRACTING CO. LLC<br>
            </font>
            <font face="Verdana" style="font-size: 8pt">Excellence, Efficiency, 
            Integrity, Quality, Dedication,<br>
            Customer Satisfaction</font></b></p>
            <p align="justify"><font face="Verdana" size="1">
            <img border="0" src="prof2.jpg" align="right" hspace="5" vspace="2" width="300" height="204">Teejan 
            Trading &amp; Contracting Co. LLC, the flagship company of the group 
            established in 1974, was set up by Hamed Salem Issa Al Harrasy, the 
            visionary Chairman and Ameer Ahmed, Group Managing Director &amp; CEO. 
            The company has since grown into a dynamic, multi-division business 
            house with a range of operations across the Sultanate of Oman, the 
            UAE, Kingdom of Saudi Arabia and India.<br>
            <br>
            The company ranks as one of the leading construction companies in 
            Oman, rated as an excellent grade contractor by the Tender Board of 
            the Government of Oman. The company’s success stems from its 
            commitment to excellence in quality and timely completion of 
            projects. Teejan’s pool of hi-tech professionals has enabled it to 
            specialise in the execution of fast track projects and undertake 
            consultancy and facilitation services for overseas clients to secure 
            major projects in the Sultanate of Oman.<br>
            <br>
            The company has in place a well-developed Health, Safety and 
            Environment (HSE) policy. The company’s infrastructure facilities 
            boast of a 20,000 sq. mts self-contained camp in Muscat, which 
            includes a modern corporate office, fully automated data management<br>
            system, central warehouse facility, junior staff accommodation, 
            permanent &amp; transit accommodation for labour, full fledged 
            automobile workshop, metal fabrication and carpentry workshops.<br>
            <br>
            The Teejan Trading &amp; Contracting Company is organised into three 
            strategic business units – Construction, Project Engineering 
            Services and Environment Division. The projects executed by Teejan 
            include commercial complexes, industrial buildings, infrastructure 
            construction like schools, hospitals, power transmission lines, 
            sewage treatment plants, road works, heavy industrial foundations 
            etc.</font></p>
                    <hr color="#CC3333">
                    <p>&nbsp;</p>
            </td>
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