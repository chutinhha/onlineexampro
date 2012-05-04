<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CountryStateCity.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:UpdatePanel ID="countrypanel" runat="server">
            <ContentTemplate>
                <span class="style1"><strong>Select Country:</strong></span>
                <asp:DropDownList ID="ddlcountry" AutoPostBack="true" AppendDataBoundItems="true"
                    runat="server" Height="20px" Width="156px" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged"
                    BackColor="#3399FF" ForeColor="#FF9999">
                </asp:DropDownList>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="ddlcountry" />
            </Triggers>
        </asp:UpdatePanel>
        <br />
        <asp:UpdatePanel ID="statepanel" runat="server">
            <ContentTemplate>
                <span class="style1"><strong>&nbsp;&nbsp;&nbsp;&nbsp; Select State:</strong></span>
                <asp:DropDownList ID="ddlstate" AutoPostBack="true" AppendDataBoundItems="true" runat="server"
                    Height="20px" Width="155px" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged"
                    BackColor="#FF3399" ForeColor="Maroon">
                </asp:DropDownList>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="ddlstate" />
            </Triggers>
        </asp:UpdatePanel>
        <br />
        <asp:UpdatePanel ID="citypanel" runat="server">
            <ContentTemplate>
                <span class="style1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select City:</strong></span>
                <asp:DropDownList ID="ddlcity" AutoPostBack="true" AppendDataBoundItems="true" runat="server"
                    Height="20px" Width="155px" BackColor="#66FFFF" ForeColor="#006666">
                </asp:DropDownList>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="ddlcity" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
