<?php
    
        $db=mysql_connect("localhost","oer","pillai45");
	mysql_select_db("oeronline_com",$db);

	
	$sql="select * from OER;
	$result=mysql_query($sql,$db);
	while( $myrow=mysql_fetch_array($result))
	{
		
		echo $myrow["name"];

	}
	?>
	