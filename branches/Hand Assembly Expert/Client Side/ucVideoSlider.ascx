﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucVideoSlider.ascx.cs"
    Inherits="ucVideoSlider" %>
<asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
</asp:ScriptManager>
<div id="gallery">
    <div id="image" align="center">
        <a href="javascript:slideShow.nav(-1)" class="imgnav " id="previmg"></a><a href="javascript:slideShow.nav(1)"
            class="imgnav " id="nextimg"></a>
        <iframe id="1" width="460px" height="380px" frameborder="0" src="https://www.youtube.com/v/BO3N6VdYCjY?version=3&feature=player_detailpage"
            allowfullscreen=""></iframe>
    </div>
    <div id="thumbwrapper">
        <div id="thumbarea">
            <ul id="thumbs" style="left: 0px;">
                <%for (int i = 0; i < Videos.Length; i++)
                  {
                %>
                <li value='<%=i+1 %>'>
                    <img src="VideoThumbnails/<%=Videos[i].Name %>" width="179" height="100" alt="" /></li>
                <%
                    } %>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    var imgid = 'image';
    var imgdir = 'VideoThumbnails';
    var imgext = '.jpg';
    var thumbid = 'thumbs';
    var auto = true;
    var autodelay = 3;
    var srcc;    
</script>
