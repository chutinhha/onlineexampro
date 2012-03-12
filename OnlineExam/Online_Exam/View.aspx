<%@ Page Title="" Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true"
    CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                            </asp:Timer>
                            <asp:Label ID="Label4" runat="server"></asp:Label>&nbsp;:
                            <asp:Label ID="Label3" runat="server"></asp:Label>&nbsp;:
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        DataKeyNames="QuesId" OnRowDataBound="GridView1_RowDataBound" ShowHeader="False">
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
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imageurl") %>' /></td>
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
