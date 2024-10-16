<%@ Page language="c#" CodeFile="ODMCONVL01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMCONVL01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMCONVL01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMCONVL01" FrmDefineKeys-BOID="ODMCONVL01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="313px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='313px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 313px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmconvl01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMCONVL01' BOID='ODMCONVL01' FieldName='odmconvl01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmconvl01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMCONVL01' BOID='ODMCONVL01' FieldName='odmconvl01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='txtdept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 99px; TOP: 125px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMCONVL01' BOID='ODMCONVL01' FieldName='txtdept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='date' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 504px; top: 125px; z-index: 696;" 
	TxtInput_TabIndex='103' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='90px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMCONVL01' BOID='ODMCONVL01' FieldName='date'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtmain' runat='server' title='主旨' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 102px; TOP: 172px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMCONVL01' BOID='ODMCONVL01' FieldName='txtmain'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='700px' Height='60px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtuser' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 298px; TOP: 125px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMCONVL01' BOID='ODMCONVL01' FieldName='txtuser'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='totalmoney' runat='server' title='合同總價值' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 720px; TOP: 125px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMCONVL01' BOID='ODMCONVL01' FieldName='totalmoney'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='108px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='superid' runat='server' title='直屬主管' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 57px; TOP: 30px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMCONVL01' BOID='ODMCONVL01' FieldName='superid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='81px' Height='27px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMCON.png" id="Head01_file_1" runat="server" width="850" height="278" />
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
		<script src="../../_Common/OEM/JS/OEMUtils.js"></script>
<script src="ODMCONVL01.js?NoCache=202207291705" type="text/javascript"></script>
</asp:Content>
