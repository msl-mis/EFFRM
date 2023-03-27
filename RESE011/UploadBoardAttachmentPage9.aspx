<%@ page language="c#" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.program.UploadAttachmentPage9, src.FRM.RESE011" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head runat="server">
    <title>上傳檔案</title>
    <base target="_self">
    <link href="../../_common/css/EasyFlow.css" type="text/css" rel="stylesheet" />

    <script src="../../_Common/PlatformUtil/Resource/JS/BlackBox.js"></script>

    <script>

        var gPLProduct = 'EF';
        if (typeof (gIsIEBrowser) == "undefined")
        {
            var ua = navigator.userAgent.toLowerCase();
            if (ua.match(/rv:([\d.]+)\) like gecko/) != null || ua.match(/msie ([\d.]+)/) != null)
            {
                gIsIEBrowser = true;
            }
            else
            {
                gIsIEBrowser = false;
            }
        }

        function doChromeCallback()
        {
            parent.showDivDialogCallBack('Y');

        }
		    
		    
		    
    </script>

</head>
<body class="badybg3">
    <form id="Form1" method="post" runat="server">
    <font>
        <asp:Label ID="label" Style="z-index: 100; left: 32px; position: absolute; top: 13px"
            runat="server" Width="130px" ForeColor="Black">請選擇上傳檔案：</asp:Label>
        <br />
        <br />
        &nbsp; &nbsp; &nbsp;
        <input id="SelectFile" type="file" name="File2" runat="server" style="width: 211px">
        <asp:Image ID="Image1" runat="server" Style="z-index: 102; left: 12px; position: absolute;
            top: 15px" ImageUrl="../../_Common/AppUtil/Themes/images/Program/text.gif" />
        &nbsp; &nbsp;&nbsp;
        <asp:Button ID="btnUpload" runat="server" Width="71px" Text="上傳檔案" CssClass="EFbtn">
        </asp:Button></font>
    </form>
</body>
</html>
