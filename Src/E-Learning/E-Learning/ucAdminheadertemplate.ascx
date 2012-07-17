<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAdminheadertemplate.ascx.cs"
    Inherits="E_Learning.WebUserControl1" %>
<%@ Register src="ucLoginOut.ascx" tagname="ucLoginOut" tagprefix="uc1" %>
<table align="center" width="900">
    <tr>
        <td colspan="0" rowspan="1" style="background-color: #FFFFFF">
            <img src="bannerimages/elearning-button-red-banner-large-1.jpg" style="text-align: center" />
              <link rel='stylesheet' type='text/css' href='menu_style.css' />
             <ul class="menu red">
                    <li class="file"><a href="AdminHome.aspx">Home</a></li>
                    <li class="file"><a href="Forums.aspx">Forums</a></li>
                    <li class="file"><a href="fileupload.aspx">Upload a File</a></li>
                    <li class="file"><a href="AssignmentsPage.aspx">Assignments</a></li>
                    <li class="file"><a href="enrollment.aspx">Enrollment Form</a></li>
                    <li class="file"><a href="testgen.aspx">Test Generation</a></li>
                    <li class="file"><a href="AdminAssignTime.aspx">Assign the Test</a></li>
                </ul>
               <uc1:ucLoginOut ID="ucLoginOut1" runat="server" />

        </td>
    </tr>
    
   
       
    
</table>
