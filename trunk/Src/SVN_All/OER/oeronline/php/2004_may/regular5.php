<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - May 2004 ::</title>
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
            <p align="justify"><font size="4" color="#FF0000" face="Verdana">
            Book Reviews<br>
                  </font><font face="Verdana" size="2"><br>
                  </font><b><font face="Verdana" size="2" color="#FF0000">
            <img border="0" src="im29.jpg" align="right" hspace="4" width="117" height="184">Schotts Original Miscellany<br>
            </font></b><font face="Verdana" size="1"><br>
            By Ben Schott<br>
            (Hardback) 158 pp<br>
            Price RO6.900<br>
            <br>
            There are not many books that I read in one sitting - Schott's 
            Original Miscellany was one such book. It's difficult to explain 
            what's so special about this little 160-page hard-backed volume. And 
            it's even harder to explain what's inside. Imagine a cross between a 
            Victorian English encyclopaedia; the Book of Lists; and those useful 
            pages at the back of your diary and you have something approaching 
            the style and content of Schott's Original Miscellany. <br>
            <br>
            In the spirit of Ben Schott's wonderfully haphazard organizational 
            style, I shall open a page at random, and list what can be found 
            there. OK ... pages 118-119 contain: a list of famous left-handers 
            (including Bill Gates and Cole Porter); a nursery rhyme about 
            sneezing; the traditional names for the various winds (the Sirocco 
            is a South-easterly wind); an explanation of adult dentition; an 
            list of temperature conversions; all of the International Washing 
            Symbols (including the wonderful symbol for &quot;do not wring&quot;); and a 
            list of countries where you have to drive on the left.<br>
            <br>
            <img border="0" src="im10.jpg" align="left" width="100" height="119">It 
            is fantastic, funny, and (believe me) very addictive stuff. I've 
            only just got this book, and already it has been &quot;borrowed&quot; from my 
            desk countless times by colleagues! I recommend it very highly.</font></p>

            <p align="justify"><b><font face="Verdana" size="1">Review by <br>
            Rasha Al Jamali,<br>
            Communications Manager,<br>
            Al Bustan Palace Intercontinental Hotel, Muscat, Sultanate of Oman.</font></b></p>

            <p align="justify">&nbsp;</p>

            <p align="justify"><b>
            <font face="Verdana" size="2" color="#FF0000">
            <img border="0" src="im30.jpg" align="right" hspace="5" width="117" height="184">The One Minute Manger<br>
            </font></b><font face="Verdana" size="1"><br>
            By Ken Blanchard and Spencer Johnson<br>
            (Paperback) 106pp<br>
            Price: RO4.800<br>
            <br>
            Written by two highly respected and sought after business 
            consultants and speakers - Ken Blanchard and Spencer Johnson - this 
            is a brilliant and positive book on people management. One that can 
            be re-read with new observations and insights each time. The title 
            The One Minute Manager in the literal sense is a bit misleading. 
            It's just a symbolic term to imply that managing should not be a 
            long drawn complicated event but a simple straightforward process. 
            And that people who feel good about themselves produce good results. 
            This is the most important aspect of the book and deals on various 
            people management issues like goal setting, reviewing performance 
            and checking if performance matches goals. <br>
            <br>
            Blanchard and Johnson have written this book in story form. The tale 
            revolves around a person in search of the ultimate effective 
            manager. After having searched the world over in vain our narrator 
            hears stories about a special manager who lived, ironically, in a 
            nearby town. He heard that people liked to work for this man and 
            that they produced good results together. Short anecdotes with 
            people along the way help this person to
            <img border="0" src="im11.jpg" align="left" width="99" height="128">understand 
            the effective manager's one minute management style. This is, 
            therefore, a book not only for managers at the office but also for 
            individuals managing tasks at home. A book thoroughly recommended 
            and a must read.</font></p>

            <p align="justify"><b><font face="Verdana" size="1">Review by<br>
            Carlton Seymour,<br>
            Sales Manager,<br>
            Swiss International Air Lines Ltd. Muscat, Sultanate of Oman.</font></b></p>

                    <hr color="#CC3333">
                    <p></td>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>