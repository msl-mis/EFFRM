<%@ Page language="c#" CodeFile="ODMREPMVE01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMREPMVE01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMREPMVE01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMREPMVE01" FrmDefineKeys-BOID="ODMREPMVE01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="615px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='615px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 615px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmrepmve01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='odmrepmve01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmrepmve01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='odmrepmve01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='note' runat='server' Style="z-index:698; position: absolute; left: 22px; top: 529px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;color:#FF0000;" Text='注意:請主管於簽核意見填寫確認狀況為1.合格 或 2.不合格' Width='423px' Height='34px'></cc1:DscLabel>
<cc1:DscTextBox id='username' runat='server' title='填表人' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 182px; TOP: 145px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='93px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='userid' runat='server' title='填表人ID' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 11px; TOP: 5px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='userid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscTextBox id='superid' runat='server' title='填表人直屬主管' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 10px; TOP: 28px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='superid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='109px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscDateAssistant2 ID='issuedate' runat='server' Title='發放日期' ShowTitle='False'
	style="POSITION: absolute; left: 181px; top: 185px; z-index: 694;" 
	TxtInput_TabIndex='104' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='issuedate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='serno' runat='server' title='報告號' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 596px; TOP: 183px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='serno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='200px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='suppiler' runat='server' title='供方' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 25px; TOP: 272px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='suppiler'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='200px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='suppartno' runat='server' title='供方料號' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 279px; TOP: 272px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='suppartno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='300px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='mslpartno' runat='server' title='冠志料號' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 605px; TOP: 272px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='mslpartno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='200px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sampleqty' runat='server' title='樣品數量' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 25px; TOP: 347px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='sampleqty'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='receiveddate' runat='server' Title='樣品收日期' ShowTitle='False'
	style="POSITION: absolute; left: 279px; top: 347px; z-index: 692;" 
	TxtInput_TabIndex='110' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='120px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='receiveddate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='whys' runat='server' title='評定原因' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 605px; TOP: 345px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='whys'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='300px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='description' runat='server' title='材料規格描述' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 25px; TOP: 403px;"
	TxtInput_TabIndex='112' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='description'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='800px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opensetion' runat='server' title='申請單位1' ShowTitle='False'
	style="Z-INDEX: 686; POSITION: absolute; LEFT: 782px; TOP: 106px;"
	TxtInput_TabIndex='113' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='75px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='opensetion'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='opensection2' runat='server' title='申請單位2' ShowTitle='False'
	style="Z-INDEX: 687; POSITION: absolute; LEFT: 782px; TOP: 131px;"
	TxtInput_TabIndex='114' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='75px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMREPMVE01' BOID='ODMREPMVE01' FieldName='opensection2'></FrmFieldKeys>
</cc1:DscOpenQuery>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMREPMVE.png" id="Head01_file_1" runat="server" width="961" height="523" />
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
<script src="ODMREPMVE01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
