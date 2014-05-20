<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - November - 2004 ::</title>
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
                    </font><font face="Verdana" size="2" color="#C0C0C0">Web 
            Scan</font><font face="Verdana" size="4" color="#FF0000"><br>
            <br>
            </font>
            <font size="1" color="#FF0000"><font face="Verdana"><b>OER reviews 
            three Websites relating to the world of corporate and academic 
            leadership</b></font></font></p>

            <p align="center"><b><font face="Verdana" size="1">
            <a href="http://www.ccl.org">www.ccl.org</a></font></b></p>

            <p align="center">
            <img border="0" src="im116c.jpg" width="200" height="152"></p>

            <p align="justify"><font face="Verdana" size="1">This is the Website 
            of Centre for Creative Leadership (CCL), an internationally 
            recognised organisation for understanding the leadership 
            capabilities of individuals and organisations from across sectors. 
            The mission of the organisation is to advance the understanding, 
            practice and development of leadership for benefit of society. CCL 
            offers a portfolio of 14 open-enrolment programmes for individuals, 
            teams and organisations. Its most important programmes are for 
            business professionals and include Leadership Development Programmes, 
            Advanced Topics in Leadership dealing with specific topics, and 
            Human Resource Development Programmes that target human resource 
            managers and executives. The CCL Website offers a range of 
            assessment tools, online resources and simulations that can help 
            individuals and organisations increase self-awareness, facilitate 
            their learning, enable development and enhance their effectiveness.</font></p>

            <hr color="#CC3333" size="1">
            <p align="center"><font face="Verdana" size="1"><b>
            <a target="_blank" href="http://www.managementvitality.com">
            www.managementvitality.com</a></b></font></p>

            <p align="center">
            <img border="0" src="im116b.jpg" width="200" height="161"></p>

            <p align="justify"><font face="Verdana" size="1">
            Managementvitality.com offers leadership tools that help in personal 
            growth and in improving organisational teamwork. The site offers the 
            Adizes Methodology in online courses. Its e-Learning programmes are 
            based on a proven and unique set of leadership insights. Claming to 
            be much different from other e-courses, managementvitality.com’s 
            e-Learning programmes are designed to optimise the users’ 
            experience. The Website has programmes that have carefully crafted 
            text, graphics and interactions combined to highlight core 
            leadership concepts. The site carries detailed information about the 
            institute, its programmes, its client organisations, associates and 
            publications. A surfer can also get the latest ManagementVitality 
            news and can ask for free monthly Adizes insights. The site also 
            provides information on new and upcoming courses.</font></p>

            <hr color="#CC3333" size="1">
            <p align="center"><font face="Verdana" size="1"><b>
            <a target="_blank" href="http://www.academicleadership.org">
            www.academicleadership.org</a></b></font></p>

            <p align="center">
            <img border="0" src="im116a.jpg" width="200" height="161"></p>

            <p align="justify"><font face="Verdana" size="1">This is an online 
            journal which contains a lot of material, including research papers, 
            essays, and bibliographic information as well as a growing list of 
            links to help those involved in academic leadership. The journal is 
            updated on a quarterly basis and the surfers can check the current 
            and the previous issues in the archives. Subscribers receive 
            notification when new issues are published in the journal, and can 
            also view and post their classifieds in the Journal of Academic 
            Leadership. Another link on the site takes the user to a number of 
            Websites like that of the James MacGregor Burns Academy of 
            Leadership, American Association for the Advancement of Science, 
            American Association for Higher Education and the American Society 
            for Information Science etc. The site is worth a visit.</font></p>

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