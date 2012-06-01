<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="UploadPhoto.aspx.cs" Inherits="UploadPhoto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style/Servicess.css" rel="stylesheet" type="text/css" />
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
                <table cellpadding="0" cellspacing="0" class="view1">
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
                    <tr>
                        <td>
                            (JPEG, GIF, JPG, PNG type images are allowed.) Maximum File Size: 8MB
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Next" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
