<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileupload.aspx.cs" Inherits="E_Learning.fileupload" %>

<%@ Register Src="ucAdminheadertemplate.ascx" TagName="Adminheadertemplate" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" width="900" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td>
                <uc1:Adminheadertemplate ID="Adminheadertemplate1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <table>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            Enter the Subject Name:
                        </td>
                        <td align="center">
                            <asp:DropDownList ID="ddlSubject" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddlSubject_SelectedIndexChanged" style="height: 22px">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="reqddlSubject" ControlToValidate="ddlSubject" runat="server" ErrorMessage="Select any Subject to continue" ValidationGroup="valUploadSubmit"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnAddSubject" runat="server" Text="Add Subject" 
                                onclick="btnAddSubject_Click" Width="90px" 
                                ValidationGroup="valAddSubject"/>
                            <asp:RequiredFieldValidator ID="reqUploadSubject" runat="server" ForeColor="Red" ErrorMessage="Enter the subject name to add" ControlToValidate="txtSubject" ValidationGroup="valAddSubject"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            Enter the Title:
                        </td>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            <asp:DropDownList ID="ddlTitle" runat="server">
                                <asp:ListItem>-Select-</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="reqddlTitle" ControlToValidate="ddlTitle" runat="server" ErrorMessage="Select any title to continue" ValidationGroup="valUploadSubmit"></asp:RequiredFieldValidator>
                        </td>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                        </td>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            <asp:Button ID="btnAddTitle" runat="server" Text="Add Title" 
                                onclick="btnAddTitle_Click" Width="90px" ValidationGroup="valAddTitle" />
                                <asp:RequiredFieldValidator ID="reqAddTitle" runat="server" ForeColor="Red" ErrorMessage="Enter the title to add" ControlToValidate="txtTitle" ValidationGroup="valAddTitle"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            Choose file</td>
                        <td style="font-family: georgia, serif; font-size: 13px">
                            <asp:FileUpload ID="flpDoc" runat="server" />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="reqFlp" runat="server" ErrorMessage="Choose any files to continue" ControlToValidate="flpdoc" ValidationGroup="valUploadSubmit"></asp:RequiredFieldValidator></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                                onclick="btnSubmit_Click" ValidationGroup="valUploadSubmit" Width="80px"/>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
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
