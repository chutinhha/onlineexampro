<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 

<SCRIPT LANGUAGE="JavaScript">
<!-- Original:  CodeLifter.com (support@codelifter.com) -->
<!-- Web Site:  http://www.codelifter.com -->
<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->
<!-- Begin

function printWindow() {
bV = parseInt(navigator.appVersion);
if (bV >= 4) window.print();
}

//  End -->

</script>


  <script type="text/javascript">
		$(document).ready(function () {
		var cy = $("#example").val();
		if(cy!=""){
		var dataString1 = "year="+ cy;
			$.ajax
			({
				type: "POST",
				url: "getcartoons.php",
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
			var dataString = "year="+ year;
			$.ajax
			({
				type: "POST",
				url: "getcartoons.php",
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
<table border="0" width="100%" cellspacing="0" cellpadding="0" style="margin-top:20px;">
  <tr>
    <td>
     <table border="0" width="100%" cellspacing="0" cellpadding="0" height="19">
      <tr>
          <td width="308" height="19" valign="top">
          <form name="doublecombo">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="485" bgcolor="#F3F3F3">
	<tr>
		<td width="122">
		<p align="center">
<?php
	for($i=date('Y'); $i>=2004; $i--) {
	$yearArray[]=$i;
	}
	?>
	<select name="example" id="example" size="1" style="color: #000000; font-family: Verdana; font-size: 8pt" id="selectedyear">
	<option value="">Select Year</option>
	<?php 
	foreach($yearArray as $key => $value )
	{	echo '<option ';
			if($_GET['year'] == $value ){
			echo 'selected'; }
			echo ' value="'.$value.'"';
		echo '>'.$value.'</option>';
	}
	?>
</select></td>
		<td width="99">

<p align="left">

<select name="stage2" size="1" style="font-family: Verdana; font-size: 8pt;float:left;display:block;" id="month">
<option value="">Select Month</option>
</select></td>
		<td>

           <p align="center">

           <a href="javascript:void(0);" id="gotourl">
           <img src="images/button.jpg" Align="left" border=0 alt="Description of Image" height="18" width="25"></A></td>
		<td width="72">
                <p align="center">
                <a href="javascript:window.close();">
    <font face="Verdana" size="1" color="#000000">Close</font></a></td>
	</tr>
</table>

</div>

<script>



function go(){

location=temp.options[temp.selectedIndex].value

}

//-->

</script>

</form>          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>