<%@ Page language="c#" CodeFile="ODMPRMVE01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMPRMVE01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMPRMVE01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMPRMVE01" FrmDefineKeys-BOID="ODMPRMVE01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="505px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='505px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 505px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmprmve01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='odmprmve01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmprmve01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='odmprmve01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 20px; top: 181px; z-index: 699;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='85px' Height='24px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='datetime2' runat='server' Title='datetime2' ShowTitle='False'
	style="POSITION: absolute; left: 20px; top: 263px; z-index: 698;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='datetime2'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='datetime3' runat='server' Title='datetime3' ShowTitle='False'
	style="POSITION: absolute; left: 19px; top: 350px; z-index: 700;" 
	TxtInput_TabIndex='103' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='datetime3'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept01' runat='server' title='dept01' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 122px; TOP: 181px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='dept01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='180px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept02' runat='server' title='dept02' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 122px; TOP: 263px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='dept02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='180px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept03' runat='server' title='dept03' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 122px; TOP: 350px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='dept03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='180px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='name01' runat='server' title='name01' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 745px; TOP: 159px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='name01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscTextBox id='name02' runat='server' title='name02' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 746px; TOP: 108px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='name02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscTextBox id='name03' runat='server' title='name03' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 746px; TOP: 132px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='name03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='24px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='contact01' runat='server' title='contact01' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 321px; TOP: 152px;"
	TxtInput_TabIndex='110' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='contact01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='80px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='contact02' runat='server' title='contact02' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 321px; TOP: 239px;"
	TxtInput_TabIndex='111' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='contact02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='80px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='contact03' runat='server' title='contact03' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 321px; TOP: 325px;"
	TxtInput_TabIndex='112' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='contact03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='80px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='money01' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 618px; TOP: 181px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='112px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='money02' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 618px; TOP: 263px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='112px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='money03' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 618px; TOP: 350px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='112px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='totomoney' runat='server' title='totalmoney' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 618px; TOP: 419px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='totomoney'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='112px' Height='24px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 606px; TOP: 79px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMPRMVE01' BOID='ODMPRMVE01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='102px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMPRMVE.jpg" id="Head01_file_1" runat="server" width="750" height="470" />
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
<script src="ODMPRMVE01.js?NoCache=202108311458" type="text/javascript"></script>
</asp:Content>
