<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - August 2003 ::</title>
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
                    <p align="left"><font face="Verdana" size="1"><b>JVC's
                    next-generation D-ILA high definition projector</b><br>
                    <img border="0" src="TR-DLA-SX21_a.jpg" align="left" hspace="5" vspace="5" width="200" height="122">Last
                    month, JVC announced the release of its latest Direct Drive
                    Image Light Amplifier (D-ILA) projector, the DLA-SX21S. With
                    the addition of a 1:1 fixed wide-angle lens with 0 per cent
                    offset, the DLA-SX21S has been developed for applications
                    that require short throw, such as mounting into a rear
                    projection cabinet, or in rear-projection room installations
                    where space behind the screen is limited. The SX21 is ideal
                    when used in conjunction with JVC's range of CinePro optical
                    rear-projection screen material, allowing the projected
                    image, even under normal room lighting, to remain bright.<br>
                    In contrast to other projection technologies, the D-ILA
                    projector display technology, used in the SX21, provides
                    flicker-free images delivered by three high-performance SXGA+
                    (1400 x 1050) 0.7&quot; D-ILA devices (1.5M pixels x 3).
                    Combined with ultra-high 1.5M-pixel resolution, dramatic
                    high-resolution pictures are produced with superb colour
                    reproduction capability.<br>
                    The user-friendly, ergonomic, compact design of the
                    DLA-SX21S makes it easy to install. It weighs only 5.5 kg
                    and is highly portable. This D-ILA projector is ideal for
                    motion picture presentations as well as for multi-view
                    imaging in CCTV monitoring &amp; control rooms, for CAD CAM
                    and other technical and military training, for viewing
                    medical scans and for executive boardrooms.</font></p>
                    <p align="left"><font face="Verdana" size="1"><b>EBay to
                    expand buyer safeguards</b><br>
                    Online auctioneer eBay Inc will add new safeguards to
                    protect purchases on its Website and expand an advertising
                    programme to help sellers promote their wares, said Meg
                    Whitman, eBay's CEO. The company would test a new program
                    that deducted purchases automatically from the financial
                    accounts of bidders as soon as they won an auction. Under
                    the expanded buyer protection program, Whitman said sellers
                    who used the PayPal payment system and had at least 50
                    feedback ratings from buyers, with at least 98 per cent of
                    those ratings positive, would be able to offer buyers $500
                    (RO192) protection on their purchases, with no deductible.<br>
                    Ebay, where everything from electronics to entire cities is
                    sold, handled as many as 7.7 million bids in a single day
                    earlier this year. Whitman said that the company counted on
                    user feedback to improve the site's popular interface.
                    &quot;We don't always get it right the first time, but our
                    goal is to do it right,&quot; she said.<br>
                    More than 150,000 people make their living from eBay and one
                    of their biggest problems is bidders who win an auction and
                    do not pay. To combat this, Whitman said that the company
                    would limit the number of bids that could be made by people
                    who had negative feedback for not paying.</font></p>
                    <p align="left"><font face="Verdana" size="1"><b>Intel
                    introduces faster Pentium 4 processor</b><br>
                    Intel Corp recently announced a faster Pentium 4
                    microprocessor with performance-enhancing hyper-threading
                    technology as the world's largest chipmaker rolls out
                    ever-faster chips.<br>
                    Intel said that its latest, and fastest, Pentium 4 will run
                    at 3.2 gigahertz, or 3.2 billion cycles per second. With the
                    hyper-threading technology, a PC with that chip can convert
                    one minute of digital video to the MPEG 4 standard while
                    also converting 26 minutes worth of music to the MP3 format
                    more than four times faster than a Pentium III chip running
                    at 1 gigahertz, Intel said.</font></p>
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