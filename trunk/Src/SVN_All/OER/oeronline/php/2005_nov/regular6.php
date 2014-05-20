<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - November- 2005 ::</title>
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
            <p align="justify"><font face="Verdana" size="2" color="#C0C0C0">:: 
            Gizmos</font></p>
<p align="justify"><font color="#353535" face="Verdana" size="1"><b>Get ahead in 
life with these futuristic and trendy cell phones…<br>
</b><br>
<img border="0" src="sony.jpg" align="left" width="150" height="170">Sony 
Ericsson has officially announced the P990 well ahead of availability. This 3G (UMTS) 
smartphone has the same dimensions as the P910 but adopts the Symbian OS 9.1 and 
UIQ 3 software platform while tossing in WiFi (802.11b), Bluetooth, a 2 
megapixel camera with ‘photo light’, video calling, FM radio, MP3 and MPEG-4 
player, and a keyboard underneath the flip-down keypad. <br>
<br>
Web browsing is 
accomplished in landscape mode on the 2.8-inch QVGA screen using the new Opera 8 
browser. The unit comes with 80MB free memory and a 64MB Memory Stick Pro DUO 
card. The P990 should be available in Europe and Asia in early 2006.</font></p>
            <p align="justify"><font color="#353535" face="Verdana" size="1">
            <img border="0" src="nokia.jpg" align="right" width="120" height="176"></font></p>
            <p align="justify"><font face="Verdana" size="1"><br>
            <br>
            Want storage for up to 3,000 songs, plus smartphone</font><font face="Verdana" size="1"> 
            functionality in an ultra-portable package? Then check out the Nokia 
            N91 multimedia, the company's latest device optimised for mobile 
            music consumption. With room for up to 3,000 songs on the integrated 
            4-gigabyte hard disk, the Nokia N91 delivers a premier music 
            experience. In addition, the industry standard 3.5mm stereo headset 
            jack and easy transfer of music files from a PC help make the Nokia 
            N91 a connected mobile jukebox. Encased in stainless steel, the 
            Nokia N91 has dedicated music keys on its face, which slide down to 
            reveal the phone keypad. The Nokia N91 is a part of the Nokia N 
            series range, and also contains a 2-megapixel camera for 
            print-quality photos, email support, a full web browser and video 
            sharing.<br>
&nbsp;</font></p>

            <p align="justify"><font color="#353535" face="Verdana" size="1">
            <img border="0" src="samsung.jpg" align="left" width="150" height="201"></font><font face="Verdana" size="1">Samsung’s 
            recently launched D600 is one of the hottest cell phones in the 
            market today. The D600 is equipped with a brilliant active display 
            of 240 _ 320 pixels resolution. Combined with an exceptionally 
            high-quality stereophonic speakers, a TransFlash memory card slot, 
            75 MB built-in memory, Bluetooth and a 2 megapixel camera, the D600 
            is just about what anybody could wish for when it comes to cell 
            phones. Big on features, the phone has a large phonebook, organizer 
            with synchronization options, an MP3 player and videos in MP4 
            format, java games and/or WAP browser. If that’s not enough, the 
            D600E model supports EDGE data transfers, which means you can use it 
            as a fast modem as well. And unlike Samsung’s D500, the camera lens 
            in D600 is situated on the back of the instrument. A tiny mirror 
            that facilitates taking self-portraits and the flash diode 
            accompanies the lens.</font></p>

                    <hr color="#CC3333">
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>&nbsp;