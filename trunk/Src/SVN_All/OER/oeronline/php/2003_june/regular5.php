<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - June 2003 ::</title>
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
            <td width="70%" bgcolor="#FFFFFF" valign="top"><font face="Verdana" size="4" color="#FF0000">
                  Web Scan</font><p><b><font face="Verdana" size="1">This month, 
            OER profiles Websites of non-government organisations involved in 
            the noble work of establishing democracy and furthering the cause of 
            human rights in war-ravaged Iraq </font></b></p>
            <p><font face="Verdana" size="1"><b>Institutionalising democracy </b>
            <br>
            <a href="http://www.iraq-democracy.org/">
            http://www.iraq-democracy.org/</a><br>
            T<img border="1" src="regular5b.jpg" align="left" hspace="2" vspace="3" width="150" height="108">his Website, devoted to the Iraq Institute for Democracy, serves as 
            a platform where surfers - obviously, both Iraqis and non-Iraqis - 
            can share their views and discuss ways to create Iraq as a stable, 
            modern democratic country. The site talks of establishing liberal 
            values such as national reconciliation and compromise, tolerance, 
            amnesty, the acceptance of each other, human rights, minority and 
            women rights, freedom of press, transparency and the rule of law, 
            free development of personality in Iraq. The site publishes articles 
            written on Iraq, which talk about the democratisation process of the 
            country or its rich history and culture. It strives to create 
            awareness among the citizens and help them in developing a civil 
            society in Iraq on a democratic basis. Interested and like-minded 
            citizens of the world can contribute and share their views on the 
            site, and voice their opinion on Iraq. </font></p>
            <p><font face="Verdana" size="1"><b>Iraq insight<br>
            </b><a href="http://www.iraqfoundation.org">
            http://www.iraqfoundation.org</a><br>
            <img border="1" src="regular5a.jpg" hspace="3" vspace="3" align="right" width="150" height="117">Belonging to The Iraq Foundation, a non-profit, non-governmental 
            organisation working for democracy and human rights in Iraq, this 
            Website, gives extensive information on the work done by the 
            organisation, be it highlighting human rights abuses in Iraq or 
            educating non-Iraqis about Iraq. To strength its support for 
            democracy in the country, it speaks of the consequences of 
            totalitarianism in Iraq, and the cost in personal suffering, 
            economic collapse and social disintegration. The site also educates 
            and gives the surfer a better understanding of Iraq's potential as a 
            contributor to the political stability and economic progress in the 
            Middle East if civil and human rights and democracy prevails in the 
            country. </font></p>
            <p><font face="Verdana" size="1"><b>Human writes <br>
            </b><a href="http://www.iraqifd.org">http://www.iraqifd.org</a> <br>
            <img border="1" src="regular5c.jpg" hspace="3" vspace="3" align="left" width="150" height="112">Started by the Iraqi Forum or Democracy (IFD), a non-profit 
            political action group, this site works towards the goal of the organisation: promoting pluralistic democracy for Iraq. The Website 
            covers various informative articles on Iraqi issues and Saddam 
            Hussein. The site also runs a campaign to call for an international 
            tribunal to indict Saddam's regime. The campaign is seeking the help 
            of individuals and organisations across the world to lobby 
            policy-makers to apply the same yardstick to Iraq as that used for 
            Yugoslavia and call for an International Criminal Tribunal to indict 
            the erstwhile regime of Saddam Hussein. Surfers are free to 
            contribute to the site and raise issues.</font></p>

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