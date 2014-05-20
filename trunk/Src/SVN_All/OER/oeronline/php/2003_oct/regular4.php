<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - October 2003 ::</title>
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
              
              <center>
                    <p align="left"><font face="Verdana" size="4" color="#FF0000">Tech
                    Review</font>
                    <p align="left"><font face="Verdana" size="1"><b>
                    <img border="0" src="im88.jpg" align="left" hspace="5" vspace="5" width="150" height="107">JVC 
                    introduces hand-held professional HD camcorder</b><br>
                    JVC has announced the launch of the world's first 
                    professional hand-held camcorder with complete HD recording 
                    capabilities: the JY-HD10E. This single CCD (1.18 million 
                    pixel, 16:9) professional camcorder offers the unique 
                    ability to record at various resolution modes. It records at 
                    HD resolution 720p with output at both 720p and up-converted 
                    1080i signals.<br>
                    The JY-HD10E provides format-conversion while playing back 
                    through its analogue component outputs, so it can upconvert 
                    to 1080/60i or downconvert into 480/60p and 480/60i to 
                    instantly view images on the viewfinder. For added 
                    performance and flexibility utilising MPEG-2 compression, 
                    the JY-HD10E provides the optimal balance between full 
                    bandwidth (1280x720 pixels) within a 19Mbps data stream. 
                    MPEG-2 is compatible with D-VHS for archiving and 
                    distribution; and in the 480/60p mode, for DVD mastering.
                    <br>
                    Images captured are able to be displayed at high resolution 
                    using JVC's range of HD monitors (DT-V range), the DLA-SX21 
                    projector and JVC's range of XGA plasma screens. <br>
                    Additional facilities make the JY-HD10E a total package with 
                    a wealth of features that makes the recording, editing, and 
                    archiving process very simple. JVC has introduced an optical 
                    image stabiliser system, which turns on and off at the flick 
                    of a switch, so videographers can capture quality images 
                    even in the most rugged conditions. The camcorder also comes 
                    complete with a high definition lens. John Carpenter, 
                    general manager, marketing services comments, 
                    &quot;Traditionally, the cost to produce in HD has been 
                    prohibitive for most video professionals. JVC has responded 
                    to their needs by developing camcorder that enables them to 
                    embark on the growing European HD production market.&quot;</font></p>
                    <p align="left"><font face="Verdana" size="1"><b>FSC extends 
                    Centrinotechnology to C series</b><br>
                    <img border="0" src="im89.jpg" align="right" hspace="3" vspace="3" width="150" height="141">Fujitsu 
                    Siemens Computers (FSC), the leading international IT 
                    vendor, is in the process of introducing the Intel Centrino 
                    mobile technology into entry-level notebooks, starting with 
                    the Lifebook C1110. The new range offers value-added 
                    features that were available only for high-end Lifebook 
                    series. The C series now includes features like optimised 
                    power supply and extended battery life.<br>
                    The Centrino technology, which was earlier available only in 
                    the Lifebook S series, offers a secure wireless platform 
                    that delivers optimum performance with reduced power 
                    consumption and easy connectivity across networks. &quot;Today's 
                    changing business scenario demands laptops that can work for 
                    several hours without being dependent on a stationary power 
                    supply. Keeping this in mind, we have decided to offer the 
                    Centrino technology on all our entry-level notebooks,&quot; said 
                    Jacquie Carson, Marketing and Communications Director, 
                    Fujitsu Siemens Computers. &quot;We are pleased to offer the 
                    advanced Lifebook C series to our customers in the Middle 
                    East to enable them receive better performance while on the 
                    move,&quot; Carson added.<br>
                    &quot;The hi-tech industry is full of examples of leading-edge 
                    technology being deployed on entry-level models, but the 
                    significant aspect in this case is the speed at which the 
                    Centrino technology was applied to the entry-level Lifebook 
                    C series. This represents a quantum leap for entry-level 
                    notebooks, bringing the concept of the wireless mobile 
                    office to the doorstep of a larger number of professional 
                    users. We expect this development to considerably boost the 
                    demand for these laptops from small and medium-sized 
                    companies,&quot; Carson added.<br>
                    The Intel Centrino mobile technology with integrated 
                    wireless LAN chipset gives the Lifebook C1110 a platform 
                    specially developed by Intel for straightforward mobile use.</font></p>
                    <hr color="#CC3333">
              </center>
                    </td>
            <td  valign=top bgcolor=white><?include("right_include.php");?>&nbsp;</td>
          </tr>
          
        </table>
        </div>
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