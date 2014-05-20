<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - December 2003 ::</title>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">











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
              <p align="left"><font face="Verdana" size="4" color="#FF0000">Web 
              scan </font>
              
              <center>
                    <p align="left"><b><font face="Verdana" size="1">This month, 
                    OER reviews Websites that provide a window to historical 
                    world events and help in understanding the issues and topics 
                    that impact us Robert M. Crompton, General</font></b></p>
                    <p>
                    <img border="0" src="trip.jpg" width="250" height="183"></p>
                    <p align="left"><font face="Verdana" size="1"><b>Trip in 
                    time</b><br>
                    <a href="http://www.keesings.com">http://www.keesings.com</a></font></p>
                    <p align="left"><font face="Verdana" size="1">Keesing’s 
                    Online Service is the Web-based version of Keesing’s Record 
                    of World Events / Keesing’s Contemporary Archives. The 
                    Website provides accurate, objective and authoritative 
                    coverage of significant political, historical, economic and 
                    social events throughout the world. The site is particularly 
                    known for its unparalleled treatment of current affairs. It 
                    keeps a tap on all major international organisations and 
                    events. News and events are presented in a very concise and 
                    balanced way for the ordinary surfer. Complex and long 
                    events that may have unfolded over several weeks or months 
                    are edited and presented in a clear way that offer users a 
                    “first take on history”. The database is extensive and the 
                    table of contents helps the surfer search for events 
                    chronologically or geographically. With a username and 
                    password, you can log on and get accurate coverage of world 
                    events. Besides recording world events, the Website also has 
                    an Annual Register, Worldwide Government Directory, Profiles 
                    of Worldwide Government Leaders and Worldwide Directory of 
                    Defence Authorities. </font></p>
                    <p><img border="0" src="event.jpg" width="233" height="178"></p>
                    <p align="left"><font face="Verdana" size="1"><b>Event index</b><br>
                    <a href="http://www.wwevents.com/">http://www.wwevents.com/</a></font></p>
                    <p align="left"><font face="Verdana" size="1">This site is a 
                    comprehensive guide to world wide events. Besides the most 
                    hot and talked about topics of the day, the site has loads 
                    of information of general interest, shopping and fun. The 
                    site is easy to navigate. All you have to do is click on the 
                    continent of your choice and then just filter your search by 
                    picking the right country. For a quick events search, just 
                    pick the time of the event and the place. A whole list of 
                    world events will fill your screen. his favourite cuisine 
                    and the catering services industry in Oman.</font></p>
                    <p><img border="0" src="hip.jpg" width="230" height="177"></p>
                    <p align="left"><font face="Verdana" size="1"><b>Hip 
                    happenings</b><br>
                    <a href="http://www.eventsworldwide.com/">
                    http://www.eventsworldwide.com/</a></font></p>
                    <p align="left"><font face="Verdana" size="1">
                    EventsWorldWide.com is a guide to arts, sports, 
                    entertainment and special events around the world. It is an 
                    extensive database to find out the latest, hip and hot 
                    events happening around the world. So, if you are an admirer 
                    of art or an enthusiastic sports person, the site can give 
                    you all the information that you need. Besides, you can find 
                    details of locations, dates, and how to get tickets for 
                    leading, unusual, and exotic arts sports, entertainment or 
                    any kind of events that’s about to take place. The site is 
                    available in five languages: English, French, German, 
                    Italian and Spanish. It definitely is a good way to have 
                    fun.</font></p>
              </center>
              
              <center>
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