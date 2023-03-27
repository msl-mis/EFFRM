<%@ page language="C#" autoeventwireup="true" inherits="tw.com.dsc.easyflowDotNet.program.UploadImage, src.FRM.RESE011" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base target="_self" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script src="../../_Common/PlatformUtil/Resource/JS/BlackBox.js" type="text/javascript"></script>
    <script src="../../_Common/JS/jquery-Released.js" type="text/javascript"></script>
    <script language="JavaScript" >
        function afterUploadComplete(fileURL) {
            var tPath = window.location.protocol+"//" + location.host + "/EFAttach/" + fileURL;
            parent.showDivDialogCallBack(tPath);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server"  />                      
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnUpLoad" runat="server" Text="上傳"  OnClick="btnUpLoad_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
