﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucImageSlider.ascx.cs"
    Inherits="ucImageSlider" %>
<div id="gallery" align="center">
    <div id="image">
        <a href="javascript:slideShow.nav(-1)" class="imgnav " id="previmg"></a><a href="javascript:slideShow.nav(1)"
            class="imgnav " id="nextimg"></a>
        <img alt="" id="1" style="opacity: 1;" src="fullsize/1.jpg" width="500px" /></div>
    <div id="thumbwrapper">
        <div id="thumbarea">
            <ul id="thumbs" style="left: 0px;">
                <%for (int i = 0; i < Files.Length; i++)
                  {
                %>
                <li value="<%=Files[i].Name %>">
                    <img src="thumbs/<%=Files[i].Name %>" width="179" height="100" alt="" /></li>
                <%
                  } %>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    var imgid = 'image';
    var imgdir = 'fullsize';
    var imgext = '.jpg';
    var thumbid = 'thumbs';
    var auto = true;
    var autodelay = 3;
</script>
<script type="text/javascript" src="slide.js"></script>
