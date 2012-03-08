<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="QuestionPosting.aspx.cs" Inherits="admin_QuestionPosting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="900px" align="center" style="border: thin dotted #000000">
        <tr>
            <td style="font-family: Calibri; font-size: 18px; font-weight: bold; color: #009999">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Post Questions:" Font-Underline="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <table width="500px" align="center" style="border: thin groove #008080">
                    <tr>
                        <td height="30px" align="left" width="100px">
                            Catagory&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="left">
                            <asp:DropDownList Width="140px" ID="ddlCatagory" runat="server" 
                                AutoPostBack="True" onselectedindexchanged="ddlCatagory_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAdd" runat="server" Width="128px" 
                                Visible="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnAdd" runat="server" Text="ADD" Visible="False" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Question&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="left" colspan="3">
                            <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Image&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="left" colspan="3">
                            <asp:FileUpload ID="fuImage" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Answer&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
                        </td>
                        <td align="left" colspan="3">
                            <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center" height="25px">
                            <asp:Label ID="lbregister" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
                            <asp:Button ID="btnsubmit" runat="server" Text="Post Question" 
                                onclick="btnsubmit_Click" />
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
    </table>
</asp:Content>
