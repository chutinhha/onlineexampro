<?php
// Important! You have to include it before your html code
include_once "/home/oer/oeronline-www/poll/pollphp/textfile/poll_cookie.php";
?>
<p>
<?php
include_once "/home/oer/oeronline-www/poll/pollphp/textfile/booth.php";
echo $php_poll->poll_process(4);
?>
