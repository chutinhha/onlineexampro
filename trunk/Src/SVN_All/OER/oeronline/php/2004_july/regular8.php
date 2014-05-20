<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - July - 2004 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF">
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">Web 
            Scan<br>
            <br>
            </font><b><font face="Verdana" size="1">An</font></b><font face="Verdana" size="1"><b> 
            increasing number of corporate houses are turning to adventure 
            activity to improve their employees’ self-confidence and hone 
            managerial skills. This month, OER reviews Websites that specialise 
            in corporate games</b></font></p>
            <p align="center"><b><font face="Verdana" size="1">
            <a target="_blank" href="http://www.corpgames.com">http://www.corpgames.com</a></font></b></p>
            <p align="justify"><font face="Verdana" size="1">
            <img border="0" src="web2.jpg" align="left" hspace="6" width="150" height="112">This 
            is the Website of Corporate Games, Inc., where one can find 
            information about the fastest, most efficient and entertaining 
            corporate games. Just a quick glance at the Website and you can help 
            yourself with all the material needed before organising your event. 
            Here, clients are provided with proven training techniques and a 
            wide variety of team building activities. The programmes offered are 
            tailored according to the specific needs and objectives of the 
            clients. Facilitators employed by Corporate Games, Inc. are 
            corporate trainers, educators, and business professionals. They are 
            people with great skills, who can train the clients in team building 
            activities, and ensure that they have a high quality experience with 
            lessons that can be taken back to the workplace. A whole list of 
            games -- both outdoor and indoor -- is available on the Website.
            </font></p>
            <hr color="#CC3333" size="1">
            <p align="center"><b><font face="Verdana" size="1">
            <a target="_blank" href="http://www.corporate-games.com">http://www.corporate-games.com</a></font></b></p>
            <p align="justify"><font face="Verdana" size="1">
            <img border="0" src="web1.jpg" align="right" hspace="6" width="150" height="120">This 
            Website offers an ultimate mix of sports, business and tourism. The 
            Website reveals that this group organises the world's most important 
            and largest corporate multi-sports festivals. Their games have been 
            held in all the continents, and important cities which have played 
            host to their games are London, Geneva, Johannesburg, San Francisco 
            and Sydney. According to their Website, the group is very popular 
            among business houses. In one of their events &quot;Weekend Sports 
            Warriors&quot;, tens of thousands of clients representing thousands of 
            organisations worldwide participated. Being a part of Corporate 
            Games helps in boosting morale of the employees and increases their 
            confidence and loyalty. Corporate Games also welcomes competitors 
            with disabilities. It is a perfect place for corporates to come for 
            business fitness. The Website features all the information about 
            them, like the games available, their features, corporate benefits 
            and business opportunities. </font></p>
            <hr color="#CC3333" size="1">
            <p align="center"><b><font face="Verdana" size="1">
            <a target="_blank" href="http://www.sabrehq.com/index.htm">http://www.sabrehq.com/index.htm</a></font></b></p>
            <p align="justify"><font face="Verdana" size="1">
            <img border="0" src="web3.jpg" align="left" hspace="6" width="150" height="119">SabreHQ 
            is the Website of the Sabre group. The team at Sabre can deliver 
            stunning team building events just about anywhere in the world. The 
            group offers team building games, activities, exercises and ideas. A 
            whole range of exciting and innovative team building activities are 
            provided to the clients. These events can be delivered for the 
            entire company, specific business units or any project team or group 
            within an organisation. The mixture of action and learning is 
            especially targeted to enhance the client's professional and 
            personal abilities. The group also helps individuals, management 
            teams and functional groups in increasing awareness about their own 
            operating methods and behaviours. The Website offers a comprehensive 
            theory that underpins Sabre's award winning team building concepts. 
            All the information about the group, their customer list, team 
            building exercises, photo gallery, and their office locations is 
            available on the Website.</font></p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>