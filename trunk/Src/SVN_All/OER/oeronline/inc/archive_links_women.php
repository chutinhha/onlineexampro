<style>
.yearfont{
color:#000000;
}
.activeyear{
	color:#F00 !important;
}
</style>
<script>
var yr = "<?php echo $y; ?>";
$(document).ready(function(){
	$("#"+yr).addClass("activeyear");
});
</script>						
<?php
	for($i=date('Y'); $i>=2014; $i--) {
	$yArray[]=$i;
	}
	//print_r($yArray);
	foreach($yArray as $key => $value )
	{
	?>
    							<td class="style1" style="width: 136px">
                                <strong>
								<span class="style4">
								<span class="style7">
								<a class="style3" href="thewoman_emagazine_archive_new.php?yr=<?php echo $value; ?>">
								<font  class="yearfont" id="<?php echo $value; ?>"><?php echo $value; ?></font></a></span></span></strong></td>
                                <?php } ?>
								<td class="style1" style="width: 136px">
                                <strong>
								<span class="style4">
								<span class="style7">
								<a class="style3" href="thewoman_emagazine_archive_2013.php">
								<font  class="yearfont" id="2013">2013</font></a></span></span></strong></td>
                                
								<td class="style1" style="width: 136px"><strong>
								<span class="style2">
								<span class="style6">
								<a class="style3" href="thewoman_emagazine_archive_2012.php">
								<font  class="yearfont" id="2012">2012</font></a></span></span></strong></td>
								<td class="style1" style="width: 136px"><strong>
								<span class="style2">
								<span class="style6">
								<a class="style3" href="thewoman_emagazine_archive_2011.php">
								<font  class="yearfont" id="2011">2011</font></a></span></span></strong></td>
								<td class="style1" style="width: 200px"><strong>
								<span class="style4">
								<span class="style7">
								<a class="style3" href="thewoman_emagazine_archive_2010.php">
								<font  class="yearfont" id="2010">2010</font></a></span></span></strong></td>
								<td class="style1" style="width: 148px"><strong>
								<span class="style4">
								<span class="style7">
								<a class="style3" href="thewoman_emagazine_archive_2009.php">
                                <font color="#000000" id="2009">2009</font></a></span></span></strong>
                                </td>