<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucImageSlider.ascx.cs"
    Inherits="ucImageSlider" %>
<div id="gallery">
    <div id="image">
        <a href="javascript:slideShow.nav(-1)" class="imgnav " id="previmg"></a><a href="javascript:slideShow.nav(1)"
            class="imgnav " id="nextimg"></a>
        <img alt="" id="1" style="opacity: 1;" src="Uploads/1.jpg" width="500px" /></div>
    <div id="thumbwrapper">
        <div id="thumbarea">
            <ul id="thumbs" style="left: 0px;">
                <%for (int i = 0; i < Files.Length; i++)
                  {
                %>
                <li value='<%=i+1 %>'>
                    <img src="Uploads/thumbs/<%=Files[i].Name %>" width="179" height="100" alt="" /></li>
                <%
                    } %>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    var imgid = 'image';
    var imgdir = 'Uploads';
    var imgext = '.jpg';
    var thumbid = 'thumbs';
    var auto = true;
    var autodelay = 3;
</script>
<script type="text/javascript" src="js/slide.js"></script>
