<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucImgaeSlider.ascx.cs"
    Inherits="ucImgaeSlider" %>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="js/jquery-easing-1.3.pack.js"></script>
<script type="text/javascript" src="js/jquery-easing-compatibility.1.2.pack.js"></script>
<script type="text/javascript" src="js/coda-slider.1.1.1.pack.js"></script>
<script type="text/javascript">

    var theInt = null;
    var $crosslink, $navthumb;
    var curclicked = 0;

    theInterval = function (cur) {
        clearInterval(theInt);

        if (typeof cur != 'undefined')
            curclicked = cur;

        $crosslink.removeClass("active-thumb");
        $navthumb.eq(curclicked).parent().addClass("active-thumb");
        $(".stripNav ul li a").eq(curclicked).trigger('click');

        theInt = setInterval(function () {
            $crosslink.removeClass("active-thumb");
            $navthumb.eq(curclicked).parent().addClass("active-thumb");
            $(".stripNav ul li a").eq(curclicked).trigger('click');
            curclicked++;
            if (6 == curclicked)
                curclicked = 0;

        }, 3000);
    };

    $(function () {

        $("#main-photo-slider").codaSlider();

        $navthumb = $(".nav-thumb");
        $crosslink = $(".cross-link");

        $navthumb
			.click(function () {
			    var $this = $(this);
			    theInterval($this.parent().attr('href').slice(1) - 1);
			    return false;
			});

        theInterval();
    });
</script>
<div id="page-wrap">
    <div class="slider-wrap">
        <div id="main-photo-slider" class="csw">
            <div class="panelContainer">
                <%foreach (System.IO.FileInfo item in Files)
                  {
                %>
                <div class="panel">
                    <div class="wrapper">
                        <img src='uploads/<%=item.Name %>' alt='<%=item.Name %>' />
                    </div>
                </div>
                <%
                    } %>
            </div>
        </div>
        <a href="#1" class="cross-link active-thumb">
            <img src='uploads/thumbs/<%=Files[0].Name %>' class="nav-thumb" alt="temp-thumb"
                width="50px" height="50px" /></a>
        <div id="movers-row">
            <%for (int i = 1; i < Files.Length; i++)
              {
            %>
            <div>
                <%if (i <= 5)
                  {%>
                <a href='#<%=(i+1).ToString() %>' class="cross-link">
                    <img src='uploads/thumbs/<%=Files[i].Name %>' class="nav-thumb" alt="temp-thumb"
                        width="50px" height="50px" /></a></div>
            <%} %>
            <%
                } %>
        </div>
    </div>
</div>
