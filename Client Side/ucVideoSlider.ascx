<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucVideoSlider.ascx.cs"
    Inherits="ucVideoSlider" %>
<div id="gallery">
    <div id="image" align="center">
        <a href="javascript:slideShow.nav(-1)" class="imgnav " id="previmg"></a><a href="javascript:slideShow.nav(1)"
            class="imgnav " id="nextimg"></a>
        <iframe width="440px" height="380px" id="1" frameborder="0" src="http://www.youtube.com/v/BO3N6VdYCjY?version=3&feature=player_detailpage"
            allowfullscreen=""></iframe>
    </div>
    <div id="thumbwrapper">
        <div id="thumbarea">
            <ul id="thumbs" style="left: 0px;">
                <%for (int i = 0; i < Videos.Length; i++)
                  {
                %>
                <li value="<%=Videos[i].Name %>">
                    <img src="VideoThumbnails/<%=Videos[i].Name %>" width="179" height="100" alt="" /></li>
                <%
                  } %>
            </ul>
        </div>
    </div>
</div>

<script type="text/javascript">
    var imgid1 = 'image';
    var imgdir1 = 'VideoThumbnails';
    var imgext1 = '.jpg';
    var thumbid1 = 'thumbs';
    var auto1 = true;
    var autodelay1 = 3;
</script>
<script type="text/javascript" src="js/Videoslide.js"></script>
