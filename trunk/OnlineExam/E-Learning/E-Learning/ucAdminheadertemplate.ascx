<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAdminheadertemplate.ascx.cs"
    Inherits="E_Learning.WebUserControl1" %>
    <style type="text/css">

        .hovermenu ul{
font: bold 13px arial;
padding-left: 0;
margin-left: 0;
height: 20px;
            width: 900px;
        }

.hovermenu ul li{
list-style: none;
display: inline;
}

.hovermenu ul li a{
padding: 2px 0.5em;
text-decoration: none;
float: left;
color: black;
background-color: #99CCFF;
border: 2px solid #99CCFF;
}

.hovermenu ul li a:hover{
background-color: #99CCFF;
border-style: outset;
}

html>body .hovermenu ul li a:active{ /* Apply mousedown effect only to NON IE browsers */
border-style: inset;
}
    </style>

<table align="center" width="900">
    <tr>
        <td>
            <img src="bannerimages/elearning-button-red-banner-large-1.jpg" style="text-align: center" />
        </td>
    </tr>
    <tr>
        <td>
        <div class="hovermenu">
<ul>
<li><a href="AdminHome.aspx">Home</a></li>
<li><a href="Forums.aspx">Forums</a></li>
<li><a href="fileupload.aspx">Upload a File</a></li>
<li><a href="enrollment.aspx">Enrollment Form</a></li>
<li><a href="testgen.aspx">Test Generation</a></li>
<li style="background-color: #66CCFF"><a href="AssignmentsPage.aspx">Assignments</a></li>
</ul>
</div>
</td>
         </tr>
</table>
