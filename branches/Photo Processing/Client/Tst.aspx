<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tst.aspx.cs" Inherits="Tst" %>

<%@ Register Src="ucLogin.ascx" TagName="ucLogin" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="js/jquery.blockUI.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="pp" style="display: none;">
            <div>
                <img src="Images/ajax-loader.gif" alt="Loading..." />
            </div>
        </div>
        <input id="Button1" type="button" value="button" />
        <input id="Button2" type="button" value="button" />
        <script language="javascript" type="text/javascript">
            $(document).ready(function () {
                $('#Button1').click(function () {
                    $.blockUI({ message: $('#pp') });
                    setTimeout($.unblockUI, 2000);
                });
                $('#Button2').click(function () {
                    $.blockUI({ message: $('#Div1') });
                    setTimeout($.unblockUI, 2000);
                });
            });
        </script>
    </div>
    <div id="Div1" style="display: none">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <br />
    <div>
        <a href="#">
            <img src="Images/smugmug.png" alt="smugmug" />
        </a><a href="#">
            <img src="Images/picasa.gif" alt="picasa" />
        </a><a href="#">
            <img src="Images/flickr.gif" id="IMG1" onclick="return IMG1_onclick()" alt="flickr" />
        </a><a href="#">
            <img src="Images/adorama.gif" alt="adorama" id="IMG3" />
        </a>
    </div>
    <br />
    <embed id="ImageUploader1" type="application/x-java-applet;version=1.4" codebase="../"
        code="com.aurigma.imageuploader.ImageUploader.class" archive="ImageUploader5.jar"
        width="450" height="300" scriptable="true" mayscript="true" pluginspage="https://java.sun.com/products/plugin/index.html#download"
        cache_archive="ImageUploader5.jar" cache_version="5.1.10.0" folderpaneheight="150"
        treepanewidth="150" filemask="*.jpeg;*.jpg;*.jpe;*.gif;*.bmp;*.tif;*.png" buttonsendtext="Upload"
        showdescriptions="false" treepaneheight="200" panelayout="TwoPanes" showdebugwindow="true"
        allowrotate="false" backgroundcolor="#8cbc4e" licensekey="71050-10000-B03D7-508AB-8F24F;72050-10000-D12EF-D3978-A8CBF"
        uploadthumbnail1fitmode="Fit" uploadthumbnail1width="40" uploadthumbnail1height="40"
        uploadthumbnail1jpegquality="40" thumbnailhorizontalspacing="5" thumbnailheight="5"
        thumbnailverticalspacing="5" previewthumbnailsize="70" autorecovermaxtriescount="5"
        autorecovertimeout="5000" action="Multiupload.aspx" maxfilesize="15728640" afteruploadlistener="uploadFinished"
        beforeuploadlistener="ImageUploader1_BeforeUpload">
    </form>
</body>
</html>
