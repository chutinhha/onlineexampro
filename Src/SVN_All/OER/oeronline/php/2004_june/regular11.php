<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - June - 2004 ::</title>
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
            <p align="justify"><font face="Verdana" size="4" color="#FF0000"><b>
            Music Reviews</b><br>
            <br>
                  </font><b><font face="Verdana" size="3" color="#FF0000">A 
            Different Track</font></b><font face="Verdana" size="1"><b><br>
            <i>By DJ Max </i><br>
            <br>
            </b>Rather than simply giving a list of artists whose names and 
            music you will all be familiar with, it is my intention to showcase 
            those artists who are not in the public eye, who perhaps appeal to a 
            more mature, discerning audience and who, only after exhaustive 
            hours spent researching and listening through all genres of music 
            will you discover. <br>
            <br>
            Since most professional people do not have the time to spend 
            listening to the infinite tomes of music available to us, endlessly 
            trying to discern the good, from the bad, from the downright ugly, I 
            propose to use my knowledge and experience as a DJ and &quot;mood 
            manager&quot; to help guide and steer the reader into collecting a series 
            of less commercial, but ultimately, far more rewarding songs and 
            works produced by artists from all over the world. <br>
            <br>
            Some of the choices may be new releases, but amongst them will be 
            many older titles, some familiar, though many quite obscure. 
            Although you may be hard pressed to find them in a regular record 
            store, you will be almost certain to find them on the net, we 
            encourage you to stay legal while shopping for music...Enjoy! <br>
            <br>
            <br>
            <b>1. Club Sodade - CESARIA EVORA</b> Cesaria Evora is one of the 
            Africa's most  
            <img border="0" src="music_re1.jpg" align="right" hspace="5" vspace="2" width="70" height="70">successful exports, having released a string of 
            commercially successful albums. Hailing from Capo Verde, this diva 
            has gained international renown for her powerful and unique voice, 
            set against warm afro-latin rhythms. Here her songs are remixed by 
            some of the most renowned producers in the genres of dance and 
            electronic music. The result is a fantastic collection of songs, 
            each one differing in style and tempo, yet all bearing her 
            remarkable signature vocal. <br>
            <br>
            <br>
            <br>
            <b>2. Equinox - SERGIO MENDES &amp; BRASIL</b> 66 This is the second 
            album from th<img border="0" src="music_re2.jpg" align="right" hspace="5" vspace="2" width="70" height="69">e famed Brazilian bossa composer and his troupe and is 
            arguably one of his best. Packed with songs that immediately conjure 
            up images of a warm Latin American sunset, it swings along 
            lightheartedly with surprising and exciting variations in feeling 
            and pace, and forms the perfect background listening for any 
            occasion. Guaranteed to make you smile! <br>
            <br>
            <br>
            <br>
            <b>3. Life Size - SOULSTANCE</b> If you're in the mood for some 
            jazz, then you wou<img border="0" src="music_re3.jpg" align="right" hspace="5" vspace="2" width="70" height="73">ld be hard pressed to beat the latest album from 
            this superb Italian duo. It combines soft, gentle acid jazz rhythms 
            with sultry yet catchy vocals, making you feel instantly familiar 
            with each song, and providing a wonderful companion to any cocktail 
            party. <br>
            <br>
            <br>
            <br>
            <b>4. The Richest Man In Babylon - THIEVERY CORPORATION</b> One of 
            the most en<img border="0" src="music_re4.jpg" align="right" hspace="5" vspace="2" width="70" height="70">gaging albums in recent years. This is their third album, 
            and just as in their previous releases, they've managed to take 
            lounge music to exciting new heights. It is filled with organic 
            energy and tasteful eclecticism, incorporating reggae, Eastern 
            influences, and African styles into their already tightly-woven 
            grooves. Using both electronic beats and real instruments, Thievery 
            Corporation weave together a multitextured album that cements the 
            duo's reputation as one of the classiest recording acts around. Put 
            on a pair of headphones, lie back and take a trip around the world 
            without ever leaving your home!
                    </font></p>
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