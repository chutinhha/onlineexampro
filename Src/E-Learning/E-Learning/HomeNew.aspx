<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeNew.aspx.cs" Inherits="E_Learning.HomeNew" %>

<%@ Register Src="ucHeader.ascx" TagName="ucHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
        <tr align="center">
            <td style="background-image: url('bannerimages/imgtotalbody copy.jpg'); background-repeat: repeat-x">
                <table border="0" align="center" width="800">
                    <tr>
                        <td width="22">
                        </td>
                        <td>
                            <uc1:ucHeader ID="ucHeader1" runat="server" />
                        </td>
                        <td width="18">
                        </td>
                    </tr>
                    <tr>
                        <td width="22">
                        </td>
                        <td>
                            <img src="bannerimages/clg%20ban.jpg" />
                        </td>
                        <td width="18">
                        </td>
                    </tr>
                    <tr>
                        <td width="22" style="background-image: url('bannerimages/imgaleftshadow.jpg'); background-repeat: no-repeat;
                            background-position: left">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <table cellspacing="10">
                                <tr>
                                    <td>
                                    </td>
                                    <td valign="top">
                                        <table>
                                            <tr>
                                                <td colspan="2" align="center" 
                                                    style="font-size: 15px; color: #0000FF; font-family: georgia, serif;">
                                                    Login
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-family: georgia, serif; font-size: 13px">
                                                    Username
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="font-family: georgia, serif; font-size: 13px">
                                                    Password
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                                                   
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="center" 
                                                    style="font-family: georgia, serif; font-size: 13px">
                                                    <asp:Button ID="btnLogin" runat="server" Text="Sign In" OnClick="btnLogin_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="font-family: georgia, serif; font-size: 13px">
                                                    <asp:LinkButton ID="lnkForget" runat="server">Forget Password?</asp:LinkButton>
                                                    <br />
                                                     <asp:RequiredFieldValidator ID="reqNamePassword" runat="server" ErrorMessage="Enter the UserName/Password" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="background-image: url('bannerimages/tdline copy.jpg'); background-repeat: repeat-y">
                                    </td>
                                    <td align="left">
                                        <p>
                                            <strong><em>About SKCET</em></strong></p>
                                        <p>
                                            <font face="Times New Roman" size="3"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                Perfection is not a destination, only a direction. Our college aims to travel in
                                                this direction to scale new heights in all spheres of curricular, co-curricular
                                                and extra-curricular areas through its sustained efforts and prove by sheer performance
                                                to set an example for others to take lead from us.</em></font></p>
                                        <div>
                                            <font face="Times New Roman" size="3"><strong><em>Our Mission</em></strong></font>
                                        </div>
                                        <div>
                                            <font face="Times New Roman" size="3"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                Our mission is to impart the highest quality of technical education, provide impetus
                                                to research and development, foster innovation in the technological growth, encourage
                                                entrepreneurship and strive to solve problems of mankind. We also endeavor to embed
                                                the greatest values of human life and inculcate the will to attain progress and
                                                prosperity in life in socially accepted norms, to remain an asset to our nation
                                                and be a part of its pride and heritage . </em></font>
                                        </div>
                                        <div>
                                            &nbsp;</div>
                                        <div>
                                            <em><font face="Times New Roman" size="3"><strong>Our Vision</strong></font></em></div>
                                        <div>
                                            <em><font face="Times New Roman" size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                To produce globally competitive engineers with high ethical values and social responsibilities</font></em></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="background-position: right; background-image: url('bannerimages/Untitled-1 copy.jpg');
                            background-repeat: no-repeat;" width="18">
                            &nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />

  <%--  <iframe src="http://localhost/Askku laska emo emo - Nanban video song HD.mp4" frameborder="0" allowfullscreen="" 
        height="300" width="300"></iframe>--%>
    </form>
</body>
</html>
