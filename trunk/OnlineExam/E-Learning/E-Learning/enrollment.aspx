<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enrollment.aspx.cs" Inherits="E_Learning.enrollement" %>

<%@ Register Src="ucAdminheadertemplate.ascx" TagName="Adminheadertemplate" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                            <td style="font-family: georgia, serif; font-size: 13px;">
                                Roll Number
                            </td>
                            <td>
                                : <asp:TextBox ID="txtRollNumber" runat="server"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: georgia, serif; font-size: 13px;">
                                Name
                            </td>
                            <td>
                                : <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: georgia, serif; font-size: 13px;">
                                Course & Year
                            </td>
                            <td>
                                : <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: georgia, serif; font-size: 13px;">
                                Department
                            </td>
                            <td>
                                : <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: georgia, serif; font-size: 13px;">
                                E-Mail Id
                            </td>
                            <td>
                                : <asp:TextBox ID="txtEMailId" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEMailId" 
                                    ID="valEmailid" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: georgia, serif; font-size: 13px;">
                                Address
                            </td>
                            <td>
                                : <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: georgia, serif; font-size: 13px;">
                                Postal Code
                            </td>
                            <td>
                                : <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: georgia, serif; font-size: 13px;">
                                Mobile Number
                            </td>
                            <td>
                                : <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: georgia, serif; font-size: 13px;">
                                Roll Id
                            </td>
                            <td>
                                : <asp:DropDownList ID="ddlRoll" runat="server" 
                                    onselectedindexchanged="ddlRoll_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: georgia, serif; font-size: 13px;">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
                                    Text="Register" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>            
        </table>
    </div>
    </form>
</body>
</html>
