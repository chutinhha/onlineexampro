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
              <p align="left"><font face="Verdana" size="4" color="#FF0000">Web 
              scan </font>
              
              <center>
                    <p align="left"><b><font face="Verdana" size="1">This month, 
                    OER reviews Websites that provide retailing resources like 
                    consulting, news and strategy analysis for consumer goods 
                    companies and retailers</font></b></p>
              </center>
              <p align="left"><font face="Verdana" size="1"><b>Sell more, not 
              little</b><br>
              <a target="_blank" href="http://www.McMillanDoolittle.com">
              http://www.McMillanDoolittle.com</a></font></p>
              <p align="left"><font face="Verdana" size="1">
              <img border="0" src="im90b.jpg" align="left" hspace="5" vspace="5" width="150" height="113">McMillanDoolittle.com, 
              &quot;the retail experts&quot;, is a one-stop for all help needed on any 
              topic related to retail strategy -be it strategy consulting, 
              retail consulting, or strategic Internet consulting. The site is 
              run by professionals who fully understand the dynamics of new 
              customer-driven retail strategies. These experts help client 
              companies by creating bold strategies for them, helping them in 
              the process of creating productive and winning store formats. They 
              also optimise brands for customers by focusing on market needs and 
              the strategies to fulfil those needs. Moreover, they evaluate 
              concepts and strategies and conduct feasibility assessments 
              besides assisting retailers facing difficult situations and 
              evaluating retail best practices.</font></p>
              <p align="left"><font face="Verdana" size="1"><b>Fast forward</b><br>
              <a target="_blank" href="http://www.RetailForward.com">
              http://www.RetailForward.com</a></font></p>
              <p align="left">
              <img border="0" src="im90a.jpg" align="right" hspace="5" vspace="5" width="150" height="113"></p>
              <p align="left"><font face="Verdana" size="1">RetailForward.com is 
              a strategy consulting Website providing retailers and consumer 
              goods companies professional services aimed at improving their 
              market and financial performance. The site develops customised 
              strategic solutions for the world's leading retailers and consumer 
              products companies. The solutions range from new concept 
              development and market positioning to brand strategy and 
              distribution channel analysis. It offers expert advice to clients 
              through industry knowledge, technical and functional skills, 
              fact-based philosophy, and through association with best-in-class 
              implementation resources. More than 250 clients worldwide rely on 
              the expertise of its retail intelligence programmes for consumer 
              research and economic forecasting of soft goods, home goods, 
              food/drug/mass, global and e-retail space.</font></p>
              <p align="left"><font face="Verdana" size="1"><b>Liwe wire</b><br>
              <a target="_blank" href="http://www.RetailWire.com">
              http://www.RetailWire.com</a></font></p>
              <p align="left"><font face="Verdana" size="1">
              <img border="0" src="im90c.jpg" align="left" hspace="5" vspace="5" width="150" height="113">RetailWire.com 
              is a free online service for retail industry professionals which 
              offers unique, multi-perspective discussions on the latest retail 
              news and issues. Also organised within the targeted Info Centers 
              are its exclusive Category In-Sites and Business In-Sites, 
              year-round resources for vital retailing business knowledge. The 
              premium online service provides daily analysis and perspectives on 
              current retail industry news for &quot;staying current and maximising 
              profits&quot; within key retail business areas. Each Info Center is in 
              itself a mini-portal, focusing on the news and dynamics of a 
              particular category or business area: General Retail, Grocery, 
              Dairy, Beverages, Frozen, Fresh Foods, Healthy Living, The 
              Consumer, Supply Chain Management, etc.<br>
              <br>
&nbsp;</font></p>
              
              <center>
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