<?php
$con = mysql_connect("localhost","awardmember","123*member*123");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("omangreenawarddb", $con);
?>