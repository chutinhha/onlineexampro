<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - July - 2005 ::</title>
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
            Auto News</font></p>
            <p align="justify"><font face="Verdana" size="1">
            <img border="1" src="auto_news1.jpg" width="150" height="102" align="left" hspace="5"><font color="#0000FF"><b>M-Class arrives 
            in Oman</b></font><br>
            Mercedes-Benz sowed the seeds of a new segment seven years ago with 
            the introduction of the original M-Class. With its cultivated 
            performance, the second-generation vehicle, which had its Middle 
            East premiere at the Bahrain Grand Prix, is a quantum leap forward. 
            The eight-cylinder unit at the heart of the ML 500, which now 
            delivers 306 hp, heads the engine range for the new M-Class. A new 
            arrival under the bonnet is the V6 petrol unit powering the ML 350. 
            In standard form, the new M-Class comes with permanent four-wheel 
            drive and 4ETS traction systems. Mercedes-Benz has taken these to 
            the next level by incorporating additional functions such as a 
            downhill driving aid, Start-off Assist and the off-road ABS system.</font></p>
            <p align="justify"><font face="Verdana" size="1">
            <br>
            <br>
            <font color="#008000">
            <b>The power of seven</b><img border="1" src="auto_news2.jpg" width="150" height="83" align="right" hspace="5"></font><br>
            BMW Group and Al Jenaibi International Automobiles recently launched 
            the BMW 7 Series in the Sultanate. The new 7 Series includes 
            significantly enhanced performance using a new range of power units, 
            optimised suspension features, updated iDrive control system, and 
            equipment raised to a new, unprecedented level. <br>
            <br>
            Externally, the car’s design has been refined to accentuate the 
            car’s sporting performance and dynamic character. Within the 
            interior, improvements have been made to the internal design, 
            materials and colours. The launch comes in the wake of the news that 
            Oman was the fastest growing market for the BMW group in the Middle 
            East in the first four months of this year, posting a 35 per cent 
            growth in sales compared to the same period last year. For three 
            consecutive years, the flagship of the BMW brand has been the 
            best-selling model for the company in the region. With this update, 
            the popular 7 Series continues to act as a pioneer in the luxury 
            performance segment.</font></p>
            <p align="justify"><font face="Verdana" size="1">
            <br>
            <br>
            <font color="#CC3333">
            <b>
            <img border="1" src="auto_news3.jpg" width="150" height="103" align="left" hspace="5">Skoda Auto on top </b>
            </font><br>
            Skoda Auto was recently ranked a close second overall, just one 
            point away from the first position, for the second year running in 
            the 2005 J.D. Power Survey of Customer Satisfaction in the United 
            Kingdom. This year also marks the tenth year in succession that 
            Skoda has remained in the Top Five position among all manufacturers.<br>
            <br>
            In addition, Skoda is the only brand to have two models in the top 
            five. The Fabia and the Octavia were jointly ranked fourth among all 
            models in the survey, while the Octavia model topped in the Family 
            Car category, also for the second consecutive year.</font></p>
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