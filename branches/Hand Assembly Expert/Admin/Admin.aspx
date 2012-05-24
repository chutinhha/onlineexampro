<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/AdminStyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color: #333300">
    <form id="form1" runat="server">
    <ext:ResourceManager ID="dfd" runat="server">
    </ext:ResourceManager>
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
                            <td valign="top" width="50%">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="gvImageSlider" runat="server" AutoGenerateColumns="False" Width="250px"
                                                AutoGenerateDeleteButton="True">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Slider Image">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#"Uploads/"+Eval("Name")%>' Width="50px"
                                                                Height="50px" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:GridView ID="gvCustomerLogo" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True"
                                                Width="250px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Customer Logo">
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%#"CustomerLogo/"+Eval("Name") %>'
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
                                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("VideoThumbnailUrl")%>' Width="50px"
                                                                Height="50px" />
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
                    <table>
                        <tr>
                            <td valign="top">
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
                                                        <asp:TextBox ID="txtTitle" runat="server" Visible="False" Height="22px"></asp:TextBox>
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
                            <td valign="top">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="gvServiceList" runat="server" AutoGenerateColumns="false" DataKeyNames="Servicehead_id"
                                                Width="250px" OnRowDeleting="gvServiceList_RowDeleting" 
                                                AutoGenerateDeleteButton="True" onrowdatabound="gvServiceList_RowDataBound">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Service Title">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbTitle" runat="server" Text='<%#Eval("Servicehead_title") %>'></asp:Label>
                                                            <asp:GridView ID="GridView1" AutoGenerateDeleteButton="True" DataKeyNames="ServiceSubTitle_id"
                                                                AutoGenerateColumns="false" runat="server" ShowHeader="False" OnRowDeleting="GridView1_RowDeleting">
                                                                <Columns>
                                                                    <asp:TemplateField>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblSubTitle" runat="server" Text='<%#Eval("ServiceSubTitle_Content") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                            </asp:GridView>
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
                <td colspan="2" style="background-color: #CCCCCC">
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
