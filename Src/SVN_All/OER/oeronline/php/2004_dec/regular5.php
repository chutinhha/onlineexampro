<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - December - 2004 ::</title>
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
            <p align="justify"><font face="Verdana" size="2" color="#C0C0C0">:: Web 
            Scan</font></p>

            <p align="justify"><font face="Verdana" size="1" color="#FF0000"><b>
            OER profiles two news archival Websites that provide information on 
            all major world events and news of the past</b></font></p>

            <p align="center"><font face="Verdana" size="1">
            <a href="http://www.InfoPlease.com">www.InfoPlease.com</a></font></p>

            <p align="center">
            <img border="0" src="im94.jpg" width="200" height="175"></p>

            <p align="justify"><font face="Verdana" size="1">Information Please 
            is part of Pearson Education, the largest educational publisher in 
            the world and owner of Prentice Hall, Scott Foresman, Addison Wesley 
            Longman, and other distinguished imprints. Pearson also owns the 
            Financial Times and Penguin Putnam publishers. Information Please 
            has been providing authoritative answers to all kinds of factual 
            questions since 1938—first as a popular radio quiz show, then 
            starting in 1947 as an annual almanac, and since 1998 on the 
            Internet at www.infoplease.com. The site claims that although many 
            things have changed since 1938, its dedication to providing reliable 
            information, in a way that engages and entertains, has not. <br>
            This site holds a wealth of data and information on world events 
            from 1900 till date. Its easy-to-use navigation allows users to sort 
            events on a year-by-year basis, with highlights of key events of the 
            year, organised month by month, in three categories for easy 
            reference: world, nation (US), and Business/Science/ Society. 
            Besides, the Website also has links to ‘People in the News’, ‘Deaths 
            in the year for obituaries’, and ‘Disasters’ in any particular year. 
            The ‘Countries of the World’ section covers specific international 
            events, country by country. There’s also interesting trivia like 
            ‘This Day in History’, ‘Today’s Birthdays’, ‘Facts Behind the News’, 
            and ‘Biography of the Day’ etc. apart from ‘Today’s News’ (Reuters) 
            and Weather and Astronomical forecasts. This Website is a one-stop 
            for researchers, students, academicians, or corporate professionals 
            to get information on anything of consequence that has happened in 
            the past 100 or so years. </font></p>

            <hr color="#CC3333" size="1">
            <p align="center"><font face="Verdana" size="1">
            <a href="http://www.wn.com">www.wn.com</a></font></p>

            <p align="center">
            <img border="0" src="im93.jpg" width="200" height="171"></p>

            <p align="justify"><font face="Verdana" size="1">This site belongs 
            to the WorldNews Network, ‘the most comprehensive global news 
            network on the Internet’. This site is a huge storehouse of world 
            news and images across regions and industry segments. One can find 
            news and analysis on current and past events categorised by 
            business, science, industry, society, sports, entertainment or 
            broadcasts (television &amp; radio); or by regions, viz. Africa, Asia, 
            Australia, Caribbean, Europe, Middle East and so on. The searchable 
            news archive is available in 20 languages from WorldNews Network, 
            and dates back to 2003. The site also provides a downloadable ‘WN 
            Toolbar’, that allows the surfer to access WorldNews categories as 
            well as other features such as news search, currency conversion, 
            weather information etc. without logging on to the site, via the 
            toolbar that rests itself just below the browser’s own toolbar.</font></p>

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