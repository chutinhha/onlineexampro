<?php

	$host="custsql-ywh01.yourwebhostingmysql.com";
	//$db="oerDebat_data";
	//$u="debatUser";
	//$p="oer#10%debat";
	$db="oerdebatdata";
	$u="oerdebat";
	$p="oerdebat@123";
	$con = mysql_connect($host,$u,$p);
	mysql_select_db($db);
	?>