<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Payroll.Master" AutoEventWireup="true"
    CodeFile="Payment.aspx.cs" Inherits="Admin_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/MasterPage.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="sfdsd" runat="server">
    </asp:ScriptManager>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        Employee Code:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEmployCode" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Name:
                                    </td>
                                    <td>
                                        <asp:Label ID="lbName" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Pay:
                                    </td>
                                    <td>
                                        <asp:Label ID="lbPay" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        No. of Days Worked
                                    </td>
                                    <td>
                                        <asp:Label ID="lbNumberDay" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Insentive:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtInsentive" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Extra Benifit:
                                    </td>
                                    <td>
                                        <asp:Label ID="lbBenifit" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Cridt Total:
                                    </td>
                                    <td>
                                        <asp:Label ID="lbCridtTotal" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                        </td>
                        <td>
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        Salary Of Month:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtSalaryDate" runat="server"></asp:TextBox>
                                        <cc1:CalendarExtender ID="AjaxSalaryMonth" runat="server" TargetControlID="txtSalaryDate">
                                        </cc1:CalendarExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Month & Year:
                                    </td>
                                    <td>
                                        <asp:Label ID="lbMonth" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Salary Advance:
                                    </td>
                                    <td>
                                        <asp:Label ID="lbSalaryAd" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Advance Deduction:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAdvanceDeduction" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        PF:
                                    </td>
                                    <td>
                                        <asp:Label ID="lbPF" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        ESI:
                                    </td>
                                    <td>
                                        <asp:Label ID="lbESI" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top: 5px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Deduction Total:
                                    </td>
                                    <td>
                                        <asp:Label ID="lbDeductionTotal" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Basic:<asp:Label ID="lbBasic" runat="server"></asp:Label>
                        </td>
                        <td>
                            HRA:<asp:Label ID="lbHRA" runat="server"></asp:Label>
                        </td>
                        <td>
                            NETT:<asp:Label ID="lbNett" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
