<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>
<%@ Register Assembly="WebVideo" Namespace="WebVideo" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px; color: white; padding-top: 0px; font-family: Calibri; background-color: navy" bgcolor="#000000">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BackColor="LightSteelBlue" BorderColor="White"
            BorderStyle="Outset" Font-Size="X-Large" ForeColor="Black" Height="88px" Width="100%">
            &nbsp;&nbsp;
            <br />
            &nbsp; Web Video Test Page</asp:Panel>
    
    </div>
        <br />
        &nbsp; &nbsp;&nbsp;
        <cc1:WVC ID="WVC1" runat="server" BackColor="Black" BorderStyle="Ridge" FilePath="http://192.168.10.149/Eati.swf"
            Height="344px" ShowControls="False" ShowPositionControls="False" ShowStatusBar="False"
            ShowTracker="False" Width="425px" />
        <br />
        &nbsp; &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        Width="432px" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="http://192.168.10.149/Eati.swf">VW Commercial 1</asp:ListItem>
            <asp:ListItem Value="http://www.youtube.com/v/ZbubK2l4yD8">VW Commercial 2</asp:ListItem>
            <asp:ListItem Value="http://www.youtube.com/v/0I0WfnhVs2s">VW Commercial 3</asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
