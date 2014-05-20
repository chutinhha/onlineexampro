<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - November- 2005 ::</title>
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

<p align="justify" dir="ltr"><font face="Verdana" size="2" color="#C0C0C0">:: 
Car Talk<br>
</font><font face="Verdana" size="4" color="#FF0000">
<br>
</font><b><font face="Verdana" size="5" color="#FF0000">
Small beauty</font></b></p>

<p align="justify" dir="ltr"><font face="Verdana" size="1">
<b>Neat and eye-catching, the new Toyota Yaris that packs quite a punch in its 
small body, has been making waves since its unveiling recently</b></font></p>
<p align="justify" dir="ltr">
<font face="Verdana" size="3"><b>
<img border="0" src="cartalk.jpg" align="right" hspace="5" vspace="2" width="180" height="86">S</b></font><font face="Verdana" size="1">mall 
is beautiful, they say. The new Toyota Yaris seems to be a perfect example of 
this dictum. Small and compact, the Yaris rewrites the rules where small 
automobiles are concerned. The 1.3 litre engine car delivers much more than what 
you’d expect. Fast, efficient and stylish with a near sporty feel, the Yaris 
provides you with some real driving pleasure. <br>
<br>
Unveiled first during the Auto Expo held at Muscat in September this year, the 
car has been getting rave reviews from all quarters. It was only after a test 
drive in the Yaris that we realised why so many were going gaga over the new 
car. Here’s a checklist of the five most important features in a car and how 
Yaris scores in all these: <br>
<br>
<b>Design:</b> Neat, near sporty and eye-catching. Although the Yaris falls into 
the small vehicles category it does not give off a stuffy, boxy image that such 
cars usually do. And it certainly does turn heads. In fact, there were quite a 
few glances aimed in our direction on the road. <br>
<br>
<b>Exterior: </b>For a small car, the Yaris is quite big on the exterior 
styling. It has an almost in-your-face look, with a blunt nose and racy profile. 
It’s hard to miss the wheelbase as it appears big for a small car with short 
front and rear overhangs, which lend it a distinct look.<br>
<br>
<b>Interior: </b>This is one of the most impressive features of the Yaris. If 
you think size matters, then you need to get closer to the Yaris. This is a car 
with a small frame but a large heart, or rather, interiors! Yaris is the epitome 
of spaciousness. And by spaciousness, we mean all aspects. There’s enough leg 
space for everyone; even with the driver’s seat pushed back, the backseat 
passenger can enjoy quite a comfortable ride. The roof is high at 1530mm and 
gives the car a very roomy feel. <br>
<br>
Cup and bottle holders, cubbyholes, covered storage areas on the dash for both 
driver and front passenger, flip-down bin to the driver's left, door pockets and 
pockets on the back of the front seats provide ample storage space, another plus 
feature the Yaris.<br>
<br>
<b>Safety: </b>For a car in this entry-level segment, Yaris sets a precedent 
with the inclusion of airbags for both the driver and front passenger. The 
brakes are exceptionally strong and powerful Other top end safety features 
include ABS with BA.<br>
<br>
<b>Performance:</b> The Yaris moves with precision and is quite a delight to 
handle. It can be safely said that it is a great city car that can weave in and 
out of the growing traffic blocks in Muscat. The Yaris gives the driver the 
feeling of being in control. Power steering only adds to the experience.<br>
<br>
In short, the Yaris packs quite a punch in its small body. And only experience 
can prove it!</font></p>

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
?>&nbsp;