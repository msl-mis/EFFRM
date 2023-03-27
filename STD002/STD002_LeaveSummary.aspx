<%@ page language="c#" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.forms.STD002_LeaveSummary, src.FRM.STD002" %>
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
    <link href="../../_Common/css/EasyFlow09.css" type="text/css" rel="stylesheet" />
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
    <script type="text/javascript" src="STD002.js"></script>
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
			return "STD002_LeaveSummary_MIMJ.aspx";
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
                    <img src="../../_Common/AppUtil/Themes/images/Public/icon_01.jpg"></td>
                <td style="fwidth: 230px; color: midnightblue; height: 42px;">
                    <cc1:DscLabel ID="lblTitle" runat="server" Width="100%" LangText="���u�G18 ������ �а��O��"
                        Text="���u�G18 ������ �а��O��" F0003="lblTitle" F0001="FD" F0002="STD002_LeaveSummary">
                        <Comment F0001="" F0002="" F0003=""></Comment>
                    </cc1:DscLabel>
                </td>
                <td id="toolbarTableTD" style="height: 42px; width: 478px;" align="right">
                </td>
            </tr>
        </table>
        <!--���ɬ[�c -->
        <div id="createRecord" style="display: block" runat="server">
            <!--EcPnlMaster�϶� -->
            <table>
                <tr>
                    <td colspan="2" height="12"></td>
                </tr>
            </table>
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" FrmDefineKeys-BOID="STD002_LeaveSummary"
                FrmDefineKeys-FrmID="FrmSTD002_LeaveSummary" FrmDefineKeys-FrmType="Query" FrmDefine-FrmID="FrmSTD002_LeaveSummary"
                FrmDefine-BOID="STD002_LeaveSummary" FrmID="FrmSTD002_LeaveSummary" BOID="STD002_LeaveSummary"
                BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                Height="110%">
            <table style="margin:0px 0px 0px 0px; height:27px;">
                <tr>
                   <td align="right"><asp:Image ID="Image1" runat="server" ImageUrl="../../_Common/AppUtil/Themes/images/Program/F_01.gif" /></td>
                   <td style="background-image:url(../../_Common/AppUtil/Themes/images/Program/F_02.gif); background-position:bottom; background-repeat:repeat-x;" align="center">
                       <asp:Label ID="TabStrip1" runat="server" Text="�M�����" Width="100px"></asp:Label>
                   </td>
                   <td align="left"><asp:Image ID="Image2" runat="server" ImageUrl="../../_Common/AppUtil/Themes/images/Program/F_03.gif" /></td>
                </tr>
            </table>
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%"
                    Height="100%">
                    <font face="�s�ө���"></font><font face="�s�ө���"></font>
                    <div class="TabPage" style="position: relative; height: 100%; left: 0px; top: 0px;
                        z-index: 101;" ms_positioning="GridLayout">
                        <br>
                        <table style="width: 95%; position: static">
                            <tr>
                                <td colspan="2" style="height: 38px" valign="top">
                                    <asp:Label ID="lblDetail1" runat="server" CssClass="font1"
                                        Text="��@.���~���~�w�֭�а��Ѽ�,�ɼƥ[�` (�а�������~���̤��C�J�p��)" Width="100%" Font-Bold="False"></asp:Label></td>
                            </tr>
                            <tr>
                                <td rowspan="1" style="width: 50px"></td>
                                <td>
                                    <asp:DataGrid ID="dgShowDetail1" runat="server" AutoGenerateColumns="False" CssClass="Grid"
                                        PageSize="7" Style="position: relative;" Width="100%" OnItemDataBound="dgShowDetail1_DataBound">
                                        <SelectedItemStyle HorizontalAlign="Center" ForeColor="#333333" />
                                        <HeaderStyle CssClass="Tilteline" Wrap="False" />
                                        <AlternatingItemStyle BackColor="#F6F1F4" Wrap="False" />
                                        <Columns>
                                            <asp:BoundColumn DataField="efstc005C" HeaderText="efstc005">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" Width="100px" HorizontalAlign="Center" />
                                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc008C" HeaderText="efstc008C">
                                                <HeaderStyle Font-Bold="True" Width="80px" Font-Italic="False" Font-Overline="False"
                                                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" />
                                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" HorizontalAlign="Right" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc009C" HeaderText="efstc009C">
                                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" HorizontalAlign="Right" />
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" HorizontalAlign="Center" Width="80px" />
                                            </asp:BoundColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                    <asp:Label ID="lblMsg1" runat="server" ForeColor="Red" Style="position: static;"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2" rowspan="1" style="height: 22px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 38px" valign="top">
                                    <asp:Label ID="lblDetail2" runat="server" CssClass="font1"
                                        Text="��G.�f�֤��а��� (�а�������~���̤��C�J)" Width="100%"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 50px">
                                </td>
                                <td>
                                    <asp:DataGrid ID="dgShowDetail2" runat="server" AutoGenerateColumns="False" CssClass="Grid"
                                        PageSize="7" Style="position: relative;" Width="100%" OnItemDataBound="dgShowDetail1_DataBound">
                                        <SelectedItemStyle HorizontalAlign="Center" ForeColor="#333333" />
                                        <HeaderStyle CssClass="Tilteline" Wrap="False" />
                                        <AlternatingItemStyle BackColor="#F6F1F4" Wrap="False" />
                                        <Columns>
                                            <asp:BoundColumn DataField="efstc002" HeaderText="efstc002">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" Width="120px" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc005C" HeaderText="efstc005C">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" Width="80px" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc006" HeaderText="efstc006">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc007" HeaderText="efstc007">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc008" HeaderText="efstc008">
                                                <HeaderStyle Font-Bold="True" Width="80px" />
                                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" HorizontalAlign="Right" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc009" HeaderText="efstc009">
                                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" HorizontalAlign="Right" />
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" Width="80px" />
                                            </asp:BoundColumn>
                                        </Columns>
                                    </asp:DataGrid><asp:Label ID="lblMsg2" runat="server" ForeColor="Red" Style="position: relative"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 22px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 38px" valign="top">
                                    <asp:Label ID="lblDetail3" runat="server" CssClass="font1"
                                        Text="��T.��~���w�֭�а��O��" Width="100%"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 50px">
                                </td>
                                <td>
                                    <asp:DataGrid ID="dgShowDetail3" runat="server" AutoGenerateColumns="False" CssClass="Grid"
                                        PageSize="7" Style="position: relative;" Width="100%" OnItemDataBound="dgShowDetail1_DataBound">
                                        <SelectedItemStyle HorizontalAlign="Center" />
                                        <HeaderStyle CssClass="Tilteline" Wrap="False" />
                                        <AlternatingItemStyle BackColor="#F6F1F4" Wrap="False" />
                                        <Columns>
                                            <asp:BoundColumn DataField="efstc002" HeaderText="efstc002">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" Width="120px" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc005C" HeaderText="efstc005C">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" Width="80px" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc006" HeaderText="efstc006">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc007" HeaderText="efstc007">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc008" HeaderText="efstc008">
                                                <HeaderStyle Font-Bold="True" Width="80px" />
                                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" HorizontalAlign="Right" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc009" HeaderText="efstc009">
                                                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" HorizontalAlign="Right" />
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" Width="80px" />
                                            </asp:BoundColumn>
                                        </Columns>
                                    </asp:DataGrid><asp:Label ID="lblMsg3" runat="server" ForeColor="Red" Style="position: relative"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 22px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 23px">
                                    <asp:Button ID="btnShowDetail" runat="server" Style="position: relative" Text="��ܸԲӸ��" CssClass="efbtn"
                                        OnClick="btnShowDetail_Click" /></td>
                            </tr>
                        </table>
                        &nbsp;
                        <table style="width: 95%; position: static" id="tbDetail" runat="server">
                            <tr>
                                <td colspan="2" style="height: 38px" valign="top">
                                    <asp:Label ID="lblDetail4" runat="server" Font-Size="10pt" ForeColor="#404040" Style="position: relative"
                                        Text="��|.���~�U��w�֭�а��Ѽ�,�ɼƥ[�` (�а�������~���̤��C�J�p��)" Width="100%"></asp:Label></td>
                            </tr>
                            <tr>
                                <td rowspan="1" style="width: 50px;">
                                </td>
                                <td>
                                    <asp:DataGrid ID="dgShowDetail4" runat="server" AutoGenerateColumns="False" CssClass="Grid"
                                        PageSize="7" Style="position: static;" Width="100%" OnItemDataBound="dgShowDetail1_DataBound">
                                        <SelectedItemStyle HorizontalAlign="Center" />
                                        <HeaderStyle CssClass="Tilteline" Wrap="False" />
                                        <AlternatingItemStyle BackColor="#F6F1F4" Wrap="False" />
                                        <Columns>
                                            <asp:BoundColumn DataField="month" HeaderText="month">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" Width="100px" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc008C" HeaderText="efstc008C">
                                                <HeaderStyle Font-Bold="True" Width="80px" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc009C" HeaderText="efstc009C">
                                                <HeaderStyle Font-Bold="True" Width="80px" />
                                            </asp:BoundColumn>
                                        </Columns>
                                    </asp:DataGrid><asp:Label ID="lblMsg4" runat="server" ForeColor="Red" Style="position: static"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2" rowspan="1" style="height: 22px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 38px" valign="top">
                                    <asp:Label ID="lblDetail5" runat="server" Font-Size="10pt" ForeColor="#404040" Style="position: relative"
                                        Text="���.���~�Ҧ��w�֭�а��O�� (�а�������~���̤��C�J)" Width="100%"></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 50px;">
                                </td>
                                <td>
                                    <asp:DataGrid ID="dgShowDetail5" runat="server" AutoGenerateColumns="False" CssClass="Grid"
                                        PageSize="7" Style="position: static;" Width="100%" OnItemDataBound="dgShowDetail1_DataBound">
                                        <SelectedItemStyle HorizontalAlign="Center" />
                                        <HeaderStyle CssClass="Tilteline" Wrap="False" />
                                        <AlternatingItemStyle BackColor="#F6F1F4" Wrap="False" />
                                        <Columns>
                                            <asp:BoundColumn DataField="efstc002" HeaderText="efstc002">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" Width="120px" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc005C" HeaderText="efstc005C">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" Width="80px" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc006" HeaderText="efstc006">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc007" HeaderText="efstc007">
                                                <HeaderStyle Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                    Font-Underline="False" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc008" HeaderText="efstc008">
                                                <HeaderStyle Font-Bold="True" Width="80px" />
                                            </asp:BoundColumn>
                                            <asp:BoundColumn DataField="efstc009" HeaderText="efstc009">
                                                <HeaderStyle Font-Bold="True" Width="80px" />
                                            </asp:BoundColumn>
                                        </Columns>
                                        <PagerStyle BorderStyle="Dotted" />
                                    </asp:DataGrid><asp:Label ID="lblMsg5" runat="server" ForeColor="Red" Style="position: static"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="2" style="height: 22px">
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server" Width="100%" Height="10px">
                    <font face="�s�ө���"></font>
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent;
                        z-index: 102; left: 0px; top: 0px;" ms_positioning="GridLayout">
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server" Height="10px">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent;
                        z-index: 103; left: 0px; top: 0px;" ms_positioning="GridLayout">
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
        </div>
        <!--�d�ߵe���϶� -->
    </form>
</body>
</html>
