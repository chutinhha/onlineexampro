<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucVideoSlide.ascx.cs" Inherits="ucVideoSlide" %>
<link rel="stylesheet" type="text/css" href="style1.css" />
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

        $crosslink.removeClass("active-thumb1");
        $navthumb.eq(curclicked).parent().addClass("active-thumb1");
        $(".stripNav1 ul li a").eq(curclicked).trigger('click');

        theInt = setInterval(function () {
            $crosslink.removeClass("active-thumb1");
            $navthumb.eq(curclicked).parent().addClass("active-thumb1");
            $(".stripNav1 ul li a").eq(curclicked).trigger('click');
            curclicked++;
            if (6 == curclicked)
                curclicked = 0;

        }, 3000);
    };

    $(function () {

        $("#main-photo-slider1").codaSlider();

        $navthumb = $(".nav-thumb1");
        $crosslink = $(".cross-link1");

        $navthumb
			.click(function () {
			    var $this = $(this);
			    theInterval($this.parent().attr('href').slice(1) - 1);
			    return false;
			});

        theInterval();
    });
	</script>
<div id="page-wrap1">
    <div class="slider-wrap1">
        <div id="main-photo-slider1" class="csw1">
            <div class="panelContainer1">
                <%foreach (System.IO.FileInfo item in Files)
                  {
                %>
                <div class="panel1">
                    <div class="wrapper1">
                        <img src='uploads/<%=item.Name %>' alt='<%=item.Name %>' />
                    </div>
                </div>
                <%
                    } %>
            </div>
        </div>
        <a href="#11" class="cross-link1 active-thumb1">
            <img src='uploads/thumbs/<%=Files[0].Name %>' class="nav-thumb1" alt="temp-thumb1" /></a>
        <div id="movers-row1">
            <%for (int i = 1; i < Files.Length; i++)
              {
            %>
            <div>
                <a href='#<%=(i+1).ToString() %>1' class="cross-link1">
                    <img src='uploads/thumbs/<%=Files[i].Name %>' class="nav-thumb1" alt="temp-thumb1" /></a></div>
            <%
                } %>
        </div>
    </div>
</div>
