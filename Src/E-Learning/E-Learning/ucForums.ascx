<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucForums.ascx.cs" Inherits="E_Learning.Forums1" %>
<%@ Register src="ucstudentheader.ascx" tagname="ucstudentheader" tagprefix="uc1" %>
<table width="900" align="center">
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <table align="center">
                                <tr>
                                    <td align="right" style="font-family: georgia, serif; font-size: 13px">
                                        Question:
                                    </td>
                                    <td style="font-family: georgia, serif; font-size: 13px">
                                        <asp:TextBox ID="txtForumQuestion" runat="server" Height="64px" 
                                            TextMode="MultiLine" Width="449px"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="reqForumquestion" ControlToValidate="txtForumQuestion"
                                            ErrorMessage="Enter any Question to Continue" ValidationGroup="valPost" ForeColor="Red"
                                            ></asp:RequiredFieldValidator>

                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-family: georgia, serif; font-size: 13px">
                                        Category:
                                    </td>
                                    <td style="font-family: georgia, serif; font-size: 13px">
                                        <asp:DropDownList ID="ddlCategory" runat="server">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqCategory" ControlToValidate="ddlCategory" ForeColor="Red" ValidationGroup="valPost" ErrorMessage="Enter the Category to continue"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtCategoryName" runat="server" CausesValidation="True" ViewStateMode="Enabled"></asp:TextBox>                                               
                                        <asp:Button ID="btnAddCategory" runat="server" OnClick="btnAddCategory_Click" Text="Add Category" ValidationGroup="valCategory" />
                                        <asp:RequiredFieldValidator ID="reqAddCategory" runat="server" ControlToValidate="txtCategoryName" ForeColor="Red" ErrorMessage="Enter the Category Name to Add" ValidationGroup="valCategory"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family: georgia, serif; font-size: 13px">
                                        &nbsp;
                                        <asp:Label ID="lblregister" runat="server"></asp:Label>
                                    </td>
                                    <td style="font-family: georgia, serif; font-size: 13px">
                                        <asp:Button ID="btnPost" OnClick="btnPost_Click" runat="server" Text="Post" 
                                            ValidationGroup="valPost" Width="47px" />
                                    </td>
                                </tr>
                                <tr><td>
                                    Select the category to view
                    </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                            </table>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" GridLines="None" DataKeyNames="Id" runat="server" AutoGenerateColumns="False"
                                OnRowCommand="GridView1_RowCommand" ShowHeader="False" CellSpacing="10">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <table style="border: 1px dotted #800000; background-color: #99CCFF" width="885"
                                                cellspacing="20">
                                                <tr>
                                                    <td>
                                                        <b>
                                                            <%# Eval("Question")%></b> by
                                                        <%# Eval("Name")%>(<%# Eval("RollNumber")%>) at
                                                        <%# Eval("Date") %>
                                                        <asp:LinkButton ID="lnkReply" CommandName="Reply" CommandArgument='<%# Eval("Id") %>'
                                                            runat="server" CausesValidation="False">Reply</asp:LinkButton>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:GridView ID="GridView2" GridLines="None" DataKeyNames="Id" runat="server" AutoGenerateColumns="False"
                                                            ShowHeader="False" CellSpacing="10">
                                                            <Columns>
                                                                <asp:TemplateField>
                                                                    <ItemTemplate>
                                                                        <table style="border: 1px solid #0000FF; background-color: #669999" width="685" cellspacing="20">
                                                                            <tr>
                                                                                <td>
                                                                                    <%# Eval("Answer")%>
                                                                                    by
                                                                                    <%# Eval("Name")%>(<%# Eval("RollNumber")%>) at
                                                                                    <%# Eval("Date") %>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="Panel1" Visible="false" runat="server">
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        Your Answer:
                                                                    </td>
                                                                    <td>
                                                                        <asp:TextBox ID="txtForumAnswer" runat="server"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server" ID="reqForumAns" ForeColor="Red" ErrorMessage="Enter any answer to continue" ControlToValidate="txtForumAnswer" ValidationGroup="valForumAnswer"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Button ID="btnAnsReply" runat="server" CommandName="AnsReply" CommandArgument='<%# Eval("Id") %>'
                                                                            Text="Reply" TextMode="Multiline" ValidationGroup="valForumAnswer"/>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
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
    