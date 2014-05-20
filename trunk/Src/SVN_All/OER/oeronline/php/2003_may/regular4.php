<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - May 2003 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF"><p>
            <font face="Verdana" size="4" color="#FF0000">Gizmos<br>
            <br>
            </font><font face="Verdana" size="1"><b>
            Olympus: Record and shoot<br>
            <img border="0" src="Gizmo---olympus.jpg" align="left" hspace="3" vspace="3" width="76" height="150"></b>The Olympus W-10 is an ideal office accessory to record voices 
            and take pictures. Sound files are stored in the popular wave 
            format. You're assured of wide-ranging PC compatibility. The 
            recorder has a 16MB built-in-flash memory offering a maximum of 
            three hours recording time. Two folders, each with a capacity of up 
            to 100 sound files are provided for sound storage. In addition a 
            VCVA (variable control voice actuator) system conserves memory by 
            eliminating gaps and pauses between recorded speeches. Three sound 
            quality modes are offered including LP (Long Playback), Standard 
            Playback (SP) and High Quality (HQ). All in all, it's a neat gadget 
            with a convenient LCD panel and jog dial to control basic recorder 
            functions and adjust settings for sound quality, microphone 
            sensitivity and storage folder destination. <br>
            The Olympus W-10 is available from Shah Nagardas Manji in Oman, 
            priced at RO39.500.<br>
            <br>
            <b>Walkie Talkie Watches (twin pack) </b><br>
            <img border="0" src="walkie.jpg" align="right" width="110" height="154">Why is it the more childish a toy the more fun it is? Well, that's 
            because all the best gadgets are based on games we used to play. 
            These walkie talkie watches have a 250 ft range and come with two 
            spare changeable face covers and two sets of earphones. Face 
            measures 5 x 6 cm. <br>
            There are endless uses for these watches besides playing stupid 
            games in the office. Keep in touch with your fellow travellers in 
            the annual holiday convoy with these watches. The mini-radios will 
            help you save on the cost of the mobile phone calls, and despite 
            only having a range of 250 ft, will let you communicate that 
            all-important &quot;left turn ahead&quot; command when you need it most! 
            What's more, when you're finished, they'll keep the kids entertained 
            for hours! <br>
            Available at <a target="_blank" href="http://www.boystuff.co.uk">
            www.boystuff.co.uk</a> for £29.99 (RO18.75) a pair (shipping charges 
            not included) <br>
            <br>
            <b>Wireless Colour Security System</b> <br>
            <img border="0" src="security.jpg" align="left" width="125" height="144">This advanced wireless colour surveillance system is also the 
            tiniest. The size of a pack of gum, you can tuck it between books or 
            behind a picture frame. If there's something amiss at home or 
            office, you'll know at a glance - this tiny all-in-one wireless 
            security system has a 2.4 GHz colour camera, 4-channel 4&quot; TFT 
            monitor and audio! At 2.4 GHz, this tiny wireless UHF colour 
            security system with LCD display lets you see and hear all without 
            being detected.<br>
            Has a product been missing from your warehouse? Is someone in the 
            office stealing supplies? A quick glance at the 4&quot; TFT screen on 
            your desk, and, thanks to this all-in-one wireless security system, 
            you can catch a thief red-handed - and see who else may be involved. 
            Monitor disgruntled employees. Scan the screen to see visitors to 
            your lobby. Or discover how many visitors your new receptionist is 
            entertaining! And it's completely portable and sets up in minutes.
            <br>
            Available at <a target="_blank" href="http://www.gadgets.com">
            www.gadgets.com</a> for US$499.95 (RO193) Shipping charges not 
            included.</font></p>
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