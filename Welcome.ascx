<%@ Control Language="C#" AutoEventWireup="true" CodeFile="~/Welcome.ascx.cs" Inherits="Welcome" %>
<%@ Register Src="ucLogin.ascx" TagName="ucLogin" TagPrefix="uc1" %>
<table cellpadding="0" cellspacing="0" width="350px">
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
                            <asp:ImageButton ID="lnkClose" runat="server" ValidationGroup="sdsd" ImageUrl="~/images/close-button1.png"
                                OnClick="lnkClose_Click" />
                        </td>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </tr>
                    <tr>
                        <td>
                            <uc1:ucLogin ID="ucLogin1" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <table cellpadding="0" cellspacing="0" align="right">
                <tr>
                    <td>
                        Welcome,&nbsp;
                        <asp:Label ID="lbwelcome" runat="server"></asp:Label>&nbsp;
                    </td>
                    <td>
                        <asp:LinkButton ID="login4" runat="server" ForeColor="#006666" OnClick="login4_Click">Login</asp:LinkButton>&nbsp;
                    </td>
                    <td>
                        <asp:LinkButton ID="lbtnLogout" runat="server" Text="Logout" 
                            ForeColor="#006666" onclick="lbtnLogout_Click"></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
