<%@ Page language="c#" CodeFile="ODMDEBCN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMDEBCN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMDEBCN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMDEBCN01" FrmDefineKeys-BOID="ODMDEBCN01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="297px">
					<!--單頭頁籤-->
					<iewc:TabStrip id="TabStrip1" runat="server" 
						TabDefaultStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);" 
						TabHoverStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);" 
						TabSelectedStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);" 
						CssClass="divToolBar2" >
						<iewc:Tab ID='headDefault' Text='單頭頁籤1' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'></iewc:Tab>
					</iewc:TabStrip>
					<!--單頭頁籤畫面集合-->

					<!--單頭頁籤 一-->
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='297px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 297px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmdebcn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMDEBCN01' BOID='ODMDEBCN01' FieldName='odmdebcn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmdebcn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMDEBCN01' BOID='ODMDEBCN01' FieldName='odmdebcn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='lblcontact' runat='server' Style="z-index:700; position: absolute; left: 37px; top: 108px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='內容摘要' Width='70px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lbltitle' runat='server' Style="z-index:697; position: absolute; left: 202px; top: 22px; vertical-align:middle;font-family:'微軟正黑體';font-size:24pt;font-weight:bold;" Text='水電費扣款明細表' Width='300px' Height='40px'></cc1:DscLabel>
<cc1:DscLabel ID='lbluser' runat='server' Style="z-index:695; position: absolute; left: 506px; top: 66px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='申請日期：' Width='89px' Height='22px'></cc1:DscLabel>
<div style="display:none;">
<cc1:DscTextBox id='txtother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 246px; TOP: 214px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMDEBCN01' BOID='ODMDEBCN01' FieldName='txtother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='81px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='txtcontact' runat='server' title='內容摘要' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 121px; TOP: 105px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMDEBCN01' BOID='ODMDEBCN01' FieldName='txtcontact'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='510px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='usedate' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 580px; top: 62px; z-index: 694;" 
	TxtInput_TabIndex='104' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='88px' Height='24px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMDEBCN01' BOID='ODMDEBCN01' FieldName='usedate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<div style="display:none;">
<cc1:DscTextBox id='rditem' runat='server' title='水電費明細' ShowTitle='False'
	style="display:none;Z-INDEX:694; POSITION: absolute; LEFT: 125px; TOP: 217px;">
	<FrmFieldKeys FrmID='FrmODMDEBCN01' BOID='ODMDEBCN01' FieldName='rditem'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rditem_ctrolRadio0' runat='server' GroupName='rditem' Text='' Value='0' style='position:absolute;top:217px;left:125px;z-index:694;'/>
<asp:RadioButton ID='rditem_ctrolRadio1' runat='server' GroupName='rditem' Text='' Value='1' style='position:absolute;top:213px;left:190px;z-index:694;'/>
<asp:RadioButton ID='rditem_ctrolRadio2' runat='server' GroupName='rditem' Text='' Value='2' style='position:absolute;top:217px;left:217px;z-index:694;'/>
<asp:RadioButton ID='rditem_ctrolRadio3' runat='server' GroupName='rditem' Text='' Value='3' style='position:absolute;top:214px;left:162px;z-index:694;'/>
</div>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMDEBTDL.jpg" id="Head01_file_1" runat="server" width="697" height="152" />
</div>

						</div>
					</cc1:Dscpanel>


					
					<!--單身Grid畫面-->
					
					<cc1:DscPanel id="hdnDisplayInCS" style="DISPLAY: none; Z-INDEX: 116; LEFT: 264px; TOP: 72px" runat="server" Width="100%">
						<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%; BACKGROUND-COLOR: transparent; left: 0px; top: 0px;" ></div>
					</cc1:DscPanel>
					<cc1:DscPanel id="hdnDisplayInHTML" style="DISPLAY: none; Z-INDEX: 116; LEFT: 264px; TOP: 72px" runat="server">
						<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%; BACKGROUND-COLOR: transparent" >
						</div>
					</cc1:DscPanel>
				</cc1:DscPanel>
				<!--2012/12/25:3.5.1.38:hiro:S00-20121031003:3.修正多選開窗onChange事件。↓-->
				<asp:HiddenField ID='hdnOpenQueryPreSetValue' runat='server' Value='' />
				<!--2012/12/25:3.5.1.38:hiro:S00-20121031003:3.修正多選開窗onChange事件。↑-->
				<!--2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↓-->
				<cc1:DscPanel id="hdnDisplayInHTML2" style="DISPLAY: none; Z-INDEX: 116; LEFT: 264px; TOP: 72px" runat="server">
					<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%; BACKGROUND-COLOR: transparent">
						<cc1:DscTextBox ID="edReceiver" runat="server" ShowTitle="False" Title="" Width="36px">
							<InputStyle Width="0px" />
							<Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
							<TitleStyle Width="60px" />
						</cc1:DscTextBox>
					</div>
				</cc1:DscPanel>
				<!--2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↑-->
			</div>
		</div>

<!--引用JavaScript-->
<script src="ODMDEBCN01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
