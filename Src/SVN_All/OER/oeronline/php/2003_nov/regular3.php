<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - November 2003 ::</title>
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
            <td width="1%" bgcolor="#FFFFFF">&nbsp;<p>&nbsp;</p>
            <p>&nbsp;</td>
            <td width="70%" bgcolor="#FFFFFF" valign="top"><font face="Verdana" size="4" color="#FF0000">
            Gizmos<br>
            </font><font face="Verdana" size="1"><b>The write stuff </b><br>
            <br>
            For ages, nerds and naives alike have dreamt of PCs that could be 
            operated with the handiest of tools - a pen. Tablet PCs, which allow 
            you to scribble on their screens, made that dream a reality. Today's 
            Tablet PCs give you everything you expect in a mobile PC in a way 
            that lets you be more productive in more situations - at your desk, 
            on your way to an appointment, giving a presentation, in a meeting, 
            or in the middle of a flight. OER presents a random listing of the 
            gadget that Microsoft sees as the future of mobile computing <br>
            <br>
            <b>
            <img border="0" src="Giz-Toshiba-copy.jpg" align="right" hspace="5" vspace="5" width="150" height="131">Toshiba 
            Portégé 3500</b> <br>
            Microsoft's recent push to promote the so-called Tablet Edition of 
            Windows XP was supported by a number of notebook manufacturers, 
            including Toshiba, which unveiled its Portégé 3500 Tablet PC. There 
            are two varieties of Tablet PC; those which are entirely dependent 
            on pen input and those with a keyboard like a conventional notebook. 
            The Portégé 3500 is of the second type. The fact that the Portégé is 
            a 'convertible' means that it has full conventional notebook 
            functionality paired with pen input. On the negative, the 3500 is 
            significantly more expensive than a comparably specified no-pen 
            alternative besides it weighs a healthy 1.85 kg. The machine is 
            based on a 1.33GHz Pentium III-M backed up by 256MB of PC133 SDRAM 
            and a 5,400 rpm 40GB IBM TravelStar hard disk. Price: £1,799 
            (RO1154) <br>
            <br>
            <b>Compaq Evo TC1000</b> <br>
            HP's Compaq Evo TC1000 has a versatile design. You can use it like a 
            regular notebook with attached keyboard or fold the keyboard under 
            to use it in tablet mode. You can also remove the keyboard 
            altogether and have a lightweight (1.41 kg) slate. As a pure slate, 
            it is very comfortable to hold. The pen has a large, comfortable 
            barrel with rubberised grip. Its tempered glass makes the display 
            seem the most robust, though at the expense of pressure sensitivity. 
            The small 10.1-inch screen, awkward keyboard latch and interaction 
            between the stick pointer and the back of the slate in tablet mode 
            all detract from the value of the Compaq Evo. In addition, the Evo 
            does not perform very well, particularly during high disk activity 
            such as scanning with anti-virus software. The lack of performance 
            is probably due to the Transmeta Crusoe processor. The Crusoe 
            processor does not use the Intel command set. Instead, code-morphing 
            software in firmware translates Intel code to the Crusoe's native 
            code, adding an additional layer of processing. Price: $1,699 
            (RO653) <br>
            <br>
            <b>
            <img border="0" src="Giz-Fujitsu-copy.jpg" align="left" hspace="5" vspace="5" width="150" height="158">Fujitsu 
            Stylistic ST4120</b> <br>
            Fujitsu - the company with the most experience building, selling, 
            and supporting pen-based PCs - could have easily succumbed to the 
            temptation to make a splash with a complicated, expensive tablet PC. 
            Instead, it stuck with what works for the Stylistic ST4000 series, a 
            simple slate design that does nearly everything right. Fujitsu 
            recently added the Stylistic ST4120 to its arsenal, which has 
            similar specs to the ST4000. The Fujitsu Stylistic ST4120 is a 
            jack-of-all-trades tablet PC that squeezes a lot into a small, thin 
            package. It is a light Tablet PC (system weight: 1.41 kg) and has a 
            good battery life (3 hours 25 minutes). The suede on the back is an 
            excellent feature, making the slate more comfortable, slip resistant 
            and cooler to the touch. Its IR keyboard has no pointing device, 
            unlike others in its league, lacks navigation pad and has a 
            relatively smaller screen. Price: $2199 (RO846) </font>

            <hr color="#CC3333">
                    <p>&nbsp;</td>
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