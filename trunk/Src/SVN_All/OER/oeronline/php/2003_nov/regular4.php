<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - October 2003 ::</title>
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
              
              <center>
                    <p align="left"><font face="Verdana" size="4" color="#FF0000">
                    Book Review</font>
                    <p align="left"><font face="Verdana" size="1"><b>Fully 
                    booked</b> <br>
                    This month, OER invites two guests to review the latest 
                    bestsellers <br>
                    <br>
                    <b>
                    <img border="0" src="BOOK-experi.jpg" align="right" hspace="5" vspace="5" width="150" height="197"><font color="#FF0000">Experiment 
                    at Work</font></b> <br>
                    By Andy Law <br>
                    Price: RO10.200 (Paperback) 208pp <br>
                    Profile Books<br>
                    <br>
                    In co-founding St. Luke's advertising agency, Andy Law got 
                    the chance to create the kind of company he had always 
                    wanted to work in. Experiment at Work is a look inside what 
                    the Harvard Business Review once described as &quot;the most 
                    frightening on Earth&quot;. Established in 1995, St. Luke's 
                    rapidly gained an enviable client base and was enjoying a 
                    turnover of around £90 million (RO54 million) by 2000. When 
                    a highly respected business magazine describes a British 
                    advertising agency in such a way, we want to know why it has 
                    done so. Many companies want to transform into a better 
                    organisation, but few will ever take the challenge. Law 
                    describes a transformation of work culture and explains how 
                    companies should run. <br>
                    Is it successful read? Law starts off well citing the 
                    factors that are affecting business today and giving good 
                    examples. He sets out the three components of what made St. 
                    Luke's tick differently. Firstly, the business had an 
                    episodic nature rather than growing in some grand five or 
                    ten year plan. It also thrived on negative capability and 
                    opened itself to new ideas and inputs from anywhere (and 
                    anyone) if it was unable to understand something. Some 
                    companies possibly close themselves off too much. Thirdly, 
                    Law talks of an institutionalized instinct where a sense of 
                    desire instructs business decisions - a clear example being 
                    new office development in Mumbai and Stockholm rather than 
                    the more traditional New York and Sydney locations. <br>
                    Law also describes in detail the ten elements that make up 
                    the 'DNA' of the company. <br>
                    <br>
                    <b><font color="#FF0000">The Encyclopedia of Business 
                    Letters, Fax Memos, and E-Mail </font></b><br>
                    By Robert W. Bly Price: RO 8.600 (Paperback) 286pp <br>
                    Career Press <br>
                    <br>
                    <img border="0" src="BOokRe-encyc.jpg" align="left" hspace="5" vspace="5" width="150" height="215">In 
                    today's fast-paced world, with increasing demands on our 
                    time, some help in completing routine tasks effectively is 
                    indeed welcome. The Encyclopedia of Business Letters, Fax 
                    Memos, and E-Mail by Robert W. Bly is a useful tool in the 
                    hands of today's businessperson. The era of long, leisurely 
                    letters is gone. Concise letters, crisp memos, fast faxes, 
                    and instant e-mail have replaced the chatty correspondence 
                    of yesteryear. It is important to bear in mind that your 
                    reader doesn't have time to waste and neither do you. That's 
                    where this book can help. <br>
                    This encyclopedia is a plethora of model letters with useful 
                    instructions for adapting to different situations. Letters 
                    are organized into chapters by category-sales letters, 
                    credit and collection letters, customer service letters, 
                    cover letters, among others. The detailed table of contents 
                    and index are both designed to quickly guide you to the 
                    letter that best meets your needs. The book however is 
                    tilted more towards its western audiences with typical 
                    letters and notes, prevalent in that market. According to me 
                    correspondence in the East is more personal, friendly and 
                    polite keeping in mind the sensitivities of the readers. 
                    Also, a quick check for some sample letters I wanted to see 
                    did not yield the desired results. For example, I was not 
                    able to find a sample of a reference letter for a colleague, 
                    or a suitable reply to a client's complaint. Overall, 
                    however, this book is a very handy tool and as a busy 
                    manager or entrepreneur you will treasure it. You may be a 
                    creative person and an original thinker. But when it comes 
                    to routine correspondence, why reinvent the wheel?</font></p>
                    <hr color="#CC3333">
              </center>
                    </td>
            <td  valign=top bgcolor=white><?include("right_include.php");?>&nbsp;</td>
          </tr>
          
        </table>
        </div>
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