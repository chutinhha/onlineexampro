<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - September 2003 ::</title>
</head>

<body topmargin="0" leftmargin="0">










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
            <td width="70%" bgcolor="#FFFFFF" valign="top"><p align="justify">
            <font face="Verdana" size="4" color="#FF0000">An oily solution<br>
            </font><font face="Verdana">
            <br>
            </font><font face="Verdana" size="1"><b>Iraqi oil holds the key to 
            the global oil market, but the US administrators cannot fit it in 
            the lock</b><br>
            <br>
            Oil analysts' reports have a well-deserved reputation for being drab 
            and dull, but the exception proves the rule in the case of William 
            Buchanan and his team at Standard Bank in London. &quot;What do New York 
            and Baghdad have in common?&quot; posed the team in its weekly oil market 
            report, published in late August. &quot;Answer: they have both recently 
            experienced extensive power failures.&quot; The much-publicised US power 
            failure tickled anti-Americans, who argued that Uncle Sam was on the 
            receiving end of a well-earned taste of his own medicine when the 
            lights went out across New York. But the reality is that the 
            meltdown in the US was put right in little more than 72 hours, and 
            for most people caused little more than inconvenience. The situation 
            in Iraq, by contrast, has gone unresolved for well over 72 days, 
            with little prospect of a resolution in sight. <br>
            America's failure to repair Iraq's energy infrastructure - 
            particularly upstream oil production - is having profound 
            consequences in the oil market. Brent Crude was threatening to 
            breach the psychological US$30 per barrel (/b) mark in mid/late 
            August, as sabotage continued to blight attempts to turn the taps 
            back on in Iraq's oil fields.<br>
            &quot;The situation in Iraq has deteriorated significantly over the 
            weekend with incidents of sabotage against the Baghdad water system 
            as well as the vital oil export pipeline from Kirkuk to Turkey,&quot; 
            wrote the Standard Bank team. &quot;This facility was in the process of 
            being restarted after having been shutdown during the war in March. 
            American sources indicate that it will take between 2 to 4 weeks to 
            repair the damage.&quot;<br>
            This is playing havoc with oil price forecasts. The Energy 
            Information Administration, part of the US Department of Energy, is 
            at a loss. Its baseline forecast has oil prices easing slightly in 
            2004, from around $30/b today for West Texas Intermediate (WTI) to 
            nearer $25/b this time next year. But the EIA admits prices could 
            easily rocket to nearly $40/b if Iraqi oil stays in the ground, or 
            plunge to $15/b if the trickle becomes a torrent.<br>
            &quot;If Iraqi exports do increase at the target rates set by the Iraqi 
            Ministry of Oil, there would be downward pressure on prices,&quot; says 
            the EIA in its August Short-Term Energy Outlook. &quot;However, OPEC 
            continues to monitor the situation in Iraq and could reduce its own 
            production. In short, prices are expected to fall only if OPEC fails 
            to cut back its production to accommodate any Iraqi increases, which 
            may not happen unless OPEC members become more interested in 
            obtaining higher quota allocations than in maintaining high crude 
            oil prices. The EIA's low price case, where WTI prices fall to 
            between $15-$20 per barrel in 2004, also depends on continued high 
            OPEC production through next year.&quot;<br>
            Iraq had earlier claimed to have brought production capacity up to 
            about 1.7 million barrels/day, but average output failed to come 
            close to that because of continued attacks on the pipeline 
            infrastructure. The ministry hopes to bring output up to the pre-war 
            capacity of 2.8 million b/d by April 2004, but the attacks will have 
            to stop soon if this target is to be met.<br>
            As ever with forecasting oil prices, there is an element of crystal 
            ball gazing. Who can possibly know whether saboteurs will continue 
            to defy the US army? But the Economist Intelligence Unit (EIU) 
            insists that the situation outside Iraq points to a sharp fall in 
            prices in 2004. <br>
            On the other hand, the EIU has steadfastly refused to raise its 
            forecasts for 2004. But he explains: &quot;The real test of OPEC unity 
            has now been postponed until 2004, when higher Iraqi crude oil 
            supplies will combine with rising production capacities worldwide, 
            from West Africa to eastern Europe and into the Middle East. The 
            long-term implications of OPEC's remarkably successful attempt to 
            stimulate prices artificially in 1999 will then unfold. High prices 
            since then have encouraged massive investment in new oil supply, and 
            as this comes on stream, prices will fall sharply. We expect this to 
            occur in early 2004, with prices dipping below the psychologically 
            important US$20/b level.</font></p>
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