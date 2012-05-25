<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucVideo.ascx.cs" Inherits="ucVideo" %>
<div id="gallery">
    <div id="image" align="center">
        <iframe width="440px" height="380px" id="vid" src="https://www.youtube.com/v/BO3N6VdYCjY?version=3&feature=player_detailpage">
        </iframe>
    </div>
    <div id="thumbwrapper">
        <div id="thumbarea">
            <ul id="thumbs" style="left: 0px;">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
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
