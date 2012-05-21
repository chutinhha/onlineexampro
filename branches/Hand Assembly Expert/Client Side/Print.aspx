<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print.aspx.cs" Inherits="Print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Form1" method="post" runat="server">
    <div id="Div1">
        Printable content
    </div>
    <input type="button" value="Print" onclick="JavaScript:printPreviewDiv('Div1');">
    <script type="text/javascript">

 function printPreviewDiv(elementId)
 {
  var printContent = document.getElementById(elementId);
  var windowUrl = 'about:blank';
  var uniqueName = new Date();
  var windowName = 'Print' + uniqueName.getTime();
  var printWindow = window.open(windowUrl, windowName, 'left=50000,top=50000,width=0,height=0');
  var printPreviewObject = '<object id="printPreviewElement" width="0" height="0" classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></object>';

  printWindow.document.write(printContent.innerHTML);
  printWindow.document.write(printPreviewObject);
  printWindow.document.write('<script language=JavaScript>');
  printWindow.document.write('printPreviewElement.ExecWB(7, 2);');
  printWindow.document.write('printPreviewElement.outerHTML = "";');
  printWindow.document.write('</script>
    '); printWindow.document.close(); printWindow.focus(); printWindow.close(); } </script>
    </form>
</body>
</html>
