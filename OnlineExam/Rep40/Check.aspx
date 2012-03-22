<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Check.aspx.cs" Inherits="Check" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ASP.NET Embedded Video Player | YouTube DEMO</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div>
                <!-- ALL CONTENT IS SHOWN FOR DEMO PURPOSE ONLY-->
                <asp:DropDownList ID="cmbPlaylist" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="x_4CNvG1Q_M">
                        Anastasia Volochkova dancing (Adiemus)
                    </asp:ListItem>
                    <asp:ListItem Value="raRaxt_KM9Q">
                        Sound Of Silence (Masters of Chant)
                    </asp:ListItem>
                    <asp:ListItem Value="8qSeYLhe09s">
                        For Whom The Bell Tolls (Bee Gees)
                    </asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </div>
            <asp:Button ID="Button1" runat="server" Text="START AT 15 SEC" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="START AT 60 SEC" OnClick="Button2_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <hr />
    <h4>
        Sample Demo: Anastasia Volochkova, Russian prima ballerina is dancing "Adiemus"</h4>
    <h4>
        Initial settings: 640x505, autoplay=0</h4>
    <hr />
    <h4>
        More RIA Demo available at: <a href="http://www.webinfocentral.com/RESOURCES/YouTubeMusicVideo.aspx"
            target="_blank">www.webinfocentral.com</a>
    </h4>
    <hr />
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
        width="336" height="297">
        <param name="movie" value="scrubber.swf?file=http://&bufferTime=3&autoStart=false" />
        <param name="quality" value="high" />
        <embed src="scrubber.swf?file=http://&bufferTime=3&autoStart=false" quality="high"
            pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"
            width="336" height="297"></embed>
    </object>
    </form>
</body>
</html>
