<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="Addproduct.aspx.cs" Inherits="Addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Add Prodects</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="980px" align="center">
        <tr>
            <td>
                <h3>
                    Add Your Product:
                </h3>
            </td>
        </tr>
        <tr>
            <td>
                <table width="800px" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td width="100px">
                            Category:
                        </td>
                        <td width="150px">
                            <asp:DropDownList Width="142px" ID="ddlCatagory" runat="server" 
                                AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                        <td valign="top">
                            <table width="100%">
                                <tr>
                                    <td width="142px">
                                        <asp:TextBox ID="txtaddCatagory" Width="142px" runat="server" Visible="false"></asp:TextBox>
                                      
                                    </td>
                                    <td>
                                        <asp:Button ID="btnAdd" runat="server" Text="ADD" Visible="false" 
                                            onclick="btnAdd_Click" />
                                     
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="5px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Prodect image:
                        </td>
                        <td colspan="2">
                            <asp:FileUpload ID="fuProductimage" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td height="5px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Product Name:
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtProductname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="5px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Short Description:
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtShortdescription" runat="server" MaxLength="100" 
                                TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="5px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Description:
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="5px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Product Price:
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="5px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Status:
                        </td>
                        <td colspan="2">
                            <asp:DropDownList Width="142px" ID="ddlStatus" runat="server">
                                <asp:ListItem>available</asp:ListItem>
                                <asp:ListItem>unavailable</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="5px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Discount:
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtDiscount" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="5px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Company:
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="5px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td  colspan="3">
                            <table width="100%">
                                <tr>
                                    <td width="93px">
                                        Have Option:
                                    </td>
                                    <td>
                                        <asp:DropDownList Width="142px" ID="ddlHaveoption" runat="server" 
                                            AutoPostBack="True" onselectedindexchanged="ddlHaveoption_SelectedIndexChanged">
                                            <asp:ListItem>yes</asp:ListItem>
                                            <asp:ListItem>no</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbOptiontitle" runat="server" Text="Option Title:"></asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtOptiontitle" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbOptioncontent" runat="server" Text="Option Content:"></asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtOptioncontent" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="5px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <asp:Button ID="btnPost" runat="server" Text="Post" onclick="btnPost_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
