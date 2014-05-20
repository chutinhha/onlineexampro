<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER -&nbsp; 2003 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF"><p>
            <font face="Verdana" size="4" color="#FF0000">Web scan<br>
            <br>
            </font><font face="Verdana" size="1"><b>This month, OER profiles 
            those Websites which are famous for providing their analysis and 
            rankings of joint stock companies in the US and around the world </b>
            <br>
            <br>
            <b>Fortune 500</b><br>
            <a target="_blank" href="http://www.fortune.com/fortune/fortune500">
            http://www.fortune.com/fortune/fortune500</a><br>
            While the renowned Fortune 500 needs no int<b><img border="1" src="fortune.jpg" hspace="3" align="left" width="200" height="150"></b>roduction, the website 
            ranking the leading corporates in the world's biggest economy - the 
            US - packs a punch when it comes to in-depth analysis. For one, this 
            customised listing ranks a thousand - and not 500 - corporates. 
            That's double the value already. And they've just come out with 
            their 2003 listings. For added effect, the online version gives you 
            the facility to rank corporates by the parameter of your choice. 
            That is, while the standard print ranking classifies companies based 
            on their revenues, you could easily do that by 'profits' or 'EPS' or 
            any of the seven parameters. To top it all, you also have the 
            additional 'Best Employers' rankings, rankings of 'Top Women CEOs', 
            and the ubiquitous archives besides the reproduction of alphabetical 
            rankings from best CEOs and Industries to top performers and other 
            accoutrements of the print version. The catch? You have to be a 
            subscriber to gain access to the information. </font></p>
            <p><font face="Verdana" size="1"><b>Forbes 500 </b><br>
            <a target="_blank" href="http://www.forbes.com/tool/toolbox/forbes500s/">
            http://www.forbes.com/tool/toolbox/forbes500s/</a><br>
            First, the facts. Yes, Forbes, too, is out with its  <b>
            <img border="1" src="forbes.jpg" align="right" width="200" height="150"></b>2003 listings of 
            America's top corporates along with its International 500. And no, 
            you don't need to be a subscriber to view these listings. Complete 
            with the facility to sort alphabetically or by the various 
            parameters, these listings are as user-friendly as any other. The 
            edge that this Website provides compared to Forbes' magazine format 
            is its phenomenal search facility. You could do a plain company name 
            search, or you could search for companies whose price to sales ratio 
            is greater than or equal to 5.0 and whose assets are more than US$25 
            billion. And you could again sort the results by the param eter of 
            your choice. Sounds incredible? It is.<br>
            <br>
            <b>BusinessWeek Global 1000 </b><br>
            <a target="_blank" href="http://bwnt.businessweek.com/global_1000/2002/index.asp">
            http://bwnt.businessweek.com/global_1000/2002/index.asp</a><br>
            Okay, so BusinessWeek isn't out with the 2003 listings - yet. But 
            they still have a 
            <img border="1" src="business.jpg" align="left" hspace="3" width="200" height="150">comprehensive database of corporates from 23 
            countries in the world, spanning 10 industries, sortable by 16 
            parameters in their 2002 listings. Moreover, you can also sort the 
            listings in either ascending or descending order, depending on your 
            requirement. Specially interesting is the fact that you can sort the 
            companies according to the country of your choice - that is, you can 
            get the companies from the US together, and analyse their data in 
            one (screen) shot rather than having to tediously search for all of 
            them individually and then collate the data in a spreadsheet for 
            analysis. And yes, this website needs no subscription either.</font></p>
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