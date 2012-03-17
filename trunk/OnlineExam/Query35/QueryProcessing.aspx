<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="QueryProcessing.aspx.cs" Inherits="QueryProcessing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                Query<span style="color:Red">*</span></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                    ValidationGroup="v1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="None" ErrorMessage="Please Enter A Query" 
                    ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="3">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                Type<span style="color:Red">*</span></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="v1">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList1" Display="None" ErrorMessage="Select a type" 
                    ValidationGroup="v1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Search" ValidationGroup="v1" />
            </td>
        </tr>
    </table>
</asp:Content>

