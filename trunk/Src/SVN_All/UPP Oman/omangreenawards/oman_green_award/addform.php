<?php
include("db.php");
$totalNo=mysql_query("SELECT id FROM tbform ORDER BY id DESC LIMIT 0,1 ");
			$totalRec=mysql_fetch_array($totalNo);
			$lastId=$totalRec[id]+1;

		foreach($_FILES as $userfile)
		{       
			if($userfile['name'] != '')
			{                             
			  $tmpfname = $userfile['tmp_name'];                           
			  $fname = 'file_'.$lastId.$i++.$userfile['name']; 
			  move_uploaded_file($tmpfname,"files/".$fname);
			  $fname_dbname .= $fname.",";
			 }
		}
		$fname_dbname = substr($fname_dbname,0,-1);
$sql="insert into tbform values('','$_POST[txtname]','$_POST[txtemail]','$_POST[txtgsm]','$fname_dbname',now())";

if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
 
mysql_close($con);
header("Location: userform.php?flag=1");
?>
