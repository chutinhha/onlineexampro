<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
  <script type="text/javascript">
		$(document).ready(function () {
		var cy = $("#example").val();
		if(cy!=""){
		var mnth = "<?=$_GET['mnth']?>";
		var month1= "<?=$_GET['month']?>";
		if (mnth!="") {
			var mn = mnth;
		}
		if (month1!="") {
			var mn = month1;
		}
		var dataString1 = "year="+cy+"&mn="+mn;
			$.ajax
			({
				type: "POST",
				url: "getmonths.php",
				data: dataString1,
				cache: false,
				success: function(html)
				{
					$("#month").empty();
					$("#month").append(html);
				} 
	 		});
		}
		//alert(cy);
		$("#example").change(function(event){
			var year=$(this).val();
			//alert(year);
			var mnth = "<?=$_GET['mnth']?>";
		var month1= "<?=$_GET['month']?>";
		if (mnth!="") {
			var mn = mnth;
		}
		if (month1!="") {
			var mn = month1;
		}
			var dataString = "year="+year+"&mn="+mn;
			$.ajax
			({
				type: "POST",
				url: "getmonths.php",
				data: dataString,
				cache: false,
				success: function(html)
				{
					$("#month").empty();
					$("#month").append(html);
				} 
	 		})
			});
		});
		</script>
		<script>
		$(document).ready(function () {
		$("#gotourl").click(function(){
		var links=$("#month").val();
		var yr=$("#example").val();
		if(yr<2013){
	//window.location=links+"?url=1&mnth="+yr;
	window.location=links;
	}
	else{
	window.location=links;
	}
		});
		});
		/*
	function go(){
	var links=document.doublecombo.stage2.value;
	var yr=document.doublecombo.example.value;
	var mn = document.getElementById('example').options[0].mn;
				alert(mn);//?url=0&mnth=October 2013
	if(yr<2013){
	window.location=links+"?url=1&mnth="+yr;
	}
	else{
	window.location=links+"?url=0&mnth="+yr;
	}
	}*/
		</script>
              <form name="doublecombo">
<table border="0" cellpadding="0" style="border-collapse: collapse;margin:0 auto;" id="table5" height="22">
  <tr>
    <td height="28" align="center" valign="top">
    <div style="float:left;margin-right:5px;">
	<?php
	for($i=date('Y'); $i>=2000; $i--) {
	$yearArray[]=$i;
	}
	//$yearArray = array(2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000);
	//print_r($yearArray);
	?>
	<select name="example" id="example" size="1" style="color: #000000;width:53px; font-family: Verdana; font-size: 8pt" id="selectedyear">
	<?php 
	foreach($yearArray as $key => $value )
	{	echo '<option ';
			if($_GET['year'] == $value )
			echo 'selected';
			echo 'value="'.$value.'"';
		echo '>'.$value.'</option>';
	}
	?>

</select>
</div>

<div style="float:left;">
<select name="stage2" size="1" style="font-family: Verdana; font-size: 8pt;float:left;display:block;width:110px;" id="month">
<option value="index.php">October 2013</option>

</select></div> <div style="float:left;padding-left:5px;">
<input type="button" name="test" id="gotourl" value="Go!" style="font-family: Verdana; font-size: 8pt;float:left;display:block;"></div>

</td>
    </tr>
  </table>
 


  <?php /*?>if(isset($_REQUEST['url']))
{
 echo '<script type="text/javascript">
window.onload=redirect('.$_REQUEST['url'].');
</script>';
}<?php */?>

</form>
          