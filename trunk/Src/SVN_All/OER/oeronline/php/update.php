<?php

	

	//$db=mysql_connect("localhost","root");

	//mysql_select_db("oer",$db);

	

	$db=mysql_connect("localhost","oer","rtfGREsd");

	mysql_select_db("oeronline_com",$db);



	

$sql="insert into oer(name,desi,comp,tel,gsm,email,id,pwd)values('bijutest','rtr','rtrt','rewt','wtwer','twt@.','wdfgdfg','dfg')";

$result=mysql_query($sql,$db);

	

echo "updated";

?>