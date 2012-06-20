<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSlideShow.ascx.cs" Inherits="ucSlideShow" %>
<table cellpadding="0" cellspacing="0">
    <tr>
        <td height="330px" valign="top" align="center">
            <div id="header">
                <div class="wrap">
                    <div id="slide-holder">
                        <div id="slide-runner">
                            <a href="">
                                <img id="slide-img-1" src="images/Slider/nature-photo.png" class="slide" alt="" /></a>
                            <a href="">
                                <img id="slide-img-2" src="images/Slider/nature-photo1.png" class="slide" alt="" /></a>
                            <a href="">
                                <img id="slide-img-3" src="images/Slider/nature-photo2.png" class="slide" alt="" /></a>
                            <a href="">
                                <img id="slide-img-4" src="images/Slider/nature-photo3.png" class="slide" alt="" /></a>
                            <a href="">
                                <img id="slide-img-5" src="images/Slider/nature-photo4.png" class="slide" alt="" /></a>
                            <a href="">
                                <img id="slide-img-6" src="images/Slider/nature-photo4.png" class="slide" alt="" /></a>
                            <a href="">
                                <img id="slide-img-7" src="images/Slider/nature-photo6.png" class="slide" alt="" /></a>
                            <div id="slide-controls">
                                <p id="slide-client" class="text">
                                    <strong>post: </strong><span></span>
                                </p>
                                <p id="slide-desc" class="text">
                                </p>
                                <p id="slide-nav">
                                </p>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        if (!window.slider) var slider = {}; slider.data = [{ "id": "slide-img-1", "client": "nature beauty", "desc": "nature beauty photography" }, { "id": "slide-img-2", "client": "nature beauty", "desc": "add your description here" }, { "id": "slide-img-3", "client": "nature beauty", "desc": "add your description here" }, { "id": "slide-img-4", "client": "nature beauty", "desc": "add your description here" }, { "id": "slide-img-5", "client": "nature beauty", "desc": "add your description here" }, { "id": "slide-img-6", "client": "nature beauty", "desc": "add your description here" }, { "id": "slide-img-7", "client": "nature beauty", "desc": "add your description here"}];
                        $(window)._load(function () {
                            $("#form1").next().css("display", "none");
                        });
                    </script>
                </div>
            </div>
        </td>
    </tr>
</table>
