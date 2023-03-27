<%@ page language="C#" debug="true" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.forms.HRSE001_UDI_LeaveSummary, src.FRM.STD002" %>

<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>
        <asp:literal id="LiteralTitle" runat="server"></asp:literal>
    </title>
    <meta http-equiv="Content-Type" content="text/html; charset=big5" />
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR" />
    <meta content="C#" name="CODE_LANGUAGE" />
    <meta content="JavaScript" name="vs_defaultClientScript" />
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
    <link href="../../_Common/css/EasyFlow.css" type="text/css" rel="stylesheet" />
    <link href="../../_Common/PlatformUtil/Resource/CSS/MyCss.css" type="text/css" rel="stylesheet" />
    <link href="../../_Common/PlatformUtil/Resource/CSS/grid.css" type="text/css" rel="stylesheet" />
    <link href="../../_Common/PlatformUtil/Resource/CSS/grid_columns.css" type="text/css"
        rel="stylesheet" />

    <script src="../../_Common/PlatformUtil/Resource/JS/grid.js" type="text/javascript"></script>

    <script src="../../_Common/PlatformUtil/Resource/JS/paging1.js" type="text/javascript"></script>

    <script src="../../_Common/PlatformUtil/Resource/JS/BlackBox.js" type="text/javascript"></script>

    <script src="../../_Common/PlatformUtil/Resource/JS/hash.js" type="text/javascript"></script>

    <script src="../../_Common/PlatformUtil/Resource/JS/baseFixed.js" type="text/javascript"></script>

    <script src="../../_Common/PlatformUtil/Resource/JS/DivControl.js" type="text/javascript"></script>

    <script src="../../_Common/PlatformUtil/Resource/JS/myOpenDate.js" type="text/javascript"></script>

    <script src="../../_Common/PlatformUtil/Resource/JS/method.js" type="text/javascript"></script>

    <script src="../../_Common/PlatformUtil/Resource/JS/KeyCheck.js" type="text/javascript"></script>

    <script src="../../_Common/PlatformUtil/Resource/JS/I18N.js" type="text/javascript"></script>

    <style type="text/css">TEXTAREA { BEHAVIOR: url(/webctrl_client/1_0/maxlength.htc) }
		</style>
    <style type="text/css">INPUT { BEHAVIOR: url(/webctrl_client/1_0/detectCutPaste.htc) }
		</style>

    <script type="text/javascript" src="HRSE001_UDI.js"></script>

    <script type="text/javascript">
		var isFinished = false;
		function bodyLoad()
		{
	    	<asp:literal id="LiteralMsg" runat="server"></asp:literal>;
			<asp:Literal ID="LiteralHideCoverDiv" Runat=server></asp:Literal>;
			isFinished =true;
		}
		function getMIMJValidateFileName()
		{
			//return "HRSE001_UDI_LeaveSummary_MIMJ.aspx";
		}
		
    </script>

</head>
<body class="badybg2" leftmargin="0" topmargin="0" onload="bodyLoad();">
    <!--autoMJtest();bodyLoad();-->
    <asp:Literal ID="LiteralCoverDiv" runat="server"></asp:Literal>
    <form id="Form1" method="post" runat="server">
        <!--ToolBar Area -->
        <table class="EFToolBar" id="toolbarTable" cellspacing="0" cellpadding="5" runat="server">
            <tr>
                <td style="width: 14px; height: 42px;" valign="middle">
                    <img height="12" src="../../_common/pic/newcrm/icon_55.jpg" width="12"></td>
                <td style="font-size: 10pt; width: 230px; color: midnightblue; height: 42px;">
                    <cc1:DscLabel ID="lblTitle" runat="server" Width="100%" LangText="員工：18 陳振興 請假記錄"
                        Text="員工：18 陳振興 請假記錄" F0003="lblTitle" F0001="FD" F0002="HRSE001_UDI_LeaveSummary">
                        <Comment F0001="" F0002="" F0003=""></Comment>
                    </cc1:DscLabel>
                </td>
                <td id="toolbarTableTD" style="height: 42px; width: 478px;" align="right">
                </td>
            </tr>
        </table>
        <!--單檔架構 -->
        <div id="createRecord" style="display: block" runat="server">
            <!--EcPnlMaster區塊 -->
            <table>
                <tr>
                    <td>
                        <td colspan="2" height="12">
                        </td>
                </tr>
            </table>
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" FrmDefineKeys-BOID="HRSE001_UDI_LeaveSummary"
                FrmDefineKeys-FrmID="FrmHRSE001_UDI_LeaveSummary" FrmDefineKeys-FrmType="Query" FrmDefine-FrmID="FrmHRSE001_UDI_LeaveSummary"
                FrmDefine-BOID="HRSE001_UDI_LeaveSummary" FrmID="HRSE001_UDI_LeaveSummary" BOID="HRSE001_UDI_LeaveSummary"
                BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                Height="110%">
                <iewc:TabStrip ID="TabStrip1" runat="server" Width="100px" TabSelectedStyle="background-image:url(../../_Common/pic/newcrm/tp_y.png);color:black;text-align:center;"
                    TabHoverStyle="background-image:url(../../_Common/pic/newcrm/tp_b2.png);color:black;text-align:center;"
                    TabDefaultStyle="font-family:#ffffe0;font-size:9pt;color:white;width:300;height:21;text-align:center;background-image:url(../../_Common/pic/newcrm/tp_b1.png);">
                    <iewc:Tab Text="清單顯示" DefaultImageUrl="../../_Common/pic/icon/dg_edit.gif" DefaultStyle="text-align:center;width:100px;"
                        ID="headDefault"></iewc:Tab>
                </iewc:TabStrip>
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%" Height="100%">
                    <div class="TabPage" style="position: relative; height: 100%; left: 0px; top: 0px;z-index: 101;" ms_positioning="GridLayout"> 
                        <table style="width: 95%; position: static">
                            <tr>
                                <td colspan="2" style="height: 38px" valign="top">
                                    <asp:Label ID="lblDetail1" runat="server" Font-Size="10pt" ForeColor="#404040" Style="position: relative"
                                        Text="表一.今年全年已核准請假天數,時數加總 (請假期間跨年份者不列入計算)" Width="100%" Font-Bold="False"></asp:Label></td>
                            </tr>
                            <tr>
                                <td rowspan="1" style="width: 50px">
                                </td>
                                <td>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" rowspan="1" style="height: 22px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 38px" valign="top">
                                    <asp:Label ID="lblDetail2" runat="server" Font-Size="10pt" ForeColor="#404040" Style="position: relative"
                                        Text="表二.審核中請假單 (請假期間跨年份者不列入)" Width="100%"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 50px">
                                </td>
                                <td>
                                    
                                </td>
                            </tr>
                        </table>
                    </div> 
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server" Width="100%" Height="10px">
                    <font face="新細明體"></font>
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent;
                        z-index: 102; left: 0px; top: 0px;" ms_positioning="GridLayout">
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server" Height="10px">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent;
                        z-index: 103; left: 0px; top: 0px;" ms_positioning="GridLayout">
                        <asp:TextBox runat="server" ID="Grid1_Query"></asp:TextBox>
                        <asp:TextBox runat="server" ID="Grid2_Query"></asp:TextBox>
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
        </div>
        <!--查詢畫面區塊 -->
    </form>
</body>
</html>
