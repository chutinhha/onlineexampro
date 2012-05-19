<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/AdminStyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: #333300">
    <form id="form1" runat="server">
    <div>
        <table cellpadding="0" cellspacing="0" width="980px" align="center" style="background-color: #FFFFFF">
            <tr>
                <td align="center" style="background-color: #CCCCCC">
                    <asp:Image ID="Logo" runat="server" ImageUrl="~/Images/Logo.png" Height="250px" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="Title">
                    Add logo &amp; Images:
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="left">
                    <table>
                        <tr>
                            <td class="SubTitle">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Choose Category:
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlCategory" runat="server" Width="150px" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"
                                    AutoPostBack="True">
                                    <asp:ListItem Value="1">Site Logo</asp:ListItem>
                                    <asp:ListItem Value="2">Slider Images</asp:ListItem>
                                    <asp:ListItem Value="3">Customer Logo</asp:ListItem>
                                    <asp:ListItem Value="4">Video Thumbnail</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="SubTitle">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload:
                            </td>
                            <td>
                                <asp:FileUpload ID="fuContent" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="SubTitle">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lbVidUrl" runat="server" Text="Video Url:" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUrl" runat="server" Visible="false"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnSubmitUrl" runat="server" Text="Submit" OnClick="btnSubmitUrl_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="Title">
                    Enter Services List:
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="left">
                    <table>
                        <tr>
                            <td class="SubTitle">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add or Choose Service Title:
                            </td>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="ddlServiceHead" runat="server" Width="150px" AutoPostBack="True"
                                                OnSelectedIndexChanged="ddlServiceHead_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                        <td height="25px">
                                            <asp:TextBox ID="txtTitle" runat="server" Visible="False"></asp:TextBox>
                                        </td>
                                        <td height="25px">
                                            <asp:Button ID="btnAdd" runat="server" Text="ADD" Visible="False" OnClick="btnAdd_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="SubTitle">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Sub Title:
                            </td>
                            <td>
                                <asp:TextBox ID="txtSubtitle" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnSubmitTitle" runat="server" Text="Submit" OnClick="btnSubmitTitle_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color: #CCCCCC">
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
