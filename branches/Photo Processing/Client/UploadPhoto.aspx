<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="UploadPhoto.aspx.cs" Inherits="UploadPhoto" %>

<%@ Register Src="ucSideMenu.ascx" TagName="ucSideMenu" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style/Servicess.css" rel="stylesheet" type="text/css" />
    <link href="Style/BackColorStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="sdfsd" EnablePageMethods="true" runat="server">
        <Services>
            <asp:ServiceReference Path="~/AssignCart.asmx" />
        </Services>
    </cc1:ToolkitScriptManager>
    Upload Photos
    <hr />
    <br />
    <table style="border: 1px solid #808080" cellpadding="5" cellspacing="5" width="100%"
        border="0">
        <tr>
            <td valign="top" width="15%">
                <uc1:ucSideMenu ID="ucSideMenu1" runat="server" />
            </td>
            <td align="left" valign="top" width="85%">
                <div class="view1">
                    <table cellpadding="0" style="padding-left: 10px" cellspacing="0">
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
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
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: Calibri; color: #000000; font-weight: bold; font-size: 24px">
                                Upload Photo:
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Adult Content" />
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="lnkBtnColHelp" runat="server" Text="...?" OnClientClick="return false;"
                                                BackColor="#999966" Font-Underline="False" Font-Bold="True" ForeColor="Black" />
                                        </td>
                                        <td>
                                            <div id="moveMe" class="flyOutDiv">
                                                <div style="float: right;">
                                                    <asp:LinkButton ID="lnkBtnCloseColHelp" runat="server" Text="X" OnClientClick="return false;"
                                                        CssClass="flyOutDivCloseX" />
                                                </div>
                                                <br />
                                                <p>
                                                    Please disclose whether your images contain any nudity or adult content, in polite
                                                    consideration for our technicians working on your photos
                                                </p>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <cc1:AnimationExtender ID="AnimationExtender1" runat="server" TargetControlID="lnkBtnColHelp">
                            <Animations>
                <OnClick>
                    <Sequence>
                        <EnableAction Enabled="false"></EnableAction>
                        <StyleAction AnimationTarget="moveMe" Attribute="display" Value="block"/>
                        <Parallel AnimationTarget="moveMe" Duration=".5" Fps="30">
                            <Move Horizontal="-350" Vertical="50"></Move>
                            <FadeIn Duration=".5"/>
                        </Parallel>
                        <Parallel AnimationTarget="moveMe" Duration=".5">
                             <Color PropertyKey="color" StartValue="#666666" EndValue="#FF0000" />
                            <Color PropertyKey="borderColor" StartValue="#666666" EndValue="#FF0000" />
                        </Parallel>
                    </Sequence>
                </OnClick>
                            </Animations>
                        </cc1:AnimationExtender>
                        <cc1:AnimationExtender ID="AnimationExtender2" runat="server" TargetControlID="lnkBtnCloseColHelp">
                            <Animations>
                <OnClick>
                    <Sequence AnimationTarget="moveMe">
                        <Parallel AnimationTarget="moveMe" Duration=".5" Fps="20">
                            <%--<Move Horizontal="350" Vertical="-100"></Move>--%>
                            <Scale ScaleFactor="1" FontUnit="px" />
                            <Color PropertyKey="color" StartValue="#FF0000" EndValue="#666666" />
                            <Color PropertyKey="borderColor" StartValue="#FF0000" EndValue="#666666" />
                            <FadeOut />
                        </Parallel>
                        <StyleAction Attribute="display" Value="none"/>
                        <StyleAction Attribute="height" Value=""/>
                        <StyleAction Attribute="width" Value="600px"/>
                        <StyleAction Attribute="fontSize" Value="14px"/>
                        <EnableAction AnimationTarget="lnkBtnColHelp" Enabled="true" />
                    </Sequence>
                </OnClick>
                            </Animations>
                        </cc1:AnimationExtender>
                        <tr>
                            <td>
                                <br />
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
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                (JPEG, GIF, JPG, PNG type images are allowed.) Maximum File Size: 8MB
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
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
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #FF0066">
                                Please click on Next button
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
    <br />
    <br />
</asp:Content>
