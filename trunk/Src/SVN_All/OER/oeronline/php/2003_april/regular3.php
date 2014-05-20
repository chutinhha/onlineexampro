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
            <td width="1%" bgcolor="#FFFFFF">&nbsp;<p>&nbsp;</p>
            <p>&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top"><font face="Verdana" size="4" color="#FF0000">
            Gizmos&nbsp;
                  <br>
                  </font><b><font face="Verdana" size="1"><br>
              </font></b><font face="Verdana" size="1"><b>
            <img border="0" src="michealth.jpg" align="right" hspace="3" vspace="3" width="150" height="114">MicH Body Fat Scale</b><br>
            Not knowing your 
body's fat content can be hazardous to your health. Losing weight alone isn't 
enough. It's also important to track your body fat. That's where MicHealth comes 
in. The first see-through scale to utilise advanced Bioelectrical Impedance 
Analysis (BAI), MicHealth promises you the most accurate body fat measurement. 
Simply step on the four metal pads of the scale for an accurate fat reading. The 
Digital Body Fat Scale can be pre-programmed to recognise up to 5 individuals, 
each with 9 memory recalls to track historical patterns. MicHealth even has an 
indicator showing, thin, normal, stout and obese. Operates on 4AAA batteries 
(not included), and is priced at US $79.95. </font>
<p><font face="Verdana" size="1"><b>
<img border="0" src="transplayer.jpg" align="left" width="150" height="113">Music Free Transplayer<br>
</b>At times, we all enjoy listening to music through our PCs while at work, 
don't we? The problem is that one has to cope up with the speaker system of 
one's PC and the listening pleasure is limited to the room one's computer is in. 
Not any longer, it seems. For, the Wireless Audio Transmitter enables you to 
turn on your PC, select a station from the Internet or CD or MP3, and then 
wirelessly transmit the signal to any FM radio or stereo in the house - or 
office. Includes USB and audio cable, and is priced at $49.95. </font></p>
<p><font face="Verdana" size="1"><b>
<img border="0" src="pocketreader.jpg" align="right" hspace="3" vspace="3" width="150" height="74">Pocket Reader </b><br>
Pocket Reader, the hand-held digital scanner from Siemens, glides like a pen 
highlighter over text and captures quotes, addresses, Website URLs, in English, 
French, German, Italian and Spanish, and holds about 40,000 characters (up to 20 
pages of text). A portable scanner, it is compatible with Windows and Linux - 
but not Mac. Just attach the serial cable, and it automatically transfers the 
text (in ASCII format) to your computer, where you can edit the information in 
the software of your choice. An adapter to allow Mac users to connect to the 
modem port is also provided. </font></p>
<p><font face="Verdana" size="1">
<img border="0" src="voicecam.jpg" align="left" hspace="3" vspace="3" width="150" height="176"><b>VoiceCam</b><br>
Available for $199.95, the &quot;Talk and Shoot&quot; VoiceCam combines high-resolution 
digital images with a voice-over that tells the story behind the shot. You can 
use the recorder by itself to dictate memos to your staff when you're driving; 
or take some spontaneous photos of the kids skiing. It comes in handy when you 
need to record important events-or accidents. You can use this all-purpose 
VoiceCam after a minor fender-bender, so you and shoot and record everything for 
your insurance agent. Features include fast data uploading (voice and image) on 
a PC through the USB port; capability of 44 frames of images taken at 640 x 480 
resolution, or 120 frames at 320 x 240 resolution; five hours of continuous 
voice recording at 8 kHz (sampling frequency); storage for 396 voice messages, 
and 99 folders that hold up to 5 hours of messages. The VoiceCam has all 
standard voice functions (record, stop, play, fast forward, rewind and erase), 
as well as 16 MB flash memory, built-in speaker, mic and LCD display. </font>
</p>

            <hr color="#CC3333">
                    <p>&nbsp;</td>
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