<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSide.master" AutoEventWireup="true"
    CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<%@ Register src="ucSlideShow.ascx" tagname="ucSlideShow" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Stylesheet/contentStyle.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheet/style.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery1.js" type="text/javascript"></script>
    <script src="js/ie6.js" type="text/javascript"></script>
    <script src="js/scripts.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" width="100%" class="pageback">
      
        <tr>
            <td>
                <uc1:ucSlideShow ID="ucSlideShow1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="PageHead">
                About Us
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                        </td>
                        <td class="pagecontent">
                            Infiniti clothing offers trend–right, high quality fashion merchandise at fair &
                            square price.<br />
                            Conceptualized in the year 2010, infiniti clothing is an initiative by a thoroughly
                            experienced professional in garment manufacture and exports to leading business
                            houses in Europe and USA.<br />
                            Experience brings wisdom. Infiniti clothing aspiresto translate the experience and
                            be a leading casual wear brand in the years to come offering fashion concepts suiting
                            the rhythm of life at affordable prices.<br />
                            Every day, we look at new ways to connect with customers and provide value with
                            our products and contribute to the communities where we do business.<br />
                            As of now, infiniti clothing offers its product through web store.<br />
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
            <td class="PageHead">
                GENUINE BRANDING
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td colspan="2" class="pagesubtitle">
                            Behind the Seams
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td class="pagecontent">
                            Every day, we look at new ways to connect with customers and provide value with
                            our products and contribute to the communities where we do business.<br />
                            Best in class raw materials, processes, equipment, production standards, environment
                            concerns and quality bench mark are followed to bring out the best in every garment
                            made.
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
    </table>
</asp:Content>
