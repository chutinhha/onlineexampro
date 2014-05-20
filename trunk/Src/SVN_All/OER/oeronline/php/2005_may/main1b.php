<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - May - 2005 ::</title>
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

<p align="justify"><b><font style="font-size: 16pt" face="Verdana">Flughafen 
Zürich<br>
<br>
</font></b>
<font face="Verdana" size="1">
<img border="0" src="main1b.jpg" align="left" width="200" height="115"></font><b><font face="Verdana" size="1">Hub 
Zürich: A Unique model</font></b><br>
<font face="Verdana" size="1">In addition to its importance as a national and 
international transport hub, Zürich Airport is also an important commercial 
centre. Around 70,000 people use the airport daily as holidaymakers, business 
travellers, visitors, conference participants, shoppers and employees.<br>
<br>
Unique (Flughafen Zürich AG)—the privatised company responsible for operating 
Zürich Airport—is one of the largest real estate owners in Switzerland and 
leases out offices, storage areas, shops and conference rooms. A wide spectrum 
of users pass through the travel hub and commercial centre that is the airport, 
and this daily flow of people represents an attractive target audience for the 
marketing of products and services. Unique has at its disposal some of the most 
attractive advertising localities and high-traffic promotion sites.<br>
<br>
In the area of flight operations, Unique has strong ties with existing and 
potential partners. The central location of Zürich Airport in the heart of 
Europe combined with its high-quality infrastructure, means that Zürich as a 
transport hub offers an attractive base and is a frequently visited destination. 
Zürich is an important passenger airport and freight centre, and serves the 
broader surrounding economic area, including southwestern Germany.<br>
<br>
Unique ended 2004 with a profit of CHF17.3 million (RO5.6 million) compared to 
CHF3.8 million (RO1.23 million) in the previous year. The company itself employs 
approximately 1,200 people while, together with 180 airport partners with a 
total of roughly 20,000 employees, it makes sure that the air travel 
infrastructure at Zürich Airport runs smoothly. <br>
With 1.3 per cent additional passengers, revenues rose by 13.5 per cent to 
CHF637 million (RO206.5 million) in 2004 compared to CHF562 million (RO182 
million) in 2003. Despite significant new infrastructure deriving from the 5th 
expansion stage, operating costs were only marginally above previous years. <br>
<br>
Unique managed to reduce its net debt by CHF121 million, even during the year of 
completion of the 5th expansion stage. The business year 2004 was dominated by 
the completion of the 5th expansion stage, which was celebrated with the opening 
of the Airside Centre on September 15, 2004. Passenger figures saw the first 
annual gain in three years. The 12.1 per cent increase in local passengers 
managed to more than overcompensate for the loss in transfer passengers. <br>
<br>
The number of aircraft movement saw a further reduction in the year under 
review. Aviation business contributed 57 per cent and non-aviation business 43 
per cent to the revenues. Aviation revenues rose 18.9 per cent, especially due 
the adjusted passenger fees as of September 2003 while non-aviation revenues 
rose 7 per cent mainly attributable to the implementation of new infrastructure 
during 2003/04 (parking, Dock-E, expansion of airport shopping).<br>
<br>
</font>
<font face="Times New Roman" size="1">&#9632; </font>
<a href="main1b.php" style="text-decoration: none">
<font face="Verdana" size="1">Swiss Air–Lufthansa tie-up:The inside story</font></a><font face="Verdana" size="1"><br>
</font>
<font face="Times New Roman" size="1">&#9632; </font>
<font face="Verdana" size="1">
<a href="main1a.php" style="text-decoration: none">Swiss will survive</a></font></p>

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