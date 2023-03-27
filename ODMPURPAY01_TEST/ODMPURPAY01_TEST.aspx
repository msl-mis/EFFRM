<%@ Page language="c#" CodeFile="ODMPURPAY01_TEST.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMPURPAY01_TEST" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMPURPAY01_TESTFormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMPURPAY01_TEST" FrmDefineKeys-BOID="ODMPURPAY01_TEST"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="434px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='434px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 434px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmpurpay_test001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='odmpurpay_test001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmpurpay_test002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='odmpurpay_test002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='txtuser' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 76px; TOP: 65px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='txtuser'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='83px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='useday' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 680px; top: 64px; z-index: 693;" 
	TxtInput_TabIndex='104' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='89px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='useday'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='otherpay' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 331px; TOP: 108px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='otherpay'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='84px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='paydate' runat='server' Title='付款日期' ShowTitle='False'
	style="POSITION: absolute; left: 453px; top: 194px; z-index: 695;" 
	TxtInput_TabIndex='111' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='64px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='paydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscOpenQuery id='querypur' runat='server' title='採購單號' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 23px; TOP: 192px;"
	TxtInput_TabIndex='112' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='91px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='querypur'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='na003' runat='server' title='付款方式' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 183px; TOP: 187px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='na003'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='258px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma002' runat='server' title='受款方' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 538px; TOP: 193px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='ma002'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='124px' Height='26px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc005' runat='server' title='交易幣別' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 689px; TOP: 193px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='tc005'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='51px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='totalamt' runat='server' title='採購總金額' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 756px; TOP: 196px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='totalamt'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='comp' runat='server' title='冠志' ShowTitle='False'
	style="display:none;Z-INDEX:691; POSITION: absolute; LEFT: 934px; TOP: 46px;">
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='comp'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='comp_ctrolRadio0' runat='server' GroupName='comp' Text='' Value='0' style='position:absolute;top:46px;left:934px;z-index:691;'/>
<asp:RadioButton ID='comp_ctrolRadio1' runat='server' GroupName='comp' Text='' Value='1' style='position:absolute;top:105px;left:935px;z-index:691;'/>
<asp:RadioButton ID='comp_ctrolRadio2' runat='server' GroupName='comp' Text='' Value='2' style='position:absolute;top:152px;left:931px;z-index:691;'/>
<asp:RadioButton ID='comp_ctrolRadio3' runat='server' GroupName='comp' Text='' Value='3' style='position:absolute;top:258px;left:925px;z-index:691;'/>
</div>
<cc1:DscTextBox id='pay' runat='server' title='現金' ShowTitle='False'
	style="display:none;Z-INDEX:691; POSITION: absolute; LEFT: 116px; TOP: 107px;">
	<FrmFieldKeys FrmID='FrmODMPURPAY01_TEST' BOID='ODMPURPAY01_TEST' FieldName='pay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='pay_ctrolRadio0' runat='server' GroupName='pay' Text='' Value='0' style='position:absolute;top:107px;left:116px;z-index:691;'/>
<asp:RadioButton ID='pay_ctrolRadio1' runat='server' GroupName='pay' Text='' Value='1' style='position:absolute;top:106px;left:194px;z-index:691;'/>
<asp:RadioButton ID='pay_ctrolRadio2' runat='server' GroupName='pay' Text='' Value='2' style='position:absolute;top:109px;left:276px;z-index:691;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="EF採購請款單_TEST.png" id="Head01_file_1" runat="server" width="852" height="399" />
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
<script src="ODMPURPAY01_TEST.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
