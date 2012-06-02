<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="UploadPhoto.aspx.cs" Inherits="UploadPhoto" %>

<%@ Register Src="ucSideMenu.ascx" TagName="ucSideMenu" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style/Servicess.css" rel="stylesheet" type="text/css" />
    <link href="Style/BackColorStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="border: 1px solid #FF00FF" cellpadding="5" cellspacing="5" width="100%"
        border="0">
        <tr>
            <td valign="top" width="15%">
                <uc1:ucSideMenu ID="ucSideMenu1" runat="server" />
            </td>
            <td align="left" valign="top" width="85%">
                <div class="view1">
                    <table cellpadding="5" cellspacing="5">
                        <tr>
                            <td>
                                <table cellpadding="0" cellspacing="5" width="100%">
                                    <tr>
                                        <td>
                                            <div id="t1" class="currentbackcolor">
                                                1. UPLOAD PHOTOS
                                            </div>
                                        </td>
                                        <td>
                                            <div id="t2" class="otherbackcolor">
                                                2. CHOOSE LEVEL OF SERVICE
                                            </div>
                                        </td>
                                        <td>
                                            <div id="t3" class="otherbackcolor">
                                                3. ORDER SUMMARY
                                            </div>
                                        </td>
                                        <td>
                                            <div id="t4" class="otherbackcolor">
                                                4. CONFIRM ORDER
                                            </div>
                                        </td>
                                        <td>
                                            <div id="t5" class="otherbackcolor">
                                                5. CHOOSE PAYMENT METHOD
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: Calibri; color: #000000; font-weight: bold; font-size: 24px">
                                Upload Photo:
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Adult Content" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <cc1:AsyncFileUpload OnUploadedComplete="fuPhotoUpload_UploadedComplete" runat="server"
                                    ID="fuPhotoUpload" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                (JPEG, GIF, JPG, PNG type images are allowed.) Maximum File Size: 8MB
                            </td>
                        </tr>
                    </table>
                    <table cellpadding="5" cellspacing="5" id="tbpreview" style="display: none">
                        <tr>
                            <td>
                                <img alt="Preview Image" name="imgPre" src="" id="imgPreview" style="width: 130px;
                                    height: 97px;" />
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #FF0066">
                                Please click on Next button
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
