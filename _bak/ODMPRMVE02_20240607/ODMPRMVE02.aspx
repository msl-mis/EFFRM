<%@ Page language="c#" CodeFile="ODMPRMVE02.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMPRMVE02" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMPRMVE02FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMPRMVE02" FrmDefineKeys-BOID="ODMPRMVE02"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="632px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='632px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 632px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmprmve02001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='odmprmve02001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmprmve02002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='odmprmve02002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscDropDownList ID='dept' runat='server' Title='單位' ShowTitle='False'
	Style="z-index:699; position: absolute; left: 100px; top: 83px;"
	DDLInput_TabIndex='101'>
	<Items>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='180px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='dept'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPRMVE02_dept' />
</cc1:DscDropDownList>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 403px; top: 81px; z-index: 688;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='85px' Height='24px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 651px; TOP: 81px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='102px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='contact' runat='server' title='contact' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 63px; TOP: 160px;"
	TxtInput_TabIndex='104' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='contact'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='210px' Height='370px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee01' runat='server' title='對象01' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 290px; TOP: 162px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='payee01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='160px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='permoney01' runat='server' title='單價01' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 469px; TOP: 162px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='permoney01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qty01' runat='server' title='數量01' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 583px; TOP: 162px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='qty01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 658px; TOP: 162px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee02' runat='server' title='對象02' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 290px; TOP: 200px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='payee02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='160px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='permoney02' runat='server' title='單價02' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 469px; TOP: 200px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='permoney02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qty02' runat='server' title='數量02' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 583px; TOP: 200px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='qty02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 658px; TOP: 200px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee03' runat='server' title='對象03' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 290px; TOP: 238px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='payee03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='160px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='permoney03' runat='server' title='單價03' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 469px; TOP: 238px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='permoney03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qty03' runat='server' title='數量03' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 583px; TOP: 238px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='qty03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 658px; TOP: 238px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee04' runat='server' title='對象04' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 290px; TOP: 276px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='payee04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='160px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='permoney04' runat='server' title='單價04' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 469px; TOP: 276px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='permoney04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qty04' runat='server' title='數量04' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 583px; TOP: 276px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='qty04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 658px; TOP: 276px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee05' runat='server' title='對象05' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 290px; TOP: 314px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='payee05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='160px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='permoney05' runat='server' title='單價05' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 469px; TOP: 314px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='permoney05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qty05' runat='server' title='數量05' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 583px; TOP: 314px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='qty05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 658px; TOP: 314px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee06' runat='server' title='對象06' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 290px; TOP: 352px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='payee06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='160px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='permoney06' runat='server' title='單價06' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 469px; TOP: 352px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='permoney06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qty06' runat='server' title='數量06' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 583px; TOP: 352px;"
	TxtInput_TabIndex='127'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='qty06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money06' runat='server' title='金額06' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 658px; TOP: 352px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='money06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee07' runat='server' title='對象07' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 290px; TOP: 390px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='payee07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='160px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='permoney07' runat='server' title='單價07' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 469px; TOP: 390px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='permoney07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qty07' runat='server' title='數量07' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 583px; TOP: 390px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='qty07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money07' runat='server' title='金額07' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 658px; TOP: 390px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='money07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee08' runat='server' title='對象08' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 290px; TOP: 428px;"
	TxtInput_TabIndex='133'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='payee08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='160px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='permoney08' runat='server' title='單價08' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 469px; TOP: 428px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='permoney08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qty08' runat='server' title='數量08' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 583px; TOP: 428px;"
	TxtInput_TabIndex='135'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='qty08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money08' runat='server' title='金額08' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 658px; TOP: 428px;"
	TxtInput_TabIndex='136'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='money08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee09' runat='server' title='對象09' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 290px; TOP: 466px;"
	TxtInput_TabIndex='137'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='payee09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='160px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='permoney09' runat='server' title='單價09' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 469px; TOP: 466px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='permoney09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qty09' runat='server' title='數量09' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 583px; TOP: 466px;"
	TxtInput_TabIndex='139'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='qty09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money09' runat='server' title='金額09' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 658px; TOP: 466px;"
	TxtInput_TabIndex='140'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='money09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee10' runat='server' title='對象10' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 290px; TOP: 504px;"
	TxtInput_TabIndex='141'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='payee10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='160px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='permoney10' runat='server' title='單價10' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 469px; TOP: 504px;"
	TxtInput_TabIndex='142'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='permoney10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qty10' runat='server' title='數量10' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 583px; TOP: 504px;"
	TxtInput_TabIndex='143'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='qty10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money10' runat='server' title='金額10' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 658px; TOP: 504px;"
	TxtInput_TabIndex='144'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='money10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='totalmoney' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 661px; TOP: 541px;"
	TxtInput_TabIndex='145'>
	<FrmFieldKeys FrmID='FrmODMPRMVE02' BOID='ODMPRMVE02' FieldName='totalmoney'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='119px' Height='27px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMPRMVE.jpg" id="Head01_file_1" runat="server" width="821" height="597" />
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
	<!--三位一撇--20230424 Peggy-->
	<script src="../../_Common/OEM/JS/OEMUtils.js"></script>

<script src="ODMPRMVE02.js?NoCache=20240205002" type="text/javascript"></script>
</asp:Content>
