<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - June 2003 ::</title>
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
              
              <center>
                    <p align="left"><font face="Verdana" size="1"><b>Toshiba 
                    launches new Bluetooth card<br>
                    </b>Toshiba, a global player in mobile computing, has 
                    launched a new Bluetooth card that gives instant access to 
                    the Internet via a mobile phone, as well as wireless 
                    file-sharing and printing capabilities. The new card 
                    supports wireless digital communication between products 
                    equipped with a Secure Digital (SD) slot and is designed as 
                    an upgrade option for Toshiba's range of notebooks and 
                    pocket PCs. &quot;The card requires minimal set-up time and 
                    enables professionals and consumers alike to turn any 
                    notebook or pocket PC into a Bluetooth-enabled device,&quot; said 
                    Ahmed Khalil, regional manager of Toshiba Middle East's 
                    computer systems division. The new card conforms to SDIO 
                    Card Type-B and Bluetooth version 1.1 specifications. Its 
                    advanced features include up to 50 per cent reduction in 
                    power consumption, a flat profile and a 9-mm reduction in 
                    package size. </font></p>
                    <p align="left"><font face="Verdana" size="1"><b>C350 
                    heralds new Motorola menus <br>
                    </b>Motorola launched the new C350 mobile phone last month, 
                    the latest in its iconic user-friendly menus. &quot;Motorola has 
                    worked hard and listened to customers' needs to develop a 
                    phone which answers all those needs,&quot; said Patrick Mulligan, 
                    personal communications sector, Motorola Middle East &amp; North 
                    Africa. &quot;Browsing the iconic menu is easy and changing the 
                    settings is like a walk in the park,&quot; he added. The C350's 
                    four-way navigation keys and two soft buttons allow for easy 
                    access and navigation through the phone's new menu and 
                    functions. With mixable ring tones, downloadable wallpaper, 
                    screensavers, themes, and the ability to change the front 
                    and back covers, users can create the handset that reflects 
                    who they are, said a press release.</font></p>
                    <p align="left"><font face="Verdana" size="1"><b>Epson M.E. 
                    launches desktop networkable projector<br>
                    <img border="0" src="TechReview-Epson7800.jpg" align="right" hspace="2" vspace="2" width="200" height="102"></b>Last 
                    month, Epson announced the launch of EMP-7800, its portable 
                    desktop projector that is tailored to address the needs of 
                    Middle East professionals who spend a great deal of their 
                    time in meeting rooms. &quot;This powerful XGA projector is 
                    designed for conference room usage where networking is a 
                    highly appreciated asset. The EMP-7800 projector is 
                    targeting professionals in the region who require a desktop 
                    projector with high brightness (3.500 ANSI lm) and 
                    convenient features such as networkability, security, quick 
                    corner and wall shot functions, to be used in the 
                    professional/ office environment,&quot; said Khalil El Dalu, 
                    General Manager, Epson Middle East. &quot;By launching this 
                    product, Epson is presenting an attractive high brightness, 
                    robust, compact (5.5 kg) business desktop projector with 
                    comprehensive connectivity,&quot; he added. The heart of this 
                    projector's advanced imaging technology lies in Epson's own 
                    three-LCD projection system. These three 1.0-inch EPSON LCDs 
                    are engineered to achieve high levels of image quality, such 
                    as brightness distribution (illumination ratio), colour 
                    saturation, colour accuracy and efficiency. They create 
                    varying shades of red, green and blue that blend to produce 
                    a projected image with brighter, richer, truer colours and 
                    sharp black text. This unit also features a 700:1 contrast 
                    ratio, enabling a rich video image quality projection.</font></p>
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