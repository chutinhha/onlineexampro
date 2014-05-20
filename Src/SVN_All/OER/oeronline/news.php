<link rel="stylesheet" href="css/newsstyle.css" type="text/css" media="screen" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jcarousellite_1.0.1c4.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$(".newsticker-jcarousellite").jCarouselLite({
		vertical: true,
		hoverPause:true,
		visible: 5,
		auto:500,
		speed:1000
	});
});
</script>

<?php
$insideitem = false;
$tag = "";
$title = "";
$description = "";
$link = "";
function startElement($parser, $name, $attrs) {
 global $insideitem, $tag, $title, $description, $link;
 if ($insideitem) {
  $tag = $name;
 } elseif ($name == "ITEM") {
  $insideitem = true;
 }
}
function endElement($parser, $name) {
 global $insideitem, $tag, $title, $description, $link;
 if ($name == "ITEM") {
  printf("<li><a href='%s'>&raquo;&nbsp;%s</a></li>", trim($link),htmlspecialchars(trim($title)));
  $title = "";
  $description = "";
  $link = "";
  $insideitem = false;
 }
}
function characterData($parser, $data) {
 global $insideitem, $tag, $title, $description, $link;
 if ($insideitem) {
 switch ($tag) {
  case "TITLE":
  $title .= $data;
  break;
  case "DESCRIPTION":
  $description .= $data;
  break;
  case "LINK":
  $link .= $data;
  break;
 }
 }
}
echo '<div id="newsticker-demo">    
    <div class="newsticker-jcarousellite">
		<ul>';
$xml_parser = xml_parser_create();
xml_set_element_handler($xml_parser, "startElement", "endElement");
xml_set_character_data_handler($xml_parser, "characterData");
$fp = fopen("http://www.aljazeera.com/Services/Rss/?PostingId=2007731105943979989","r")
 or die("Error reading RSS data.");
while ($data = fread($fp, 4096))
 xml_parse($xml_parser, $data, feof($fp))
  or die(sprintf("XML error: %s at line %d",
   xml_error_string(xml_get_error_code($xml_parser)),  
   xml_get_current_line_number($xml_parser)));
fclose($fp);
xml_parser_free($xml_parser);
echo ' </ul>
    </div>
    
</div>';
?>

