<%@ Page Title="" Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true"
    CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="QuesId" 
        onrowdatabound="GridView1_RowDataBound" ShowHeader="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Sno") %>'></asp:Label>.
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Question") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
