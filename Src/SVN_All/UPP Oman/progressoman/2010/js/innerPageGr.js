function display1()
{
	var quotations = new Array('<img src="../images/inside_top_banner1.jpg" width="525" height="85"/>','<a href="http://www.thewavemuscat.com" target="_blank"><img border="0" src="../images/inside_top_banner2.jpg" width="525" height="85"></a>');
	a=Math.floor(Math.random()*quotations.length);
	document.getElementById('quotation1').innerHTML=quotations[a];
	setTimeout("display1()",20000);
}

