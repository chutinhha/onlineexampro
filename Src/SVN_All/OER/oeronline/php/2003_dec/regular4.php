<?	session_start();?>
<?	session_register("id");
	if(!$HTTP_SESSION_VARS["id"]=="")
	{?>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>:: OER - December 2003 ::</title>
</head>

<body topmargin="0" leftmargin="0" rightmargin="0">











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
              
              <center>
                    <p align="left"><font face="Verdana" size="4" color="#FF0000">Tech
                    Review</font>
                    </center>
                    <p align="left"><font face="Verdana" size="1"><b>First 
                    e-learning Masters program in the Middle East</b><br>
                    <img border="0" src="tech.jpg" align="right" width="150" height="121">e-TQM 
                    College, the Dubai-based institution specialising in 
                    conducting online programs in total quality management, is 
                    launching a Masters program in Total Quality and Performance 
                    Management. The program is the first of its kind in the 
                    Middle East, in conjunction with Bradford School of 
                    Management and the European Centre for Total Quality 
                    Management (ECTQM).<br>
                    The new program, Masters of Science in Total Quality and 
                    Performance Management, has been designed to teach learners 
                    how TQM thinking can be embedded into business planning and 
                    operation management through process orientation and a focus 
                    on customer satisfaction. The MSc learning journey will 
                    incorporate books, CDs and on-line discussion as part of the 
                    program support.<br>
                    “The program will allow us to bring the highest TQM 
                    standards to the learning community in the Arab World,” said 
                    Professor Mohammed Zairi, Dean of e-TQM College. The 
                    program, which can be completed during a two-year term, is 
                    currently offered in English language and it will be 
                    available in Arabic at a later date. For applicants who 
                    would like to enhance their English language to fulfil the 
                    entrance requirement, e-TQM College works closely with ELS 
                    (English Language Services), an in-class English language 
                    course widely available at various centres throughout the 
                    Middle East region.<br>
                    “The new program takes e-TQM College closer to its mission 
                    of becoming the college of choice in the Arab World for 
                    Total Quality Management by providing managers, in the 
                    public and private sectors, an opportunity to advance their&nbsp; 
                    careers by developing intensive customised modules,” said Dr 
                    Mansoor Al Awar, director of e-TQM College.</font></p>
                    <p align="left"><font face="Verdana" size="1"><b>Panasonic's 
                    announces GIGA range of Projection TVs</b><br>
                    <img border="0" src="tv.jpg" align="left" hspace="5" vspace="5" width="150" height="156">Panasonic, 
                    the leading global manufacturer of AV products, business and 
                    office solutions, has announced the launch of a new GIGA 
                    range of Projection TVs models TX-51P800 and TX-43P800. The 
                    TVs’ large-screen format, advanced picture enhancement 
                    features and high-powered sound system make them ideal for 
                    high-definition programming and watching DVDs in cinematic 
                    style. The new range of made-in-Japan TVs are fitted with 
                    never-before features including the industry’s first 3-way, 
                    6-speaker Power Wing System, 3D Y/C Digital Comb Filter 
                    (luminance-Y and chrominance-C) and High Definition Digital 
                    Sound from BBE. The P800 series is also equipped with 2 DVD 
                    inputs.<br>
                    “The TX-51P800 and TX-43P800 projection TVs are designed to 
                    offer users a complete home theatre experience. We have seen 
                    an increase in demand for high definition, mega-sound 
                    viewing in the Middle East market and we are confident that 
                    the new range will also have wide acceptance. We estimate 
                    the demand for projection TVs to be 30,000 sets in 2003, 
                    with Panasonic holding 20 per cent share in the market. We 
                    expect the demand to grow in this region”, said Yasuyuki 
                    Shimizu, manager (consumer AV department), Panasonic 
                    Marketing Middle East FZE.<br>
                    The P800 range of TVs is the first in the industry to employ 
                    the 3D (luminance and chrominance) Y/C Digital Comb Filter 
                    for PAL signals, which enables it to perform field-by-field 
                    comparisons of the television image to accurately separate 
                    colour information from B&amp;W. The resultant images are 
                    further enhanced by a 100 Hz Digital Scan that doubles the 
                    image display rate.</font></p>
              
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