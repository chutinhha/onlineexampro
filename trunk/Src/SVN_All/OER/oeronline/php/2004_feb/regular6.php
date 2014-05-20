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
            <td width="70%" bgcolor="#FFFFFF">
            <p align="left"><font face="Verdana" size="4" color="#FF0000">Web 
            scan<br>
                  </font><b><font face="Verdana" size="1">
                  <br>
                  This month, OER profiles Websites profiling event management 
            companies across the globe</font></b></p>
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.meetingexpectations.com">
            http://www.meetingexpectations.com</a></font></p>
            <p align="center">
            <img border="0" src="im16.jpg" width="200" height="158"></p>
            <p align="justify"><font face="Verdana" size="1">The online address 
            for Meeting Expectations, a full service conference, event planning, 
            event management, event marketing and association management 
            company, this Website provides resources for planning, delivering, 
            reviewing, enabling and sustaining conferences and meetings. The 
            site is divided into different sections that provide assistance for 
            marketing of events and management of venues besides helping create 
            ÔWOW' events. Meeting management services includes pre-show event 
            planning, on-site and logistics management, education and program 
            management, site selection and contract negotiation, exhibitor 
            management and other services. Meeting Expectations manages 
            conferences, trade shows and events globally. The site plays an 
            integral role in anticipating and meeting its associations' 
            membership needs.</font></p>
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.globalexec.com">
            http://www.globalexec.com</a></font></p>
            <p align="center">
            <img border="0" src="im17.pg.jpg" width="200" height="154"></p>
            <p align="justify"><font face="Verdana" size="1">Global Executive is 
            a marketing and management company specialising in events, 
            conferences and meetings. It develops conferences and provides 
            support for meetings and training events for conference and training 
            companies, corporations and professional associations. The companies 
            skills and processes result in a high level of added value and 
            financial return for its clients and bring a degree of 
            professionalism unique in the industry. The Website offers flexible, 
            integrated services ranging from event marketing and program 
            placement, through full logistics support to staff, speakers, 
            attendees and exhibitors (registration, discounted hotel 
            registration etc.) It lists the benefits of working with the 
            company, provides case studies in event management. </font></p>
            <p align="center"><font face="Verdana" size="1">
            <a target="_blank" href="http://www.partypop.com">
            http://www.partypop.com</a> </font></p>
            <p align="center">
            <img border="0" src="im18.jpg" width="200" height="168"></p>
            <p align="justify"><font face="Verdana" size="1">PartyPop.com 
            continues to aggressively reinforce its position as the world's 
            number one wedding, party, and corporate events Website. The site 
            provides links to over 60 additional party and event related 
            Websites, making it a one-stop party and events packager of services 
            to the public. The site has Party Themes, Party Vendors and Party 
            Cost Calculator, to help put a party together efficiently and 
            cost-effectively. The parties that the site helps organise include 
            anniversary, baby shower, bachelor, bachelorette, baptism, bar 
            mitzvah, bat mitzvah, birthday, bridal shower, briss, Christian 
            holidays, confirmation, corporate event, corporate picnic, 
            engagement, family reunion, quinceanera, school reunion, sweet 
            sixteen, wedding and more. Besides information on these categories 
            and providing help in organising these parties, the site provides 
            party tips as well. The Website helps you explore a variety of ideas 
            of what to do at a party and how to do it.</font></p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>