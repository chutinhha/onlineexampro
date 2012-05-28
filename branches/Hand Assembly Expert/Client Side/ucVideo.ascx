<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucVideo.ascx.cs" Inherits="ucVideo" %>
<div id="gallery1">
    <div id="image1" align="center">
        <iframe width="500px" height="380px" id="vid" allowfullscreen="" frameborder="0" src="https://www.youtube.com/v/BO3N6VdYCjY?version=3&feature=player_detailpage">
        </iframe>
    </div>
    <div id="thumbwrapper1">
        <div id="thumbarea1">
            <ul id="thumbs1" style="left: 0px;">
                <%for (int i = 0; i < Videos.Length; i++)
                  {%>
                <li value="<%=Videos[i].Name %>">
                    <img onclick="javascript:cal(this.src)" src="VideoThumbnails/<%=Videos[i].Name %>"
                        width="179" height="100" alt="" />
                </li>
                <%}%>
            </ul>
        </div>
    </div>
</div>
<asp:ScriptManager ID="ScriptManager1" EnablePageMethods="true" runat="server">
    <Services>
        <asp:ServiceReference Path="~/VideoService.asmx" />
    </Services>
</asp:ScriptManager>
<script type="text/javascript">
    function cal(a) {
        VideoService.GetURL1(a, success);
    }
    function success(r) {
        var ifrm = document.getElementById('vid');
        ifrm.src = r;
    }
</script>
<script type="text/javascript">
    var imgid1 = 'image1';
    var imgdir1 = 'VideoThumbnails';
    var imgext1 = '.jpg';
    var thumbid1 = 'thumbs1';
    var auto1 = true;
    var autodelay1 = 3;
</script>
<script type="text/javascript" src="js/Videoslide.js"></script>