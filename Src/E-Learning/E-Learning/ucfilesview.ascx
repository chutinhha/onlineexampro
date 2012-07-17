<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucfilesview.ascx.cs" Inherits="E_Learning.ucfilesview" %>



<asp:Button ID="btnDownload" runat="server" Text="Download" 
    onclick="btnDownload_Click" />
<table>
<tr>
<td>
<div>
<iframe id="sss" runat="server" frameborder="0" allowfullscreen="" height="750" 
        width="500" align="center"></iframe>
</div>
</td>
<td>
<div id="gg" runat="server">
</div>
</td>
</tr>
</table>



<%--<object type="video/x-ms-wmv" data="../UploadedFiles/Wildlife.wmv" width="420" height="340">
<param name="url" value="../UploadedFiles/Wildlife.wmv"/>
    <param name="src" value="../UploadedFiles/Wildlife.wmv"/>
    <param name="autostart" value="true" />
    <param name="sound" value="false" /> 
    <param name="controller" value="true" />
</object>--%>