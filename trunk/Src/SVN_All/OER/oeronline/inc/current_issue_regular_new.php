<html>



<head>



<meta name="description" content="Omanaccess">



<title></title>

</head>



<script

language="JavaScript">

<!--

function bala(s)

{       var d = s.options[s.selectedIndex].value;

parent.location.href = d;



}
function gotourl(s)
{       var d = s.options[s.selectedIndex].value;

parent.location.href = d;
}

//-->

</script>

  <script type="text/javascript">
    jQuery(document).ready(function($) {
		
		$('#quickpage').click(function(){
			var val = $("#quickbar").val();
			window.location= val;
			return false;
		});
    });

  </script>



<body topmargin="0" leftmargin="0" >

<table border="0" width="100%" cellspacing="0" cellpadding="0">

  <tr>

    <td width="100%" bgcolor="#FFFCF0">
   
    <form method="post" action="" target="_blank">

                        <div align="right"><p align="left">
                           <input type="button" name="test" id="quickpage" value="Go!"  style="font-family: Verdana; font-size: 8pt;float:right;display:block;">
							<select name="quickbar" id="quickbar" size="1" style="font-size: 8pt; font-family: Verdana; color: #000000; width:117; height:19">
 <?php
 $mm = $_GET['mnth'];
 $yy = $_GET['yr'];
 	$hquery	= "SELECT * FROM `".TB_HEADLISTS."` Where Auto_mnth='".$_GET['mnth']."' AND Auto_year='".$_GET['yr']."' AND publish='1' GROUP BY Category";
	$hres = mysql_query($hquery);
	//$ctquery	= "SELECT * FROM `".TB_CATEGORY."` ORDER BY Vcat_name ASC";
	//$ctres = mysql_query($ctquery);
	while($hrow=mysql_fetch_assoc($hres)){
	$ctquery	= "SELECT * FROM `".TB_CATEGORY."` WHERE Vcat_id='".$hrow['Category']."' ";
	$ctres = mysql_query($ctquery);
	$ctrow=mysql_fetch_assoc($ctres);
	$cid = $ctrow['Vcat_id']; 
	if($ctrow['Page_link']!=""){
	$link = $ctrow['Page_link']."?mnth=$mm&yr=$yy";
	}
	else{
	$link = "headlines.php?mnth=$mm&yr=$yy&cat=$cid";	
	}
	?>
    <option value="<?php echo $link; ?>"><?php echo $ctrow['Vcat_name']; ?></option>
    <?php
	}
	?>




                          </select>
                          </p>

                        </div>

                        </form>

</td>

    

  </tr>

</table>

</body>

</html>