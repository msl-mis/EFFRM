<%@ Page language="c#" CodeFile="ODMSYSMDFMVE01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMSYSMDFMVE01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMSYSMDFMVE01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMSYSMDFMVE01" FrmDefineKeys-BOID="ODMSYSMDFMVE01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="725px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='725px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 725px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmsysmdfmve01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMSYSMDFMVE01' BOID='ODMSYSMDFMVE01' FieldName='odmsysmdfmve01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmsysmdfmve01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMSYSMDFMVE01' BOID='ODMSYSMDFMVE01' FieldName='odmsysmdfmve01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='texdept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 111px; TOP: 66px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMSYSMDFMVE01' BOID='ODMSYSMDFMVE01' FieldName='texdept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='26px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 337px; top: 65px; z-index: 696;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='90px' Height='26px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMSYSMDFMVE01' BOID='ODMSYSMDFMVE01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='datetime2' runat='server' Title='希望修改日期' ShowTitle='False'
	style="POSITION: absolute; left: 606px; top: 65px; z-index: 694;" 
	TxtInput_TabIndex='103' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='90px' Height='26px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMSYSMDFMVE01' BOID='ODMSYSMDFMVE01' FieldName='datetime2'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='sysname' runat='server' title='系統名稱' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 103px; TOP: 143px;"
	TxtInput_TabIndex='104' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMSYSMDFMVE01' BOID='ODMSYSMDFMVE01' FieldName='sysname'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='170px' Height='47px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='pdname' runat='server' title='作業名稱及代號' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 506px; TOP: 141px;"
	TxtInput_TabIndex='105' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMSYSMDFMVE01' BOID='ODMSYSMDFMVE01' FieldName='pdname'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='200px' Height='48px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='content' runat='server' title='內容說明' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 103px; TOP: 199px;"
	TxtInput_TabIndex='106' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMSYSMDFMVE01' BOID='ODMSYSMDFMVE01' FieldName='content'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='600px' Height='330px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='rditem' runat='server' title='一般異動 Thay đổi thông thường' ShowTitle='False'
	style="display:none;Z-INDEX:700; POSITION: absolute; LEFT: 114px; TOP: 107px;">
	<FrmFieldKeys FrmID='FrmODMSYSMDFMVE01' BOID='ODMSYSMDFMVE01' FieldName='rditem'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rditem_ctrolRadio0' runat='server' GroupName='rditem' Text='' Value='0' style='position:absolute;top:107px;left:114px;z-index:700;'/>
<asp:RadioButton ID='rditem_ctrolRadio1' runat='server' GroupName='rditem' Text='' Value='1' style='position:absolute;top:107px;left:286px;z-index:700;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="MIS.png" id="Head01_file_1" runat="server" width="735" height="690" />
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
<script src="ODMSYSMDFMVE01.js?NoCache=202207291705" type="text/javascript"></script>
</asp:Content>
