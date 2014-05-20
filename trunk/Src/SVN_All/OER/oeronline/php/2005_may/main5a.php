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
            <td width="70%" bgcolor="#FFFFFF">

<p align="justify" dir="ltr"><font face="Verdana" size="4" color="#FF0000">
A Blogger’s Glossary<br>
</font><br>
<font face="Verdana" style="font-size: 11pt"><b>A</b></font><font face="Verdana" size="1"><br>
<b>Aggregator</b><br>
A piece of software used by bloggers who want to check a large number of news 
sources or Weblogs on a daily basis. Aggregators regularly check selected RSS 
(Really Simple Syndication Resource) feeds for new content and display a list of 
results, usually listing the most recently updated links first, allowing 
bloggers to get the latest news and comment from around the web. <br>
<br>
</font><b><font style="font-size: 11pt" face="Verdana">B</font></b><font face="Verdana" size="1"><br>
<b>Blawg</b><br>
A blog that deals with legal issues, often written by lawyers or academics. <br>
<br>
<b>Blogdex</b><br>
A project from MIT's Media Lab that regularly checks what blogs are linking to, 
thus tracking information as it flows across the blogosphere. By going to the 
Blogdex (http://blogdex.net) home page you can see which links are most popular 
on Weblogs at the moment. A high ranking on Blogdex is both an indicator that 
your blog is getting lots of traffic and also a guarantee that your blog will 
gets lots of traffic, as readers click through from the Blogdex index. <br>
<br>
<b>Blogger</b><br>
Blogger is both the truncated name for a Weblogger, and the name of one of the 
oldest Weblog publishing services, Blogger (http://www.blogger.com/start). <br>
<br>
<b>Bloggerati</b><br>
Big name bloggers. <br>
<br>
<b>Blogosphere</b><br>
The world of Weblogs or the community of bloggers.<br>
<br>
</font><font face="Verdana" style="font-size: 11pt; font-weight: 700">C</font><font face="Verdana" size="1"><br>
<b>Comments</b><br>
A facility that allows Weblog visitors to leave their comments on the author’s 
views. <br>
<br>
</font><font face="Verdana" style="font-size: 11pt; font-weight: 700">L</font><font face="Verdana" size="1"><br>
<b>Linklog</b><br>
A blog carrying only a simple list of interesting links, without extensive 
commentary or illustration. Sometimes a linklog will run alongside fuller 
journal entries or other commentary. <br>
<br>
</font><font face="Verdana" style="font-size: 11pt; font-weight: 700">M</font><font face="Verdana" size="1"><br>
<b>Moblog</b><br>
A blog created via mobile phone or personal digital assistant (PDA), rather than 
a computer. These typically feature photographs of the author’s travels and 
brief text commentary. <br>
<br>
</font><font face="Verdana" style="font-size: 11pt; font-weight: 700">P</font><font face="Verdana" size="1"><br>
<b>Ping</b><br>
A ping is a way of finding out whether a specific IP address—either a computer 
or Website—is accessible by sending message and waiting for a reply. Bloggers 
use pinging to let blog-tracking services such as Weblogs.com that their Weblog 
has been updated. <br>
<br>
</font><font face="Verdana" style="font-size: 11pt"><b>R</b></font><font face="Verdana" size="1"><br>
<b>RSS</b><br>
RSS (Really Simple Syndication) is an XML format originally developed by 
Netscape that’s used by Weblogs to syndicate content. <br>
<br>
</font><font face="Verdana" style="font-size: 11pt"><b>T</b></font><font face="Verdana" size="1"><br>
<b>Technorati (www.technorati.com)</b><br>
Another Web service that tracks the content of Weblogs. Its search facility is 
particularly useful for Webloggers anxious to see who is linking to their site 
and what they’re saying. <br>
<br>
</font><font face="Verdana" style="font-size: 11pt"><b>W</b></font><font face="Verdana" size="1"><br>
<b>Weblog</b><br>
According to Bausch, Haughey and Hourihan in We Blog (Wiley, 2002): ‘‘At their 
core, Weblogs are pages consisting of several posts or distinct chunks of 
information per page, usually arranged in reverse chronology from the most 
recent post at the top of the page to the oldest post at the bottom.’’ Beyond 
that, there are lots of additional features, which may or may not be present: 
links, comments, a calendar, news, comment, a single author, multiple authors, 
whole communities, amateurs, professionals, and so on. <br>
<br>
</font><font face="Verdana" style="font-size: 11pt"><b>X</b></font><font face="Verdana" size="1"><br>
<b>XML</b><br>
XML is a way of labelling online content to allow computers to understand better 
what that content is. In a blogging context, XML underpins the RSS format, which 
is in turn used to distribute headline feeds to aggregators.</font></p>

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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>