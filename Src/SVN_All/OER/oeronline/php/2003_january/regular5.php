<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - January 2003 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF"><font face="Verdana" size="4" color="#FF0000">
                  Web Scan<br>
                  </font><font face="Verdana" size="2"><br>
                  <b><a href="http://www.viruslist.com">www.viruslist.com</a></b><br>
                  How do you tell the difference between a benign virus 
                  travelling globally though e-mail, or the more worrying ones 
                  that destroy precious data? Viruslist posts the most up to 
                  date virus alerts and advice. If you think you're harbouring a 
                  computer virus, check the virus calendar that displays the 
                  viruses that are currently active on a day-to-day basis. A 
                  handy glossary section to the right of the page helps break 
                  down some of the more obscure terms you may not have come 
                  across before. There's also a useful hoax section detailing 
                  the viruses that aren't actually viruses at all.</font><hr>
            <p><font face="Verdana" size="2">
                  <b><a href="http://www.shanfari.com">www.shanfari.com</a></b><br>
                  This is a corporate website of Shanfari Group of Companies. 
                  Quite a neatly designed and user-friendly site 
                  <a href="http://www.shanfari.com">www.shanfari.com</a> covers all the activities of the group like - 
                  engineering, manufacturing, transport, tourism, automotive, 
                  property management, and others. Of course, the website offers 
                  the visitor a chance to view the group's history, philosophy, 
                  and related information to business. The site opens fine with 
                  a flash player, and surfs smooth as well. By surfing through 
                  it, one may realise that it is purely a corporate site.</font></p>
            <hr>
            <p><font face="Verdana" size="2">
                  <b><a href="http://www.lunarembassy.com">www.lunarembassy.com</a></b><br>
                  With property prices rocketing in some parts of the world, you 
                  may want to look a little further to find your ideal 
                  investment. Lunar Embassy enables you to buy your very own 
                  piece of real estate on a host of different planets. A loop in 
                  the Outer Space Treaty of 1967 has led Lunar Embassy to sell 
                  plots of moonscape. You can buy a one-acre plot and have it 
                  registered under your name for eternity, or so they say. 
                  You're just a couple of clicks away from being able to 
                  purchase your plot. When you've paid, you'll receive a deed of 
                  your lunar acreage and a map detailing where your plot 
                  actually is. But if you really fancy becoming a property 
                  tycoon, OER advises that you come back down to earth.</font><font size="2">. </font>
            </p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>