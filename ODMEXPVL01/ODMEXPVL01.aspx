<%@ Page language="c#" CodeFile="ODMEXPVL01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMEXPVL01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMEXPVL01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMEXPVL01" FrmDefineKeys-BOID="ODMEXPVL01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="604px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='604px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 604px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmexpvl01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='odmexpvl01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmexpvl01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='odmexpvl01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 109px; TOP: 119px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name' runat='server' title='姓名' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 314px; TOP: 119px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='name'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='111px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='expdate' runat='server' Title='日期' ShowTitle='False'
	style="POSITION: absolute; left: 569px; top: 119px; z-index: 694;" 
	TxtInput_TabIndex='103' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='117px' Height='28px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='expdate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='item01' runat='server' title='項目01' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 67px; TOP: 212px;"
	TxtInput_TabIndex='104' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='item01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='492px' Height='70px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='item02' runat='server' title='項目02' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 67px; TOP: 290px;"
	TxtInput_TabIndex='105' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='item02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='492px' Height='70px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='item03' runat='server' title='項目03' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 67px; TOP: 369px;"
	TxtInput_TabIndex='106' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='item03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='492px' Height='70px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 575px; TOP: 241px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='112px' Height='27px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 575px; TOP: 318px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 575px; TOP: 391px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='112px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='totomoney' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 575px; TOP: 454px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='totomoney'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='112px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='superid' runat='server' title='直屬主管' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 39px; TOP: 45px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMEXPVL01' BOID='ODMEXPVL01' FieldName='superid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='86px' Height='37px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMEXPVL.jpg" id="Head01_file_1" runat="server" width="768" height="569" />
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
	<!--Peggy加入千份位模組-->
	<script src="../../_Common/OEM/JS/OEMUtils.js"></script>
<script src="ODMEXPVL01.js?NoCache=202207291705" type="text/javascript"></script>
</asp:Content>
