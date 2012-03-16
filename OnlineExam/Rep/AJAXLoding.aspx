<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAXLoding.aspx.cs" Inherits="AJAXLoding" %>

<%@ Register src="ucTest.ascx" tagname="ucTest" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Button" /><asp:Button ID="Button3"
                    runat="server" Text="Button" />
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="Button2" /> 
            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img src="Images/ajax_loader_large.gif" style="top: 46px; left: 292px; position: absolute;
                    height: 400px; width: 400px" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <uc1:ucTest ID="ucTest1" runat="server" />
    </div>
    </form>
</body>
</html>
