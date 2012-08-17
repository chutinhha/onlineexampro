<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Payroll.Master" AutoEventWireup="true"
    CodeBehind="PersonalDetail.aspx.cs" Inherits="PayRoll.PersonalDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/MasterPage.css" rel="stylesheet" type="text/css" />
    <link href="Styles/presonalDetail.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table cellpadding="0" cellspacing="0" align="center">
                <tr>
                    <td>
                        <asp:Panel ID="pHeader" runat="server" CssClass="cpHeader">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="150px">
                                        <asp:Label ID="lblText" runat="server" />
                                    </td>
                                    <td style="padding-left: 850px">
                                        <asp:Image ID="image1" runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="pBody" runat="server" CssClass="cpBody">
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td style="padding-left: 30px">
                                        <table cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td valign="top">
                                                    <table cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td>
                                                                Employee Code:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtEmployeeCode" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                First Name:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Last Name:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Father Name:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtFatherName" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                DOB
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                                                                <cc1:CalendarExtender ID="calander" runat="server" TargetControlID="txtDOB">
                                                                </cc1:CalendarExtender>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Sex:
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlGender" runat="server">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Marital Status:
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlMarital" runat="server">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Phone:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Mobile:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                E-Mail:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td style="padding-left: 20px">
                                                </td>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td>
                                                                Total IT Experiance:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtExperiance" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Permanent Address:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtPerAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Present Address:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtPreAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Employee image:
                                                            </td>
                                                            <td>
                                                                <asp:FileUpload ID="fuPhoto" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                ID Proof:
                                                            </td>
                                                            <td>
                                                                <asp:FileUpload ID="fuIProof" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Address Proof:
                                                            </td>
                                                            <td>
                                                                <asp:FileUpload ID="fuAProof" runat="server" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="padding-top: 25px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" align="center">
                                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" TargetControlID="pBody"
                            CollapseControlID="pHeader" ExpandControlID="pHeader" Collapsed="true" TextLabelID="lblText"
                            CollapsedText="Personal Detail" ExpandedText="Fill Personal Detail" ImageControlID="image1"
                            ExpandedImage="Images/DownArrow.png" CollapsedImage="Images/UpArrow.png"
                            CollapsedSize="0">
                        </cc1:CollapsiblePanelExtender>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 40px">
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel1" runat="server" CssClass="cpHeader">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="150px">
                                        <asp:Label ID="Label1" runat="server" />
                                    </td>
                                    <td style="padding-left: 850px">
                                        <asp:Image ID="image2" runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server" CssClass="cpBody">
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td style="padding-left: 30px">
                                        <table cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td valign="top">
                                                    <table cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td>
                                                                Office Name:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtOfficeName" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Office Address:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtOfficeAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Contact Person:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtPerson" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Mobile:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtoffMoblie" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td style="padding-left: 20px">
                                                </td>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Phone:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtoffPhone" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Office E-Mail:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtOffEmail" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Office WebSite:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtoffWebsite" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Salary On that Company:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtoffSalary" runat="server" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="padding-top: 25px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" align="center">
                                                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" TargetControlID="Panel2"
                            CollapseControlID="Panel1" ExpandControlID="Panel1" Collapsed="true" TextLabelID="Label1"
                            CollapsedText="Office Detail" ExpandedText="Fill Previous Office Detail" ImageControlID="image2"
                            ExpandedImage="Images/DownArrow.png" CollapsedImage="Images/UpArrow.png"
                            CollapsedSize="0">
                        </cc1:CollapsiblePanelExtender>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 40px">
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel3" runat="server" CssClass="cpHeader">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="200px">
                                        <asp:Label ID="Label2" runat="server" />
                                    </td>
                                    <td style="padding-left: 800px">
                                        <asp:Image ID="image3" runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="Panel4" runat="server" CssClass="cpBody">
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td style="padding-left: 30px">
                                        <table cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td valign="top">
                                                    <table cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td>
                                                                Joining Date:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtJoinDate" runat="server"></asp:TextBox>
                                                                <cc1:CalendarExtender ID="ajaxCalendarExtender" runat="server" TargetControlID="txtJoinDate">
                                                                </cc1:CalendarExtender>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Salary/annual:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtannualSalary" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Reliving Date:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtReliDate" runat="server"></asp:TextBox>
                                                                <cc1:CalendarExtender ID="ajaxReliExtender" runat="server" TargetControlID="txtReliDate">
                                                                </cc1:CalendarExtender>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Certificate Provided:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtCertificate" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                                                    </table>
                                                </td>
                                                <td style="padding-left: 20px">
                                                </td>
                                                <td>
                                                    <table cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td>
                                                                Current Salary:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtCurrentSalary" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Designation:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Resume_url
                                                            </td>
                                                            <td>
                                                                <asp:FileUpload ID="fuResume" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Comments:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding-top: 5px">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Is Active:
                                                            </td>
                                                            <td>
                                                                <asp:CheckBox ID="chkActive" runat="server" Text=""></asp:CheckBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="padding-top: 25px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" align="center">
                                                    <asp:Button ID="Button2" runat="server" Text="Submit" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="server" TargetControlID="Panel4"
                            CollapseControlID="Panel3" ExpandControlID="Panel3" Collapsed="true" TextLabelID="Label2"
                            CollapsedText="Current Company" ExpandedText="Fill Current Company Detail" ImageControlID="image3"
                            ExpandedImage="Images/DownArrow.png" CollapsedImage="Images/UpArrow.png"
                            CollapsedSize="0">
                        </cc1:CollapsiblePanelExtender>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 40px">
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
