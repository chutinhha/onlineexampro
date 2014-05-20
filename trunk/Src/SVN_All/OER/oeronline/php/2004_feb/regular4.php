<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - February 2004 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF" valign="top">
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">
            gizmos<br>
                  </font><font face="Verdana" size="1"><b><br>
                  Music on the move </b><br>
            <br>
            <b>Sales in the portable music player market are very hot. In the 
            US, the segment is expected to grow to 19.3 million units in 2007 
            from 5.5 million units in 2002, according to the market research 
            firm IDC. Apple introduced its iPod in October 2001, igniting a 
            category of portable players with hard drives, the latest models of 
            which have as much as 30-gigabytes of storage. OER looks at some of 
            these plus a random sample of the best pocket-sized digital players</b>
            <br>
            <br>
            <b>Panasonic SL-CT790 Portable CD Player</b><br>
            <img border="0" src="im12.jpg" align="left" hspace="5" vspace="5" width="150" height="128">Panasonic's 
            ultra-slim SL-CT790 CD player offers the convenience of pocket 
            sizing and remote control operation alongside long battery life and 
            reliable anti-skip protection. The player's No Skip technology 
            combines rubber, shock-absorbing brushings and an anti-skip digital 
            servo with 48-second memory reserve for added back up. Panasonic's 
            Power Last system uses a highly efficient motor with low-load 
            circuitry for drastically improved playback time, helping the player 
            derive up to 100 hours of playback from two supplied Ni-MH 
            rechargeable batteries in conjunction with two standard AA batteries 
            in the included external battery case. A hold function activated 
            from the supplied wired remote control prevents unintended 
            interruptions in playback and saves batteries by negating playback 
            when the player is stopped. You can set it to lock the player, the 
            remote control, or both. The SL-CT790's digital-to-analog converter 
            is Panasonic's single-bit MASH (multi-stage noise shaping 
            technology) DAC, designed to virtually eliminate distortion and 
            deliver all the subtleties and nuances that make digital recordings 
            so rich. Playback options include 24-track programming, repeat 
            (track or disc), and random play, and a three-preset equalizer lets 
            you tailor the sound to your preference - choose from S-XBS (extra 
            bass system), live, train (high cut). Auto power-off prevents 
            battery drainage after your CD has ended, and the unit's aluminium 
            top cover and polycarbonate body protects the player from the 
            elements. <br>
            <i>Price: $179.99 </i>
                  </font></p>
            <p align="justify"><font face="Verdana" size="1"><b>Sony DEJ915 
            Portable Discman </b><br>
            <img border="0" src="im13.jpg" align="right" hspace="4" vspace="3" width="200" height="107">The 
            Sony DEJ915 portable CD player is one of the world's smallest and 
            lightest - at 0.75 inches thick and 5.2 ounces without batteries. It 
            provides skip-free play with a digitally based system that has 10 
            times faster shock recovery than conventional systems. The Sony 
            DEJ915 offers up to 57 hours of continuous playback. Special 
            features include backlit remote headphones for ease of operation. 
            They are Mega Bass compatible and provide a wide dynamic range. 
            Buttons are small and subtly marked on the control pod. The same 
            could be said for the tiny control buttons located on the slim 
            perimeter of the player itself. Unfortunately, this is one of those 
            Sony products where you actually need to read the owner's manual to 
            get the hang of all features and operations. (The effective Mega 
            Bass option, for example, is accessible only from the remote.) Also 
            a little annoying is the fact that to change a disc, you must first 
            unplug the headphone/remote control cable before sliding the player 
            out of its carrying case. With the optional digital optical link, 
            the Sony DEJ915 lets you transfer CD Text data to a minidisc player 
            when dubbing from a CD. The Sony DEJ915 has nine playback modes 
            including repeat of tracks or disc, shuffle, 64-track random 
            programming, and resume play. The Automatic Volume Limiter System 
            maintains volume output at levels below distortion threshold in two 
            different positions for cleaner sound reproduction. <br>
            <i>Price: $249.95</i></font><i><font size="1">.</font></i></p>
                    <hr color="#CC3333">
                    <p>&nbsp;</td>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>