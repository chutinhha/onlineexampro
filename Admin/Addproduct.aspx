<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Admin_AddProduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellpadding="0" cellspacing="0" width="900px" align="center">
            <tr>
                <td>
                    Add Product:
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                Catagory:
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlCatagory" runat="server" OnSelectedIndexChanged="ddlCatagory_SelectedIndexChanged"
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <table id="otherCatagory" runat="server" visible="false">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtCatagory" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Button ID="btnAddCatagory" runat="server" Text="ADD" OnClick="btnAddCatagory_Click" />
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
                <td>
                    <table>
                        <tr>
                            <td>
                                SubCatagory:
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlSubCatagory" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSubCatagory_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <table id="otherSubCatagory" runat="server" visible="false">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtSubCatagory" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Button ID="btnAddSubCatagory" runat="server" Text="ADD" OnClick="btnAddSubCatagory_Click" />
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
                <td>
                    <table>
                        <tr>
                            <td>
                                Design Name:
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlDesignName" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlDesignName_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <table id="otherDesign" runat="server" visible="false">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtDesignName" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Button ID="btnAddDesign" runat="server" Text="ADD" OnClick="btnAddDesign_Click" />
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
                <td>
                    <table>
                        <tr>
                            <td>
                                Size:
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSize_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <table id="otherSize" runat="server" visible="false">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Button ID="btnSize" runat="server" Text="ADD" OnClick="btnSize_Click" />
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
                <td>
                    <table>
                        <tr>
                            <td>
                                Color:
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlColor" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlColor_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <table id="otherColor" runat="server" visible="false">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="fuColor" runat="server" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnAddColor" runat="server" Text="ADD" OnClick="btnAddColor_Click" />
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
                <td>
                    <table>
                        <tr>
                            <td>
                                Discription:
                            </td>
                            <td>
                                <asp:TextBox ID="txtDiscription" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Short Discription:
                            </td>
                            <td>
                                <asp:TextBox ID="txtShortDiscrition" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Actual Price:
                            </td>
                            <td>
                                <asp:TextBox ID="txtPrice" runat="server" AutoPostBack="True" 
                                    ontextchanged="txtPrice_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Discount:
                            </td>
                            <td>
                                <asp:TextBox ID="txtDiscount" runat="server" AutoPostBack="True" OnTextChanged="txtDiscount_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Discount Price:
                            </td>
                            <td>
                                <asp:Label ID="lbDisPrice" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Product Image Small:
                            </td>
                            <td>
                                <asp:FileUpload ID="fuSmall" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Product Image Large:
                            </td>
                            <td>
                                <asp:FileUpload ID="fuLarge" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Stock:
                            </td>
                            <td>
                                <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="submit" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
