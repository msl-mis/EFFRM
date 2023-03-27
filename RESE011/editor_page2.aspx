<%@ page language="c#" validaterequest="false" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.program.RESE011_editor_page2, src.FRM.RESE011" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>插入圖片</title>
    <style>
        TEXTAREA
        {
            behavior: url(/webctrl_client/1_0/maxlength.htc);
        }
    </style>
    <style>
        INPUT
        {
            behavior: url(/webctrl_client/1_0/detectCutPaste.htc);
        }
    </style>
    <script>
		function doChromeCallback(pValue)
		{
			parent.showDivDialogCallBack(pValue);
		}
    </script>
    <base target="_self">
</head>
<body leftmargin="0" topmargin="0">
    <form id="Form1" method="post" runat="server">
    <iframe width="100%" height="90%" frameborder="0" scrolling="no" style="top: 0;
        left: 0; border: 0; overflow: auto" src='<%=Request["URL"]%>'></iframe>
    </form>
</body>
</html>
