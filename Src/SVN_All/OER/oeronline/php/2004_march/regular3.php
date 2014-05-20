<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - March 2004 ::</title>
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
            <p align="justify"><font face="Verdana" size="4" color="#FF0000">
            gizmos</font></p>

<p align="justify"><font face="Verdana" size="2"><b>Tee party<br>
</b></font><font face="Verdana" size="1"><br>
Nearly all business people agree that golf is good for deal-making but research 
in the US suggests that
almost as many confess to cheating when playing the sport while more women than 
men claim to have
made their biggest ever deal on the golf course. There is no doubt that Oman’s 
new golfing greens that
are under development [at Muscat Golf &amp; Country Club and The Wave] will also 
reveal valuable insights
about the behaviour of executives working in the country. <br>
This issue, OER presents a range of gadgets 
that will boost your golfing game making you less prone to getting angry and 
throwing clubs. If you like the sport but haven’t got the patience to practice 
to become the next Tiger Woods, there are also a few just-for-fun office gadgets 
to keep prospective clients entertained when they come to visit.</font></p>

<p align="justify"><font face="Verdana" size="1"><b>Desk Golf Game</b><br>
<b>
<img border="0" src="im12.jpg" align="left" hspace="5" vspace="2" width="150" height="76"></b>Never able to find time to get out for a quick round? No matter,
now you can re-live the joy of a day at PDO’s golf course without
getting sand in your shoes (though also without the breathing in
the fresh sea air, but you can’t have everything). The challenge: You
have to get a hole in one and there’s no chipping in out of the rough
here. The water and sand hazards rotate in opposite directions, so
timing and putter head speed are crucial. It’s absorbing, and sufficiently
difficult to keep you entertained for far too long.<br>
Price: £14.99 (RO9)</font></p>

            <p align="justify"><font face="Verdana" size="1"><b>Excalibur LCD
Golf Game
</b><br>
            <b>
            <img border="0" src="im14.jpg" align="right" width="125" height="126"></b>Why lug and old bag round a
course for miles when you can
get the same sense of achievement
from a comfy chair?
There’s no fear of putting your
back out either when the only
things that will get tired are your
thumbs. The game has loads of realistic
sound effects and a spoken commentary
too. You can play an 18-
hole tournament or just whack a few
balls for practice (which is after all what lunch breaks are
for). Choose the right club for the stroke from a full bag.
Select the type of ground and wind conditions and
check your score anytime. No silly clothes or ludicrous
green fees required.
<br>
            Price: £24.99 (RO15)</font></p>
            <p align="justify"><font face="Verdana" size="1"><b>
            <img border="0" src="im11.jpg" align="left" hspace="5" width="100" height="111">Tracer Twilight Golf Ball</b><br>
A great gizmo that many a golfer has probably waiting for
someone to invent for a while. Apart from the obvious fact
that playing at night with this would be fun, it’s also excellent
for ball location, if you don’t always plop your ball
smack in the middle of the fairway. The official
size and weight of the US golfing
association, the ball has a tough Surlyn
cover and a super-bright internal LED
that flashes for five minutes after contact.
It has a battery life of 80 hours,
which will keep you flashing (as it
were) for about 1,000 strokes. The ball
also comes with two tees and a carrying
pouch for the ball.
Price: £12.99 (RO8)</font></p>
            <p align="justify"><font face="Verdana" size="1"><b>
            <img border="0" src="im13.jpg" align="right" width="125" height="118">PT Golf set
</b><br>
            Executives can have plenty of fun with this indoors golf set.
With its clever telescopic putter, aluminium ‘hole’, and a
pair of balls, the golf set comes in a handy black zip up case
ready to be taken anywhere
(though perhaps
not to the golf club). Wile
away hours of fun perfecting
your putting technique,
far from the prying eyes of golf
snobs, and dull people who
think you should be doing something
more constructive
with your time.
Price: £39.95 (RO24)</font></p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>