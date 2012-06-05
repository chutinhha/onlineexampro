<%@ Page Title="" Language="C#" MasterPageFile="~/Clientside.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Style/BackColorStyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <cc1:ToolkitScriptManager ID="sdfsd" runat="server">
    </cc1:ToolkitScriptManager>
    Home
    <hr />
    <br />
    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <div>
                    <h1>
                        Welcome to Photo Processing</h1>
                    <div>
                        <p>
                            We retouch online all your photographs by hand to an exceptionally high standard.</p>
                        <p>
                            Upload your photos and select which level of service you require.</p>
                        <p>
                            We guarantee complete satisfaction with every image we do for you.</p>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
        <td>
        
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <a href="#">Choose a service</a> <a href="#">Get Started</a>
            </td>
        </tr>
    </table>
    <br />
    <hr />
    <br />
    <br />
    <br />
    
</asp:Content>
