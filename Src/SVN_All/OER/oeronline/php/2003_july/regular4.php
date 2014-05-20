<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - July 2003 ::</title>
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
          </center>
            <td width="70%" bgcolor="#FFFFFF" valign="top">
              <p align="left"><font face="Verdana" size="4" color="#FF0000">Web 
              scan </font>
              
              <center>
                    <p align="left"><font face="Verdana" size="1"><b>This month, 
                    OER reviews Websites dedicated to the development of human 
                    resources worldwide, providing information, articles, 
                    research papers, journals and other tools to improve HR 
                    management in your organisation. </b></font></p>
                    <p align="left"><font face="Verdana" size="1"><b>People 
                    practices<br>
                    </b><a href="http://www.hrimmall.com">
                    http://www.hrimmall.com</a></font></p>
                    <p>
                    <img border="0" src="WS-Hrim.jpg" width="250" height="225"></p>
                    <p align="left">
                    <font face="Verdana" size="1">HRIMMall.com consolidates 
                    information from around the world on the subjects of Human 
                    Resource Information Management and Technology, to provide a 
                    &quot;one-stop service&quot; for practitioners, programmers, business 
                    analysts, and anybody else interested in this field. Besides 
                    an extensive recruiter directory, the site serves as a 
                    platform for discussion forums. It lists associations 
                    related to the field of HR to encourage a &quot;systematic study&quot; 
                    of HRD theories, processes, and practices; to disseminate 
                    information about HRD; to encourage the application of HRD 
                    research findings; and to provide opportunities for social 
                    interaction among individuals with scholarly and 
                    professional interests in HRD. Also listed are HR events and 
                    articles on the subject. The site is a gateway to other HR 
                    sites so you can be sure that your search can be exhausting.
                    </font></p>
                    <p align="left"><font face="Verdana" size="1"><b>Manual for 
                    employment</b><br>
                    <a href="http://www.hrmguide.net/">http://www.hrmguide.net/</a></font></p>
                    <p>
                    <img border="0" src="WS-hrm-.jpg" width="250" height="179"></p>
                    <p align="left"><font face="Verdana" size="1">The HRM Guide Network site is a worthy destination for 
                    road-weary employers and job seekers. Besides, it has a 
                    comprehensive archive of HR-related articles, HR research, 
                    HR books plus general Websites on books, jobs and travel. 
                    With a section each dedicated to articles on HR practices in 
                    Australia, Canada, the UK and the US besides HR practices 
                    worldwide, hrmguide.net provides and overview of HRM and 
                    details topics like HRM and the business environment, the 
                    global employment market, organisational and strategic HRM, 
                    performance management, employee relations - the works. The 
                    section on plans and resources deserves a special mention 
                    due to its comprehensiveness. </font></p>
                    <p align="left"><font face="Verdana" size="1"><b>Harnessing 
                    HR </b><br>
                    <a href="http://www.human-resources.org/">
                    http://www.human-resources.org/</a></font></p>
                    <p>
                    <img border="0" src="WS-Human.jpg" width="250" height="179"></p>
                    <p align="left"><font face="Verdana" size="1">The Human Resources Learning Centre of the site provides 
                    information on the latest HR software and information system 
                    innovations, policy and law, best practices, benchmarking 
                    studies and re-engineering. A comprehensive site, human-resources.org 
                    has links to global HR associations, a listing of the 
                    upcoming HR events, offers online subscriptions to HR 
                    magazines, a library with links to over 400 free articles 
                    and studies, mailing lists and newsletter links, HR policy 
                    and employment laws and links to other reference sites. The 
                    software and information link leads to a page with some 
                    interesting Web-based tools like HR Manual, hiring tests, 
                    temperament tests and other online psychometric tests.</font></p>
                    <hr color="#CC3333">
                    </td>
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