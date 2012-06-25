<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin"
    Debug="true" %>

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
                            <td width="50%" valign="top">
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
                                        <td colspan="2" height="25px">
                                            <asp:Label ID="lbDetail" runat="server" ForeColor="#666633" Font-Bold="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="SubTitle">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload:
                                        </td>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:FileUpload ID="fuContent" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lbFuvalidation" runat="server" ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <table>
                                                <tr>
                                                    <td class="SubTitle">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="lbVidUrl" runat="server" Text="Video Url:" Visible="False"></asp:Label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtUrl" runat="server" Visible="false"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lbvalid" runat="server" ForeColor="Red"></asp:Label>
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
                                        <td colspan="2">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnSubmitUrl" runat="server" Text="Submit" OnClick="btnSubmitUrl_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td valign="top" width="50%">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="gvImageSlider" runat="server" AutoGenerateColumns="False" Width="250px"
                                                AutoGenerateDeleteButton="True" OnRowDeleting="gvImageSlider_RowDeleting">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Slider Image">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#"http://www.humbervale.com/Uploads/"+Eval("Name")%>'
                                                                Width="50px" Height="50px" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:GridView ID="gvCustomerLogo" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True"
                                                Width="250px" OnRowDeleting="gvCustomerLogo_RowDeleting">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Customer Logo">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%#"http://www.humbervale.com/CustomerLogo/"+Eval("Name") %>'
                                                                Width="50px" Height="50px" /></ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:GridView ID="gvVideoSlider" runat="server" AutoGenerateColumns="False" Width="250px"
                                                OnRowDeleting="gvVideoSlider_RowDeleting">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lbtnDelete" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Thumbnails">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/"+Eval("VideoThumbnailUrl")%>'
                                                                Width="50px" Height="50px" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
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
                    <table width="980px" cellpadding="0" cellspacing="0">
                        <tr>
                            <td valign="top" align="left">
                                <table width="600px">
                                    <tr>
                                        <td class="SubTitle" width="220px">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add or Choose Service Title:
                                        </td>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:DropDownList ID="ddlServiceHead" runat="server" Width="150px" AutoPostBack="True"
                                                            OnSelectedIndexChanged="ddlServiceHead_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td height="27px">
                                                        <asp:TextBox ID="txtTitle" runat="server" Visible="False"> </asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lbValidation" runat="server" ForeColor="Red"></asp:Label>
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
                                        <td colspan="2">
                                            <table>
                                                <tr>
                                                    <td class="SubTitle">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Sub Title:
                                                    </td>
                                                    <td>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox
                                                            ID="txtSubtitle" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lbvalidate" runat="server" ForeColor="Red"></asp:Label>
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
                                        <td colspan="2">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnSubmitTitle" runat="server" Text="Submit" OnClick="btnSubmitTitle_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td valign="top">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="gvServiceList" runat="server" AutoGenerateColumns="false" DataKeyNames="Servicehead_id"
                                                Width="200px" OnRowDeleting="gvServiceList_RowDeleting" AutoGenerateDeleteButton="True"
                                                OnRowDataBound="gvServiceList_RowDataBound">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Service Title">
                                                        <ItemTemplate>
                                                            <table>
                                                                <tr>
                                                                    <td width="100%" colspan="2" style="background-color: #696969">
                                                                        <asp:Label ID="lbTitle" runat="server" Text='<%#Eval("Servicehead_title") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td>
                                                                    <td>
                                                                        <asp:GridView ID="GridView1" AutoGenerateDeleteButton="True" DataKeyNames="ServiceSubTitle_id"
                                                                            AutoGenerateColumns="false" runat="server" ShowHeader="False" OnRowDeleting="GridView1_RowDeleting"
                                                                            BackColor="#FFFFCC" ForeColor="Black" EditRowStyle-ForeColor="Black" Width="400px">
                                                                            <Columns>
                                                                                <asp:TemplateField>
                                                                                    <ItemTemplate>
                                                                                        <asp:Label ID="lblSubTitle" runat="server" Text='<%#Eval("ServiceSubTitle_Content") %>'></asp:Label>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                            </Columns>
                                                                        </asp:GridView>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <RowStyle BackColor="#996633" ForeColor="White" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
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
