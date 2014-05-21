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
            <font face="Verdana" style="font-size: 14pt">ARABIAN CRANES - 
            Comprehensive <br>
            Crane Solutions</font></b></p>
            <p align="justify"><font face="Verdana" size="1">
            <img border="0" src="prof7.jpg" align="right" hspace="5" vspace="2" width="150" height="178">Arabian 
            Cranes, a leading entity in the crane segment in the Sultanate, is 
            the authorised agent for M/s Grove Worldwide in the Sultanate. The 
            company is also the authorised distributor for various safety 
            systems of M/s Ascorel as well as ClarkHurth Components. <br>
            <br>
            Arabian Cranes specialises in the repair of leading brands of mobile 
            cranes such as Grove, Coles, Krupp, National etc. The company also 
            specialises in safety equipment for cranes &amp; lifting appliances.<br>
            <br>
            Arabian Cranes is also in the business of sale of used cranes and 
            imparts training on crane operations. The company’s rental 
            operations include rental of Telescopic Platform Access 48Ft to 76 
            Ft. Arabian Cranes boasts a fully equipped workshop to carry out all 
            repairs &amp; installation. It has an efficient spare parts supply 
            division that is equipped to undertake the spare parts requirement 
            of Grove, Coles, Krupp, National, Hydraulic equipment etc. <br>
            <br>
            Arabian Cranes also undertakes supply, installation &amp; programming of 
            Safe Load Indicator System manufactured by M/s Ascorel, France – an 
            ISO9001 Certified company – for safety devices for mobile cranes &amp; 
            all lifting equipment in addition to offering specialised services 
            in other fields such as conversion engines, engine shutdown systems, 
            hydraulic drive air conditioner etc.</font></p>
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