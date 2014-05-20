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
          </center>
            <td width="70%" bgcolor="#FFFFFF" valign="top">
              <p align="left"><font face="Verdana" size="4" color="#FF0000">Web 
              scan </font>
              
              <center>
                    <p align="left"><font face="Verdana" size="1"><b>This month, 
                    OER profiles Websites that offer their services to help in 
                    the national initiatives of providing employment for the 
                    citizens of different countries</b></font></p>
                    <p>
                    <img border="0" src="traintowork.jpg" width="200" height="149"></p>
              </center>
              <p align="left"><font face="Verdana" size="1"><b>Train to work</b><br>
              <a target="_blank" href="http://www.worktrain.gov.uk">
              http://www.worktrain.gov.uk</a><br>
              This Website, a national jobs and learning site of the UK, has 
              over 400,000 jobs to choose from both, in land or abroad. Besides 
              offering job opportunities, the site offers over 500,000 different 
              training courses, and over 45,000 voluntary opportunities for 
              those interested in this field. The site also has information 
              about local childcare provision. There is information available 
              about different types of careers, providing tips about different 
              career options. Besides, you can also explore the Useful Info 
              section of the site, which has over 150 external links to other 
              sites all providing information, advice and guidance on a range of 
              topics relating to learning and work. It is an easy-to-navigate 
              site with help offered in each section.</font></p>
              <p align="center">
              <img border="0" src="employmentaid.jpg" width="200" height="158"></p>
              <p align="left"><b><font face="Verdana" size="1">Employment aid</font></b><br>
              <font face="Verdana" size="1">
              <a href="http://www.national-employment.com">
              http://www.national-employment.com</a><br>
              The Website of National Employment Service Corporation offers 
              professional help and service in the employment industry in the 
              US. The site helps job seekers by utilising the latest in 
              recruiting technology and online Web-based programmes to find and 
              place the most qualified candidate with client companies. The 
              Website has been recruiting along the region of the NH Seacoast of 
              the United States for the past 11 years, and because of the 
              success rate it is expanding nationwide. Now, the corporation has 
              major offices in different parts of the country like, New 
              Hampshire, Massachusetts, California, and Texas. The Website 
              offers one of the most diverse and far-reaching employment chances 
              both in the temporary industry and permanent placement services. 
              It helps in recruiting people for various fields like information 
              technology, software engineering, programming and development, 
              product engineering, product design, manufacturing industrial 
              engineering, design and drafting, light industrial, administrative 
              office and national financial staffing.</font></p>
              <p align="center">
              <img border="0" src="future.jpg" width="200" height="148"></p>
              <p align="left"><font face="Verdana" size="1"><b>Career carrier</b><br>
              <a href="http://www.myfuture.edu.au">http://www.myfuture.edu.au</a><br>
              Myfuture.edu.au is Australia's national online career exploration 
              and information service. This site assists local job seekers in 
              making informed career decisions by providing information and 
              advice on the labour market, industries, occupations, education, 
              training courses, tertiary providers, qualifications, awards and 
              various scholarships. A registration-driven site, it offers 
              step-by-step online assistance in understanding a user's career 
              needs, building his personal profile, generating career ideas, 
              sorting his career favourites, setting a career direction for him, 
              creating his career pathway plan and finally implementing a 
              well-guided plan for him. It is a perfect site for freshers to 
              help them in their career maze. Besides, it offers information on 
              news stories, career events, government career initiatives, 
              community career initiatives.</font></p>
              
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