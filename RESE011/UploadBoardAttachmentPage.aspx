<%@ page language="c#" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.program.UploadAttachmentPage, src.FRM.RESE011" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD runat="server">
		<title>上傳檔案</title>
		<base target="_self">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<link href="../../_common/css/EasyFlow.css" type="text/css" rel="stylesheet" />
	</HEAD>
	<body class="badybg3" MS_POSITIONING="GridLayout" >
		<form id="Form1" method="post" runat="server">
			<FONT face="新細明體">
				<asp:label id="label" style="Z-INDEX: 100; LEFT: 32px; POSITION: absolute; TOP: 13px" runat="server"
					Width="130px" ForeColor="Black">請選擇上傳檔案：</asp:label>
                <br />
                <br />
                &nbsp; &nbsp; &nbsp;
                <INPUT id="SelectFile" type="file"
					name="File2" runat="server" style="width: 211px">
                <asp:Image ID="Image1" runat="server" Style="z-index: 102; left: 12px; position: absolute; top: 15px" ImageUrl="../../_Common/AppUtil/Themes/images/Program/text.gif" />
                &nbsp; &nbsp;&nbsp;
                <asp:button id="btnUpload" runat="server"
					Width="71px" Text="上傳檔案" OnClick="btnUpload_Click1" CssClass="EFbtn"></asp:button></FONT>
		</form>
	</body>
</HTML>
