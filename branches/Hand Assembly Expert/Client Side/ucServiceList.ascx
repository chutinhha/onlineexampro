<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucServiceList.ascx.cs"
    Inherits="ucServiceList" %>
<table cellpadding="0" cellspacing="0" width="326.66px">
    <tr>
        <td>
            <table width="200px" height="150px">
                <tr>
                    <td class="SubHeading">
                        <asp:Label ID="lbHeading" runat="server" Text='<%#Eval("Servicehead_title") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="subHeadingcontent">
                        &nbsp;&nbsp;4 High Speed Tippers(for various product<br />
                        &nbsp;&nbsp;application)
                        <br />
                        &nbsp;&nbsp;Inline folding
                        <br />
                        &nbsp;&nbsp;Inline clip sealing<br />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
