<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - September 2003 ::</title>
</head>

<body topmargin="0" leftmargin="0">











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
            <td width="1%" bgcolor="#FFFFFF">&nbsp;<p>&nbsp;</p>
            <p>&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top"><font face="Verdana" size="4" color="#FF0000">
            Gizmos</font><p align="justify"><font face="Verdana" size="1"><b>From its humble 
            beginnings, the mobile phone has evolved to include e-mail, Internet 
            access and blogging, ring tones and wait screens, games and digital 
            cameras... the works. Today, this tiny hand-held gadget has intruded 
            into our life like no other gadget had ever done. If you don't hear 
            the beep of a few mobile phones in a mob, you can consider yourself 
            deaf. With new ones being added at such a rapid pace, you are bound 
            to get confused. This month, OER selects the latest phones for the 
            mobile maniac</b></font></p>
            <p align="justify"><font face="Verdana" size="1"><b>Nokia N-Gage</b><br>
            Nokia, the market leader in mobile phones, is once <b>
            <img border="0" src="pg94.jpg" align="left" width="200" height="106"></b>again 
            set to create ripples with its all-new N-Gage tri-band (EGSM 
            900/GSM1800/GSM 1900) cell phone with a portable gaming platform, 
            scheduled to ship worldwide in early October with 20 launch titles, 
            including Tomb Raider, Sonic the Hedgehog, Tony Hawk's Pro Skater, 
            and Splinter Cell. Sleek and sexy, the device weighs only 137 g 
            (with standard battery), with an internal antenna, built-in vibrator 
            and measures 133.7 x 69.7 x 20.2 mm, 139cc. Based on Bluetooth 
            technology, the N-Gage gives wireless connectivity and has a talk 
            time of 2-4 hours and a standby time of 150-200 hours. For music, it 
            can be used up to eight hours, and six hours for games.<br>
            Price: US$300 (RO115); Available at:
            <a target="_blank" href="http://www.n-gage.com">www.n-gage.com</a></font></p>
            <p align="justify"><font face="Verdana" size="1"><b>Nokia 6600</b><br>
            Besides being a tri-band (GSM E900/ 1800/1900) phone, the 6600 is 
            loaded with advanced imaging features including a bright 
            65,536-colour TFT display and camera equipped with digital zoom. The 
            device, weighing 122 g (with BL-5C battery) and measuring 108.6 x 
            58.2 x 23.7mm, 113cc, can transfer data at the speed of 40.2Kbps in 
            GPRS networks and 43.2Kbps in HSCSD networks. The phone has 6 MB 
            internal shared memory to support advanced database. It also 
            supports thumbnail picture and groups and has a memory card slot for 
            additional user memory. The Nokia 6600 gives wireless connectivity 
            with Bluetooth and infrared and is enabled with advanced XHTML 
            browser. The phone has a talk time of 2-4 hours and a standby time 
            of 150-240 hours.<br>
            Price: US$799 (RO307); Available at:
            <a target="_blank" href="http://www.nokia.com">www.nokia.com</a></font></p>
            <p align="justify"><font face="Verdana" size="1"><b>Motorola T720i</b><br>
            Winner of 2003 CES Innovations award, the Motorola T720i comes with 
            an optional digital camera (20 g). It also has a built-In 
            Microbrowser, which helps in accessing directions, stock quotes, and 
            airline information, all wireless. The phone, which weighs about 100 
            g (with battery), and measures 3.5 x 1.87 x 0.83 inches, can be 
            personalised by making it ÒsingÓ with 32 pre-set ring tones and up 
            to 32 downloadable ones. It's a great device for the disabled in 
            that it is TTY digital compatible - for the hearing impaired. Its 
            TAP software helps in simplifying text entry. The device anticipates 
            the word that the user is trying to spell when entering text in 
            email, short messages or other edit modes. The phone provides 
            210-390 minutes of talk time and 120-230 hours of standby time. It 
            can be used on GSM 1900 MHz networks.<br>
            Price: US$300 (RO115); Available at
            <a target="_blank" href="http://commerce.motorola.com">
            http://commerce.motorola.com</a></font></p>

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