<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="UploadPhoto.aspx.cs" Inherits="UploadPhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="font-family: Calibri; color: #000000; font-weight: bold; font-size: 24px">
                Upload Photos:
            </td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Adult Content" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <cc1:AsyncFileUpload ID="fuPhotoUpload" runat="server" OnUploadedComplete="fuPhotoUpload_UploadedComplete" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table>
</asp:Content>
