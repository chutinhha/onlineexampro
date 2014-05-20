<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - January - 2006 ::</title>
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
PASSING THROUGH<br>
</font><font face="Verdana" size="4" color="#FF0000">
<br>
</font><b><font face="Verdana" size="5" color="#FF0000">Ah, so green a gift!</font></b><font face="Verdana" size="4" color="#FF0000"><br>
<br>
</font><font face="Verdana" size="3"><b>G</b></font><font face="Verdana" size="1">olf 
is a very popular pastime, whether it’s simply viewed as a social pursuit or a 
competitive sport. Believe it or not, golf is a unique pastime as well. Let us 
put it in perspective. Where else on earth can you have acres and acres of 
green-topped, well manicured landscape under your feet and on the horizon, 
sometime crimsom red, sometime pure azure and occasionally puffs of clouds 
wading across above one’s head? Truly, it is God’s gift to mankind. Although 
motorized levitation across the course from hole to hole has become a common 
sight these days, there is nothing like putting one’s pair of legs to good use. 
Aren’t they meant for walking? <br>
<br>
The concept of golf is based on the premises that it is a game to be enjoyed. 
Learning and playing golf should be fun, not frustrating! Let us not focus on 
the results. Just enjoy the thrill of walking and communicating with oneself. 
Yes, that happens a great deal on the course as golf aficionados traverse the 
vast expanse to finish the 18-holes. Marathon venture? No doubt. The very fact 
that many undertake this arduous exercise and stick to it for life amply 
demonstrates the game’s charm. Is it a game? Or a lifestyle? The response to 
this query depends on each individual.<br>
<br>
Golf offers multi-utility to players. Some embark on the three to four hour-long 
trawl on the golf course for networking. Nothing wrong and unusual! One 
interacts with peers in an open atmosphere bereft of aides and the ubiquitous 
mobile phone. (Yes, do not carry your cell onto the course!). In the good old 
days, mega deals used to be struck on the football grounds where the crème de la 
crème used to mix and chat. In today’s world, the venue has shifted to golf 
courses. Once the bosses agree on the agenda away from the boardrooms, 
subordinates move in to complete the informal agreement into a formal one! <br>
<br>
Watching a lonely golfer pushing the cart all alone, unaided by caddies, one 
cannot escape the conclusion that perhaps he’s communing with nature or just a 
quick getaway. Certainly, there is no question of claustrophobia. Otherwise, the 
avid golfer won’t be alone. Perhaps he/she feels more relaxed while walking and 
hitting the poker-faced golf ball into the wide horizon. Maybe, the golfer is 
able to get quality and quantity time, away from the din and bustle of daily 
life, to clear one’s mind.<br>
<br>
In today’s competitive world, stress is a major threat. Get moving, say 
scientists. They say exercise is a proven stress-buster, so get your body moving 
in any activity, from walking to running to weight-lifting to kickboxing. Not 
only will your mood lift up after a good cardio workout, but you’ll feel blessed 
knowing that your thighs will become stronger – enabling you to move dexterously 
on the tennis court to return the hard serve from one’s rival across the net on 
any day. They are correct.<br>
<br>
On a different note, the game of golf also teaches some basic philosophies of 
life. It is a long journey – 18 holes. So learn to be patient and know that 
there are no short cuts. Targets are set and clear and the requisite armour is 
provisioned for. Pick and choose the right club – light, medium or hard – after 
mentally measuring the distance and strategy to be adopted. <br>
<br>
Do not get disheartened over mishits, but pursue. One’s judgment skills are 
always on test and therefore, one cannot escape wearing the thinking hat always. 
It is a mental as well as physical game. As one learns to play the game as per 
rules, one is able to improve his/her game, hit better shots with less effort, 
and have a lot more fun on the course!</font></p>

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