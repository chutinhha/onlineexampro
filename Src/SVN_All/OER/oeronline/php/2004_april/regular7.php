<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - April 2004 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF">
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">Web 
            Scan</font></p>
            <p class="MsoPlainText"><font face="Verdana" size="1">Summer is 
            nearing and people are busy making vacation plans. For those who 
            need help, OER&nbsp; lists websites which can help you find your dream 
            destination</font></p>
            <p class="MsoPlainText" align="center">
            <font face="Verdana" size="1">
            <a target="_blank" href="http://www.iexplore.com">
            http://www.iexplore.com</a></font></p>
            <p class="MsoPlainText" align="center">
            <img border="0" src="iexplore.jpg" width="250" height="179"></p>
            <p class="MsoPlainText"><font face="Verdana" size="1">This year, 
            take your company's meetings and employee incentives beyond the 
            ordinary! The site designs corporate adventures, meetings and 
            adventure itineraries, to fit your company's business objectives and 
            travel needs. It's also an encyclopedia for off-the-beaten-path 
            travel, dedicated to helping you research and book a truly unique 
            vacation. Iexplore offers a broad selection of high-quality trips, 
            combined with the hands-on expertise of seasoned adventure 
            travellers, to deliver the best solution for all your travel needs. 
            Approved by the National Geographic, this site has detailed trip 
            descriptions, in-depth research material, reviews from past 
            travellers, health and vaccination information, gear, luggage and 
            guidebooks. iExplore ensures that each company that they represent 
            has an exemplary record in both safety and customer satisfaction.</font></p>
            <hr color="#000000" size="1">
            <p class="MsoPlainText" align="center">
            <font face="Verdana" size="1">
            <a target="_blank" href="http://www.expedia.com">
            http://www.expedia.com</a></font></p>
            <p class="MsoPlainText" align="center">
            <font face="Verdana" size="1">
            <img border="0" src="expedia.jpg" width="250" height="180"></font></p>
            <p class="MsoPlainText"><font face="Verdana" size="1">This site 
            offers tons of choices, be it golf destination travel, beach travel 
            or romantic travel. Expedia might not be very vast in dimension but 
            it retains an intelligent and friendly feel, with loads of cultural 
            insights. It offers one of the most comprehensive flight options 
            available online and also allows customers to dynamically build 
            complete trips that combine flights, lodging, ground transportation, 
            and destination activities. They also customise vacations to premium 
            destinations such as Hawaii, Mexico, Europe and the Caribbean. 
            Expedia also proposes plenty to see and do when you get to your 
            vacation destination like boat tours, show tickets, golf bookings, 
            airport shuttles, guided kayak tours, and more. You can even add a 
            wedding to your trip - plus a cancellation waiver if you think you 
            might get cold feet!</font></p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>