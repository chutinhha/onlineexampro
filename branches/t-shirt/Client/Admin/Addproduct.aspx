<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="Addproduct.aspx.cs" Inherits="Addproduct" MaintainScrollPositionOnPostback="true" %>

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
                            <asp:DropDownList Width="142px" ID="ddlCatagory" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                        <td valign="top">
                            <table width="100%">
                                <tr>
                                    <td width="142px">
                                        <asp:TextBox ID="txtaddCatagory" Width="142px" runat="server" Visible="false"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnAdd" runat="server" Text="ADD" Visible="false" OnClick="btnAdd_Click" />
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
                            <asp:TextBox ID="txtShortdescription" runat="server" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
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
                            Company:&nbsp;
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
                        <td colspan="3" align="left">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button
                                ID="btnPost" runat="server" Text="Submit" OnClick="btnPost_Click" />
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
            <td>
                <h3>
                    Add Stock Detail:
                </h3>
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" width="800px" align="center">
                    <tr>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td width="100px">
                                        Product:
                                    </td>
                                    <td width="100px">
                                        <asp:DropDownList ID="ddlProductlist" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                    <td width="130px">
                                        <asp:TextBox ID="txtProduct" runat="server" Visible="false"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnProductAdd" runat="server" Text="ADD" Visible="false" />
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
                        <td>
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td width="100px">
                                        Color:
                                    </td>
                                    <td width="100px">
                                        <asp:DropDownList ID="ddlColorlist" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                    <td width="130px">
                                        <asp:TextBox ID="txtColor" runat="server" Visible="false"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnColor" runat="server" Text="ADD" Visible="false" />
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
                        <td>
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td width="100px">
                                        Size:
                                    </td>
                                    <td width="100px">
                                        <asp:DropDownList ID="ddlSizelist" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                    <td width="130px">
                                        <asp:TextBox ID="txtSize" runat="server" Visible="false"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnSize" runat="server" Text="ADD" Visible="false" />
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
                        <td>
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td width="100px">
                                        Image:
                                    </td>
                                    <td>
                                        <asp:FileUpload ID="fuImage" runat="server" />
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
                        <td>
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td width="100px">
                                        price:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
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
                        <td>
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td width="100px">
                                        stock Value:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
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
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="txtSubmit" runat="server" Text="Submit" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
