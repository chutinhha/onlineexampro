<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sm.aspx.cs" Inherits="sm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h1 a
        {
            color: #8cca1e !important;
            font-size: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp; http://api.smugmug.com/services/api/json/1.3.0/
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp; https://api.smugmug.com/services/api/json/1.3.0/
        <br />
        <br />
        <script>
            function buildContent(json) {
                for (var i = 0; i < json.Groups.length; i++) {
                    document.write('<h3><font color="#8cca1e"><a id="' + json.Groups[i].Name + '">' + json.Groups[i].Name + '</a></font></h3>');
                    document.write('<div class="panel" style="border-color: rgb(140, 202, 30); border-width: 1px;">');
                    document.write('<div class="panelContent"><ul>');

                    for (var j = 0; j < json.Groups[i].Methods.length; j++) {
                        document.write('<li>');
                        if (json.Groups[i].Methods[j].Deprecated == undefined)
                            document.write('<a href="show+1.3.0?method=' + json.Groups[i].Methods[j].Name + '">' + json.Groups[i].Methods[j].Name + '</a>' + (json.Groups[i].Methods[j].Hidden != undefined && json.Groups[i].Methods[j].Hidden ? '&nbsp;&nbsp;<font color="red"><b>hidden</b></font>' : ''));
                        else
                            document.write(json.Groups[i].Methods[j].Name + '&nbsp;&nbsp;<font color="red"><b>' + (json.Groups[i].Methods[j].Hidden != undefined && json.Groups[i].Methods[j].Hidden ? "hidden" : (json.Groups[i].Methods[j].Deprecated != undefined && json.Groups[i].Methods[j].Deprecated) ? "deprecated" : "") + '</b></font>');
                        document.write('</li>');
                    }

                    document.write('</ul></div></div>');
                }
            }

            try {
                el = document.getElementsByClassName('userLogoLink')[0];
                el.parentNode.parentNode.removeChild(el.parentNode);
            }
            catch (e) { }
        </script>
        <script src="http://api.smugmug.com/services/api/json/1.3.0/?method=smugmug.reflection.getGroupedMethods&Pretty=1&Callback=buildContent"></script>
    </div>
    </form>
</body>
</html>
