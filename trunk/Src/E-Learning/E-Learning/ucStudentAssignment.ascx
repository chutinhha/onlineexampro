<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucStudentAssignment.ascx.cs"
    Inherits="E_Learning.ucStudentAssignment" %>
<table>
    <tr>
        <td>
            Select File
        </td>
        <td>
            <asp:FileUpload ID="flpFile" runat="server" />
            <asp:RequiredFieldValidator ID="reqflpFile" ControlToValidate="flpFile" runat="server"
                ErrorMessage="Select any files to continue" ValidationGroup="valBtnAssign"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Staff
        </td>
        <td>
            <asp:DropDownList ID="ddlStaff" runat="server">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="reqddlSelectStaff" ControlToValidate="ddlStaff" runat="server"
                ErrorMessage="Select any one staff on the list to continue" ValidationGroup="valBtnAssign"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Topic
        </td>
        <td>
            <asp:TextBox ID="txtTopic" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqtxtTopic" ControlToValidate="txtTopic" runat="server"
                ErrorMessage="Enter the topic to continue" ValidationGroup="valBtnAssign"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Assignment Number
        </td>
        <td>
            <asp:TextBox ID="txtAssignNum" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqtxtAssignNo" ControlToValidate="txtAssignNum"
                runat="server" ErrorMessage="Enter the assignment number to continue" ValidationGroup="valBtnAssign"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"
                ValidationGroup="valBtnAssign" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Assinment Number">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("AssignNum") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("AssignNum") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Topic">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Topic") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Topic") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Submitted Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%-- <asp:TemplateField HeaderText="Student Name">
                    <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                    <asp:TemplateField HeaderText="View">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkView" runat="server" CommandName="View" CommandArgument='<%# Eval("Id") %>'
                                Text="View"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
