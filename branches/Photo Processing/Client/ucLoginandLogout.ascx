<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLoginandLogout.ascx.cs"
    Inherits="ucLoginandLogout" %>
<link href="Style/LoginModelPopStyleSheet.css" rel="stylesheet" type="text/css" />
<%@ Register Src="~/ucLogin.ascx" TagName="Login1" TagPrefix="uc1" %>
<%@ Register Src="~/ucRegistration.ascx" TagName="Registration1" TagPrefix="uc1" %>
<table>
    <tr>
        <td>
            <cc1:ModalPopupExtender ID="mdlLogin" runat="server" BackgroundCssClass="modalBackground"
                TargetControlID="HiddenField1" PopupControlID="divId">
            </cc1:ModalPopupExtender>
            <div id="divId" title="Sign In" runat="server" style="display: none" class="modalPopup"
                align="center">
                <table cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td>
                            <asp:ImageButton ID="lnkClose" runat="server" ImageUrl="~/images/close-button.png"
                                OnClick="lnkClose_Click" />
                        </td>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </tr>
                    <tr>
                        <td>
                            <uc1:Login1 ID="Login" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
            <cc1:ModalPopupExtender ID="mdlRegistration" runat="server" BackgroundCssClass="modalBackground"
                TargetControlID="HiddenField2" PopupControlID="div1">
            </cc1:ModalPopupExtender>
            <div id="div1" title="Sign In" runat="server" style="display: none" class="modalPopupreg"
                align="center">
                <table cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/close-button.png"
                                OnClick="ImageButton1_Click" />
                        </td>
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<uc1:Registration1 ID="Registration1" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
            Welcome,&nbsp;
            <asp:Label ID="lbuser" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:LinkButton ID="regis" runat="server" OnClick="regis_Click">Register</asp:LinkButton>&nbsp;<asp:LinkButton
                ID="login4" runat="server" OnClick="login4_Click">Login</asp:LinkButton>&nbsp;
            <asp:LinkButton ID="lbtnLogout" runat="server" Text="Logout" OnClick="lbtnLogout_Click"></asp:LinkButton>
        </td>
    </tr>
</table>
