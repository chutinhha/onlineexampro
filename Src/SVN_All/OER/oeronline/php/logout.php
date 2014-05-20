<?php
	session_start();
        session_register("mes");
        $HTTP_SESSION_VARS["mes"]=$HTTP_SESSION_VARS["id"].", You Are Successfully Logged Off";
	$HTTP_SESSION_VARS["id"]=""; 
	header("Location: /index.php"); 
?>

