<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #newPreview
        {
            filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale);
        }
    </style>


    <script language="javascript" type="text/javascript">
        function PreviewImg(imgFile) {
            var newPreview = document.getElementById("newPreview");
            newPreview.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgFile.value;
            newPreview.style.width = "80px";
            newPreview.style.height = "60px";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        preview
        <asp:FileUpload ID="Fud_Pic" runat="server" onchange="PreviewImg(this)" />
        <div id="newPreview">
        </div>
    </div>
    </form>
</body>

</html>
