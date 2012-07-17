<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucstudentheader.ascx.cs"
    Inherits="E_Learning.ucstudentheader" %>
<%@ Register src="ucLoginOut.ascx" tagname="ucLoginOut" tagprefix="uc1" %>
<table align="center" width="900">
    <tr>
        <td style="background-image: url('bannerimages/clgbannner2.jpg')" height="250" width="900">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
            <link rel='stylesheet' type='text/css' href='menu_style.css' />
            <div>
                <ul class="menu red">
                    <li class="file"><a href="StudentHome.aspx">Home</a></li>
                    <li class="file"><a href="StudentForum.aspx">Forums</a></li>
                    <li class="file"><a href="StudentAssignment.aspx">Assignments</a></li>
                    <li class="file"><a href="StudentTest.aspx">Test</a></li>   
                    <li class="file"><a href="StudentNotes.aspx">Notes</a></li>  
                    <li class="file"> 
                        </li>                  
                    <li></li>
                </ul>
            </div>
        </td>
</tr>
<tr>
        <td>
        
            <uc1:ucLoginOut ID="ucLoginOut1" runat="server" />
        
        </td>
    </tr>
</table>
