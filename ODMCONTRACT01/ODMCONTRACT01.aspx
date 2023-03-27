<%@ Page language="c#" CodeFile="ODMCONTRACT01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMCONTRACT01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMCONTRACT01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMCONTRACT01" FrmDefineKeys-BOID="ODMCONTRACT01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="296px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='296px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 296px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmcontract01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMCONTRACT01' BOID='ODMCONTRACT01' FieldName='odmcontract01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmcontract01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMCONTRACT01' BOID='ODMCONTRACT01' FieldName='odmcontract01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='lblcontact' runat='server' Style="z-index:698; position: absolute; left: 62px; top: 153px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='內容摘要' Width='70px' Height='25px'></cc1:DscLabel>
<cc1:DscLabel ID='lbldate' runat='server' Style="z-index:693; position: absolute; left: 360px; top: 113px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='申請日期' Width='70px' Height='27px'></cc1:DscLabel>
<cc1:DscLabel ID='lbldept' runat='server' Style="z-index:699; position: absolute; left: 61px; top: 111px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='申請單位' Width='70px' Height='27px'></cc1:DscLabel>
<cc1:DscLabel ID='title' runat='server' Style="z-index:694; position: absolute; left: 263px; top: 40px; vertical-align:middle;font-family:'微軟正黑體';font-size:26pt;font-weight:bold;" Text='通用合同表單' Width='250px' Height='49px'></cc1:DscLabel>
<cc1:DscTextBox id='txtdept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 156px; TOP: 109px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMCONTRACT01' BOID='ODMCONTRACT01' FieldName='txtdept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='97px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='date' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 451px; top: 110px; z-index: 692;" 
	TxtInput_TabIndex='103' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='99px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMCONTRACT01' BOID='ODMCONTRACT01' FieldName='date'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtmain' runat='server' title='主旨' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 150px; TOP: 149px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMCONTRACT01' BOID='ODMCONTRACT01' FieldName='txtmain'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='500px' Height='26px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscOpenQuery id='empl1' runat='server' title='填表人工號' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 51px; TOP: 212px;"
	TxtInput_TabIndex='105' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='163px' Height='30px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMCONTRACT01' BOID='ODMCONTRACT01' FieldName='empl1'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscOpenQuery id='empl2' runat='server' title='填表人直屬主管' ShowTitle='False'
	style="Z-INDEX: 695; POSITION: absolute; LEFT: 221px; TOP: 212px;"
	TxtInput_TabIndex='106' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='115px' Height='28px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMCONTRACT01' BOID='ODMCONTRACT01' FieldName='empl2'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMPDBOUNS.jpg" id="Head01_file_1" runat="server" width="800" height="200" />
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
<script src="ODMCONTRACT01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
