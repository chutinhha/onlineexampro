<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSlideShow.ascx.cs" Inherits="ucSlideShow" %>
<link href="1/js-image-slider.css" rel="stylesheet" type="text/css" />
<script src="1/js-image-slider.js" type="text/javascript"></script>
<link href="generic.css" rel="stylesheet" type="text/css" />
<table cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top" align="center">
            <div id="sliderFrame" align="center">
                <div id="slider">
                    <img width="980px" height="290px" src="images/image-slider-1.jpg" alt="" />
                    <img src="images/image-slider-2.jpg" alt="" />
                    <img src="images/image-slider-3.jpg" alt="" />
                    <img src="images/image-slider-4.jpg" alt="" />
                    <img src="images/image-slider-6.jpg" alt="" />
                    <img src="images/image-slider-5.jpg" alt="#htmlcaption" />
                </div>
                <div id="htmlcaption" style="display: none;">
                    <em>T-shirt</em> caption. Back to <a href="#">Infiniticlothing.com</a>.
                </div>
            </div>
            <br />
            <br />
        </td>
    </tr>
</table>
