<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - June - 2005 ::</title>
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

<p align="justify"><font face="Verdana" size="4" color="#FF0000">
Solutions for all sizes<br>
<br>
</font><b><font face="Verdana" size="1">Paul Ransted, Business Technologist, 
Computer Associates The Arab Countries, is a veteran of IT in the Middle East. 
Currently based in the UAE, he has held several senior positions in Kuwait and 
Bahrain. Vicky Kapur caught up with him while he was on a short visit to the 
Sultanate and discussed the intricacies of his business. Excerpts from an 
exclusive interview:</font></b><br>
<font face="Verdana" size="4" color="#FF0000">
<br>
</font><font face="Verdana" size="1">
<img border="1" src="paul.jpg" width="180" height="108" align="left" hspace="4"><b>What 
brings you here? Is this your first visit to Oman?</b><br>
I came here from Dubai for the ICT show. I made a presentation on service 
management – or shall we say, on CA’s Unicenter ServicePlus Service Desk. I have 
been in the Middle East since 1992. I have been to Oman a number of times – 
mostly for leisure, but three or four times for business as well. <br>
<br>
<b>Where would you rank Oman’s readiness in terms of ICT vis-à-vis those of its 
neighbours?</b><br>
Oman is catching up. It’s been a bit slow to adopt some of the technology. But 
with the IT and telco boom—you have the two telcos going to war—they need IT 
infrastructure more than anything else. That’s going to wake up the market quite 
drastically, and that will bring vendors in which will help boost everything 
else. <br>
<br>
<b>That’s as far as the telecom sector is concerned, but what about the other 
services sector?</b><br>
Most of the market here seems to be education or government, which traditionally 
are a little slower to adopt newer technologies. The nice thing in Oman is that 
it didn’t purchase the technologies invested in and used in Europe and in the 
west maybe for the last three to four years. Which also means that Oman can go 
straight to the newer stuff. There are no legacy systems that they have to 
upgrade – they can invest in the newer technologies straightaway now without 
going through pain.<br>
<br>
<b>So, are you saying that Oman has, if I may say so, a ‘late-mover advantage’ 
over there?</b><br>
That’s right – the Middle East in general has always had a little bit of a 
‘late-mover advantage’. Basically, till not so long ago, the technology didn’t 
exist in the first place; so, you didn’t have to upgrade it. When I first came 
to the Middle East, I was told there was a five-year gap between the West and 
the Middle East – I’m guessing that’s down to about six months now. The 
Internet’s helping that no end. While earlier, getting the information was 
difficult; today it’s there. The Internet is acting as a catalyst for a lot of 
things. The information is literally live now, and everyone survives on 
information. <br>
<br>
<b>How is Computer Associates contributing to that?</b><br>
We have four main brands. We have eTrust, which is our security brand that 
allows you to do everything from intrusion detection on your networks through 
anti-virus on your desktops, your laptops, your switches and everything else. 
Then we have BrightStor for storage, which allows you to manage your storage 
devices, your disk devices, your tape devices, back-up your data. Then we have 
Unicenter for operations management. Basically, that’s what’s going to check 
that your systems are running. <br>
<br>
This is something that I said in my presentation as well – as a customer, do you 
care that the database has crashed? I would say you don’t. Do you care that the 
network has crashed? I would say you don’t. Do you care that the server has 
crashed? I would say you don’t. Do you care that the service you want to use 
doesn’t work? Of course, that’s what you’re worried about. What caused it, you 
don’t care!<br>
<br>
Now what we’re able to do is to tell you as a customer company, your X business 
process is not working and that is what your service level agreement (SLA) as an 
IT organisation is based on. Now, as an IT organisation inside another 
organisation, you know that your database crashed. What you’ve just got from the 
crash is cost-justification to have a better server, better disk, a better 
network… Because that system was down for a period of time which will cost you 
directly or indirectly some money. <br>
<br>
For example, e-mail I would say is probably one of the most business critical 
applications you’ve got now mainly because you would be paying a bunch of people 
sitting at their desks twiddling their thumbs and doing not much else because 
‘‘e-mail is down’’. Now that’s a hidden cost for most companies, but that is a 
cost. If you went down the local souq, and bought a small, cheap network switch 
and it failed on you three times a month for the next six months, how much money 
would that cost? If I asked you to buy a better switch, you’d probably do. So, 
you’ve just justified that cost to your management because of the pain you felt.
<br>
<br>
Now, hopefully, we can reduce that pain by not letting you feel it and with the 
correct product sitting on top, manage what’s going on. So, you know 
individually what’s going on in your infrastructure. You can say X business 
process being closed down for an hour is costing me Y number of rials – easy, so 
you can work out the whole cost. Now, if you’re down for four hours, that’s a 
lot of rials. But what can prevent that crashing in the future is investment of 
maybe half that amount of money or twice that amount – but it never happens 
again. You just save money. <br>
<br>
The final one is AllFusion Harvest Change Manager – it’s application 
development. Now this is mainly used in mainframe organisation at the 
moment—that’s historical for us—we can do it on open systems, Unix, Windows, 
Linux.<br>
<br>
<b>Who are your target customers? </b><br>
Everyone who has a desktop PC through to everyone who has a big mainframe can 
use our products. It all depends on what you like. Microsoft uses our eTrust 
AntiVirus product internally on all their desktop PCs. We have a whole range of 
products suited for everyone, but what we’re focusing on more in the Middle East 
now is SMBs (Small &amp; Medium Businesses). To be fair, SMB to Europe is every 
business we’ve got in the Middle East. So, for us, every customer in the Middle 
East is a potential customer. <br>
<br>
Everyone from an individual or a small organisation running five PCs can benefit 
from infrastructure management, knowing which application is running, their 
fixes, running a small help desk…but that could just as easily be a telco. One 
customer I can talk about is Etisalat, which has its call centre in the 
Emirates. They are running our Service Desk product—the one I presented today—to 
run their call centre. <br>
<br>
<b>Tell us about your major clients in Oman? </b><br>
As per our SLAs with them, I’m not sure if I’m allowed to mention their names, 
but most of our clients down here are at the moment are in the government 
sector. We have one customer down here in the government, which, on its 
mainframes, has been running one of our products for 20 years, and that product 
is still being developed and supported by us. To be fair, when I started 23 
years ago, that was one of the first products that I came across.<br>
<br>
<b>How has Computer Associates grown in the Middle East over the years?</b><br>
Basically, Computer Associates Middle East was a joint venture company between 
United Computer Arabia and Computer Associates. That company was headquartered 
in Bahrain. As of September last year, that company was dissolved. CA Arab 
World, wholly-owned by CA, came into the region as of September last year. It is 
headquartered in Dubai, and that’s my base. <br>
<br>
Since then, we’ve opened a support office in Lebanon offering three language 
support— English, French, Arabic—with free phone numbers from all of the Middle 
East. Reason for that is the French support more than anything else because 
we’re looking at North Africa as well. We’ve got a sales office in Lebanon as 
well – so that makes it two offices in Beirut. We already have offices in 
Bahrain and Riyadh. We’ve got offices opening in Kuwait and Abu Dhabi shortly, 
and we’re thinking of opening an office in Pakistan. <br>
<br>
<b>What about Oman…</b><br>
At the moment, this is our first event coming in as CA Arab World. This is like 
a fact-finding mission for us. When we go back, we’ll decide if we’re going to 
start holding our own event here, and that will drive whether we open an office 
her or not.<br>
<br>
<b>Manufacturers such as Microsoft are coming up with their own backup products… 
how much scope does that leave for a company like yours?</b><br>
Yes, Microsoft is coming out with their own backup products – Windows has had 
its own backup products built in from the day it was conceived. How many people 
trusted it to do their backups? A few people do. Let’s be fair, their backup 
product may be good, but you’ve got issues about whether the Windows back-up 
product can back up a Linux system? Can it back up a Unix system? If you are 
purely Windows infrastructure, and I don’t know many that are now, great! But 
will Microsoft start supporting Linux? No. So, suddenly you’re going to have a 
silo of this backup product and another silo of another backup product and 
another one for another backup product – I don’t think that will work somehow. 
What you really need is central backup for everything.<br>
<b><br>
So then you would have end-to-end service providers like Computer Associates 
taking care of that? <br>
</b>Yes, basically we look after that. Again, for the enterprise infrastructure 
management, the Unicenter product, it doesn’t really matter what application, 
what database, what server you’re running on. Your user could be sitting on one 
end an Internet line, logging onto your Webpage so they can book their say 
flight or something like that. Going through your system so that they can put in 
their frequent flyer number, which could be running on a Windows system, and 
they could be making a booking on your database, which could be going on to a 
big main frame DB2 system. <br>
<br>
But does it matter to the end user? It doesn’t. But for your infrastructure, you 
need to follow that data. At any point of a failure, someone’s going to loose 
money somewhere. That customer cannot book that flight for your system being 
down, so they’ll go to another organisation to book a flight or fly with a 
different airline.</font></p>

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