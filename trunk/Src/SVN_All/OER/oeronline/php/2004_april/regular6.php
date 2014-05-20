<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - April 2004 ::</title>
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
            Tech Review</font></p>
            <p class="MsoPlainText"><font face="Verdana" size="1"><b>The battle 
            against spam</b> <br>
            <img border="0" src="tech.jpg" align="left" hspace="5" width="250" height="189">Last 
            month, after Microsoft chairman and chief software architect Bill 
            Gates unveiled his company's plan for securing e-mail 
            communications, leading e-mail authorities, legal experts, and at 
            least one ISP, are expressing concerns about the e-mail sender 
            authentication plan, known as Caller ID. Some experts agree that the 
            technology is promising. However, Microsoft's claim that it owns 
            patents around Caller ID, and its decision to license the technology 
            to third parties rather than submit it to an Internet standards 
            body, have riled e-mail experts and domain owners. Some of them said 
            they worry about a power grab by the company and are wary of signing 
            on to the new system, according to the IDG News Service. <br>
            <br>
            <b>Reducing spam for end users </b><br>
            Gates has set out an ambitious agenda for deploying Caller ID, 
            saying it would be &quot;very easy for people to apply&quot;, and that 
            Microsoft hoped to have Caller ID in place by the third quarter of 
            2004, provided it could reach &quot;the right agreements&quot; with ISPs and 
            e-mail providers. He did not elaborate on what those agreements 
            might involve but said that Microsoft had some patents related to 
            &quot;the fundamentals&quot; of Caller ID which is &quot;royalty free, available 
            for everyone to use&quot;. <br>
            <br>
            Sender authentication is rapidly gaining acceptance among e-mail 
            experts and ISPs as a weapon in the fight against spam. Recently, 
            US-based ISP Sendmail announced that it will develop and distribute 
            sender authentication technologies to its customers and the open 
            source community to combat spam, viruses and identity fraud in 
            e-mail. <br>
            <br>
            Sendmail will incorporate a &quot;selection of sender authentication 
            technologies&quot; into its open source Mail Transfer Agent (MTA), 
            including a technology called DomainKeys that is championed by Yahoo 
            and &quot;proposals put forward by Microsoft and others&quot;, Sendmail said. 
            A Microsoft spokesman confirmed reports that the company will be 
            releasing a sender authentication plug-in along with Sendmail. <br>
            <br>
            <b>The spam battle begins </b><br>
            AOL, Yahoo, Microsoft and Earthlink have used the recently passed US 
            anti-spam legislation for the first time to sue more than 220 
            companies they say are responsible for hundreds of millions of spam 
            e-mails. <br>
            <br>
            The ISPs have bandied together to launch six lawsuits that target 
            the worst spammers using &quot;outlaw tactics&quot;, according to Yahoo 
            general counsel Mike Callahan. <br>
            <br>
            They are the first to use the CAN-SPAM legislation that became law 
            in the US earlier this year and the lawsuits will be seen as a 
            crucial test of the law's effectiveness. <br>
            <br>
            &quot;If you're a spammer, this is not a great day for you,&quot; said AOL's 
            general counsel Randall Boe, in boisterous mood. &quot;Ultimately, we're 
            going to locate you and sue you.&quot; <br>
            <br>
            The lawsuits, filed in federal courts in California, Virginia, 
            Georgia and Washington, name just five individuals and five 
            companies, with at least 215 other unnamed defendants. A joint 
            statement said that the ISPs are confident they can use the expanded 
            powers given under CAN-SPAM to identify the unnamed defendants and 
            shut them down. <br>
            <br>
            Although many of the defendants use computers outside of the US to 
            send the spam, the companies believe they will be able to use the 
            CAN-SPAM law to bring the defendants into US court, said deputy 
            general counsel at Microsoft, Nancy Anderson. Spammers who think the 
            US can't prosecute them because they operate offshore believe a 
            &quot;myth&quot;, Anderson claimed. Their spam causes damage to US ISPs and 
            consumers, she added. <br>
            <br>
            The success of the lawsuits will be fundamental in testing whether 
            the law can indeed punish spammers and, more crucially, cut down on 
            the amount of spam produced each day - which some estimate makes up 
            as much as 75 per cent of all email traffic. When the law was 
            passed, critics said it wouldn't make the slightest difference and 
            pointed to the fact that spam actually increased after the law was 
            passed. However, that is only to be expected as the law's penalties 
            have yet to be applied and won. Once - or rather if - that happens, 
            the landscape may alter dramatically. <br>
            <br>
            <b>The 'worm war' </b><br>
            In recent months, a 'worm war' has been unleashed to create a recent 
            virus flood. Anti-virus experts have revealed that a conflict 
            between rival virus writers is behind the sudden glut of new worms. 
            New versions of the MyDoom, Netsky and Bagle worms have all appeared 
            on the Internet but researchers have uncovered text messages in two 
            of them that suggests a battle is underway between virus writers. 
            Spiced with foul language and bad spelling, the messages portray a 
            playground-style brawl between the authors, with the Internet worms 
            acting as messengers. Sparring matches between virus writers and 
            hackers are nothing new, however the seriousness of the recent 
            outbreaks has put this shouting match in the public eye. Weary 
            anti-virus researchers are hopeful they can capture of one or more 
            of the worm authors.</font></p>
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
        <? include("../../inc/menu1.htm");?>
        <? include("../../inc/bottom.htm");?>
        </body>
        </html>
        <?}
else 
Header("Location:/inc/error.php");
?>