<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testgen.aspx.cs" Inherits="E_Learning.testgen" %>

<%@ Register Src="ucAdminheadertemplate.ascx" TagName="Adminheadertemplate" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    
    <link href="adminstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" width="900px">
        <tr>
            <td>
                <uc1:Adminheadertemplate ID="Adminheadertemplate1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <table align="center">
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            Enter the title for the Test 
                        </td>
                        <td>
                            : <asp:DropDownList ID="ddlTitleTest" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTitleTest" runat="server"></asp:TextBox>
                            
                        </td>
                        <td>
                            <asp:Button ID="btnAddTitle" runat="server" Text="Add New Title" OnClick="btnAddTitle_Click" ValidationGroup="valQuestionTitle" />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            Question No 
                        </td>
                        <td>
                            : <asp:TextBox ID="txtQuestionNo" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqQuestionNo" ControlToValidate="txtQuestionNo" ForeColor="Red" ValidationGroup="valQuestionSubmit" runat="server" ErrorMessage="Please enter the Question Number to continue"></asp:RequiredFieldValidator>
                        </td>
                        <td></td><td>
                            <asp:RequiredFieldValidator ID="reqQuestionTitle" runat="server" ErrorMessage="Enter the title to continue" ForeColor="Red" ControlToValidate="txtTitleTest" ValidationGroup="valQuestionTitle"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            Enter the Question 
                        </td>
                        <td>
                            : <asp:TextBox ID="txtQuestion" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqquestion" runat="server" ControlToValidate="txtQuestion" ForeColor="Red" ErrorMessage="Please enter the question to continue" ValidationGroup="valQuestionSubmit"></asp:RequiredFieldValidator>
                        </td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            Options a 
                        </td>
                        <td>
                            : <asp:TextBox ID="txtOptionA" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqOptionA" runat="server" ControlToValidate="txtOptionA" ForeColor="Red" ErrorMessage="Please enter the Option to continue" ValidationGroup="valQuestionSubmit"></asp:RequiredFieldValidator>
                        </td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            b 
                        </td>
                        <td>
                            : <asp:TextBox ID="txtOptionB" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqOptionB" runat="server" ControlToValidate="txtOptionB" ForeColor="Red" ErrorMessage="Please enter the Option to continue" ValidationGroup="valQuestionSubmit"></asp:RequiredFieldValidator>                        
                        </td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            c 
                        </td>
                        <td>
                            : <asp:TextBox ID="txtOptionC" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqOptionC" runat="server" ControlToValidate="txtOptionC" ForeColor="Red" ErrorMessage="Please enter the Option to continue" ValidationGroup="valQuestionSubmit"></asp:RequiredFieldValidator>                        
                        </td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            d 
                        </td>
                        <td>
                            : <asp:TextBox ID="txtOptionD" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqOptionD" runat="server" ControlToValidate="txtOptionD" ForeColor="Red" ErrorMessage="Please enter the Option to continue" ValidationGroup="valQuestionSubmit"></asp:RequiredFieldValidator>                        
                        </td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            Answer 
                        </td>
                        <td>
                            : <asp:TextBox ID="txtActualAnswer" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqActualAnswer" runat="server" ControlToValidate="txtActualAnswer" ForeColor="Red" ErrorMessage="Please enter the Answer to continue" ValidationGroup="valQuestionSubmit"></asp:RequiredFieldValidator>                        
                        </td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                        </td>
                        <td>
                            <asp:Button ID="btnQuestionSubmit" runat="server" Text="Submit" OnClick="btnQuestionSubmit_Click" ValidationGroup="valQuestionSubmit"/>
                        </td>
                        <td></td><td></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <div>
    </div>
    </form>
</body>
</html>
