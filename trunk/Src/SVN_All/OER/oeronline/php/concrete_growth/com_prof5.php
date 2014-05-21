<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - April - 2005 ::</title><script language="JavaScript">

<!--



function NewWindow(url) {                       

                var hWnd = window.open(url,"Window","width=600,height=430,resizable=yes,scrollbars=yes,left=100,top=25");

                if (hWnd.focus != null) hWnd.focus();

        }



// -->

</script>
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
            <p align="justify"><font face="Verdana" size="2" color="#C0C0C0">:: Company Profile </font>
            </p>
            <p align="center" dir="ltr"><b>
            <font face="Verdana" style="font-size: 14pt">CONSOLIDATED 
            CONTRACTORS <br>
            COMPANY OMAN LLC [CCC]<br>
            </font>
            <font face="Verdana" style="font-size: 8pt">Pioneers in Construction</font></b></p>
            <p align="justify"><font face="Verdana" size="1">
            <img border="0" src="prof5.jpg" align="left" hspace="5" vspace="2" width="250" height="144">As 
            part of its expansion in the Arabian Gulf region, Consolidated 
            Contractors Company Oman LLC [CCC], member of the Consolidated 
            Contractors Group established in 1952, started its operations in 
            Oman in 1971. Since then, CCC has been actively participating in the 
            infrastructure development of the country. Starting in the early 
            1970s as building contractors, CCC branched into road construction 
            in the mid 1970s and went on to add oil &amp; gas and pipelines to its 
            activities in the early 1980s and has today come to be recognised as 
            a reputable and highly respected EPC contractor.<br>
            <br>
            As a member of the CCC Group, CCC enjoys at all times the full 
            backing of the group in terms of financial, manpower, plant, 
            equipment and logistical support. CCC has to its credit a number of 
            prestigious landmarks in the Sultanate including a network of roads, 
            prominent buildings etc. CCC has also participated in the 
            construction of dams, marine and fisheries harbour, oil and gas 
            installations as well as pipelines.<br>
            <br>
            The Oman-India Urea Ammonia Plant in Sur, considered so far the 
            largest industrial plant built in the Sultanate of Oman, is another 
            landmark project for CCC. The company’s commitment to quality and 
            service is reflected in its impressive list of clientele, including 
            the Diwan of Royal Court, Muscat Municipality, the Ministry of 
            Communications and Telecommunications, the Ministry of Regional 
            Municipalities, Environment and Water Resources, the Ministry of Oil 
            &amp; Gas, the Ministry of Agriculture &amp; Fisheries etc.</font></p>
                    <hr color="#CC3333">
                    <p>&nbsp;</p>
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