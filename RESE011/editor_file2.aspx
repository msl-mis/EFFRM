<%@ page language="c#" validaterequest="false" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.program.RESE011_editor_file2, src.FRM.RESE011" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>圖片檔</title>
    <link href="../../_Common/css/NewCRM.css" type="text/css" rel="stylesheet">
    <script>
		//2017/12/12;6.1.6.4;hiro;A01-20171212001;修正Chrome點擊圖片上傳控件沒有作用↓
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
		//2017/12/12;6.1.6.4;hiro;A01-20171212001;修正Chrome點擊圖片上傳控件沒有作用↑
    </script>
    <base target="_self">
</head>
<body leftmargin="0" topmargin="0">
    <form id="Form1" method="post" runat="server">
    <center>
        <table width="100%" height="100">
            <tr>
                <td align="center">
                    <input id="UploadFile" style="width: 180px; height: 20px" type="file" size="13" name="UploadFile"
                        runat="server">
                </td>
            </tr>
            <tr>
                <td align="center">
                    <cc1:DscTextBox ID="altText" Title="顯示文字:" runat="server" Width="180px">
                        <TitleStyle Width="50px"></TitleStyle>
                        <InputStyle Width="130px"></InputStyle>
                    </cc1:DscTextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <cc1:DscButton ID="btnDecide" runat="server" Text="確定" Height="20px">
                    </cc1:DscButton>
                    &nbsp;
                    <cc1:DscButton ID="btnCancel" runat="server" Text="取消" Height="20px">
                    </cc1:DscButton>
                </td>
            </tr>
        </table>
    </center>
    </form>
</body>
</html>
