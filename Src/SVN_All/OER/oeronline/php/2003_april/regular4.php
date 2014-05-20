<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - April 2003 ::</title>
</head>

<body topmargin="0" leftmargin="0">





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
          </center>
            <td width="70%" bgcolor="#FFFFFF" valign="top">
              <p align="left"><font face="Verdana" size="4" color="#FF0000">
                  Tech review
                  </font>
              
<p><font face="Verdana" size="1"><b>
<img border="0" src="dell_axim.jpg" width="100" height="151" align="left" hspace="3" vspace="3">Dell unveils Axim X5 in the Middle East</b><br>
Last month, Dell unveiled its first handheld computer brand, Axim, in the Middle 
East. The sleek new Axim X5 is powered by the Intel Xscale processor at 400 MHz 
and offers 64 MB of SDRAM along with 48 MB of Intel StrataFlash ROM. A brilliant 
3.5-inch transflective TFT colour display with 240x320 (QVGA) resolution is 
standard on all X5 configurations. The built-in Secure Digital and CompactFlash 
slots can host a number of devices ranging from 802.11b wireless adapters to 
memory expansion accessories. <br>
The unit's sync/recharge cradle has an extra battery charge slot that 
accommodates either a spare standard battery or the available high-capacity 
(3400 mAh) battery. The X5 is based on Microsoft Windows Powered Pocket PC 
software and standard one-year, next-business-day Advanced Exchange service. 
Users with lower memory and speed requirements can opt for the X5's 300 MHz 
configuration, which has 32 MB of SDRAM, 32 MB of Flash ROM and a USB sync cable 
instead of a cradle. The Axim is now available in Oman at Dell authorised 
service providers, MHD LLC.</font></p>
<p><font face="Verdana" size="1"><b>Samsung phones ring with Palm OS 5 </b>
<br>
PalmSource announced last month at the CeBit trade show in Hannover, Germany, 
that South Korean consumer-electronics maker Samsung will be the first phone 
maker to use the latest version of the Palm operating system. <br>
Samsung's Mobile Information Terminal SGH-i500 will run on Global System for 
Mobile Communications (GSM) cellular networks and use version 5 of the Palm OS. 
Samsung has risen to one of the top positions in the handset market using a 
strategy of developing advanced cell phone handsets. <br>
The SGH-i500 has a clamshell design with a 16-bit colour liquid crystal display 
and a built-in digital camera. The device comes with an ARM-compliant processor 
and a Wireless Application Protocol (WAP) 2.0 browser. <br>
Samsung is licensing many of the major operating systems for smart phones, 
including Microsoft's Smartphone 2002 OS, the Symbian OS and the Palm OS. The 
company is covering all the bases in case one of the operating systems grabs the 
lead in the market.</font></p>

              <center>
                    <hr color="#CC3333">
                    </td>
            <td  valign=top bgcolor=white><?include("right_include.php");?>&nbsp;</td>
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