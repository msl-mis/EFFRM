<%@ Page language="c#" CodeFile="ODMWPDCN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMWPDCN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMWPDCN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMWPDCN01" FrmDefineKeys-BOID="ODMWPDCN01"
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

<cc1:DscTextBox id='odmwpdcn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='odmwpdcn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmwpdcn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='odmwpdcn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscDateAssistant2 ID='usedate' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 103px; top: 79px; z-index: 700;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='usedate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtuser' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:653; POSITION: absolute; LEFT: 420px; TOP: 77px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtuser'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='64px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtwek' runat='server' title='周數' ShowTitle='False'
	style="Z-INDEX:630; POSITION: absolute; LEFT: 694px; TOP: 80px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtwek'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='saturday' runat='server' Title='周六' ShowTitle='False'
	style="POSITION: absolute; left: 162px; top: 137px; z-index: 689;" 
	TxtInput_TabIndex='104' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='saturday'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='sunday' runat='server' Title='週日' ShowTitle='False'
	style="POSITION: absolute; left: 282px; top: 137px; z-index: 686;" 
	TxtInput_TabIndex='105' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='81px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunday'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='satlst01' runat='server' title='satlst01' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 162px; TOP: 168px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='satlst01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day01lst01' runat='server' title='day01lst01' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 418px; TOP: 168px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day01lst01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day02lst01' runat='server' title='day02lst01' ShowTitle='False'
	style="Z-INDEX:650; POSITION: absolute; LEFT: 539px; TOP: 168px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day02lst01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='daylst01' runat='server' title='daylst01' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 418px; TOP: 168px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='daylst01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sunlst01' runat='server' title='sunlst01' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 282px; TOP: 168px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunlst01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote01' runat='server' title='備註01' ShowTitle='False'
	style="Z-INDEX:640; POSITION: absolute; LEFT: 657px; TOP: 168px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtnote01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='satlst02' runat='server' title='satlst02' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 162px; TOP: 209px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='satlst02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day01lst02' runat='server' title='day01lst02' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 418px; TOP: 209px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day01lst02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day02lst02' runat='server' title='day02lst02' ShowTitle='False'
	style="Z-INDEX:649; POSITION: absolute; LEFT: 539px; TOP: 209px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day02lst02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='daylst02' runat='server' title='daylst02' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 418px; TOP: 209px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='daylst02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sunlst02' runat='server' title='sunlst02' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 282px; TOP: 209px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunlst02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote02' runat='server' title='備註02' ShowTitle='False'
	style="Z-INDEX:639; POSITION: absolute; LEFT: 657px; TOP: 209px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtnote02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='satlst03' runat='server' title='satlst03' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 162px; TOP: 249px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='satlst03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day01lst03' runat='server' title='day01lst03' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 418px; TOP: 249px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day01lst03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day02lst03' runat='server' title='day02lst03' ShowTitle='False'
	style="Z-INDEX:648; POSITION: absolute; LEFT: 539px; TOP: 249px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day02lst03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='daylst03' runat='server' title='daylst03' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 418px; TOP: 249px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='daylst03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sunlst03' runat='server' title='sunlst03' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 282px; TOP: 249px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunlst03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote03' runat='server' title='備註03' ShowTitle='False'
	style="Z-INDEX:638; POSITION: absolute; LEFT: 657px; TOP: 249px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtnote03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='satlst04' runat='server' title='satlst04' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 162px; TOP: 289px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='satlst04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day01lst04' runat='server' title='day01lst04' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 418px; TOP: 289px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day01lst04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day02lst04' runat='server' title='day02lst04' ShowTitle='False'
	style="Z-INDEX:647; POSITION: absolute; LEFT: 539px; TOP: 289px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day02lst04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='daylst04' runat='server' title='daylst04' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 418px; TOP: 289px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='daylst04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sunlst04' runat='server' title='sunlst04' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 282px; TOP: 289px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunlst04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote04' runat='server' title='備註04' ShowTitle='False'
	style="Z-INDEX:637; POSITION: absolute; LEFT: 657px; TOP: 289px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtnote04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='satlst05' runat='server' title='satlst05' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 162px; TOP: 330px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='satlst05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day01lst05' runat='server' title='day01lst05' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 418px; TOP: 330px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day01lst05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day02lst05' runat='server' title='day02lst05' ShowTitle='False'
	style="Z-INDEX:646; POSITION: absolute; LEFT: 539px; TOP: 330px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day02lst05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='daylst05' runat='server' title='daylst05' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 418px; TOP: 330px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='daylst05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sunlst05' runat='server' title='sunlst05' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 282px; TOP: 330px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunlst05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote05' runat='server' title='備註05' ShowTitle='False'
	style="Z-INDEX:636; POSITION: absolute; LEFT: 657px; TOP: 330px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtnote05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='satlst06' runat='server' title='satlst06' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 162px; TOP: 370px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='satlst06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day01lst06' runat='server' title='day01lst06' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 418px; TOP: 370px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day01lst06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day02lst06' runat='server' title='day02lst06' ShowTitle='False'
	style="Z-INDEX:645; POSITION: absolute; LEFT: 539px; TOP: 370px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day02lst06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='daylst06' runat='server' title='daylst06' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 418px; TOP: 370px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='daylst06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sunlst06' runat='server' title='sunlst06' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 282px; TOP: 370px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunlst06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote06' runat='server' title='備註06' ShowTitle='False'
	style="Z-INDEX:635; POSITION: absolute; LEFT: 657px; TOP: 370px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtnote06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='satlst07' runat='server' title='satlst07' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 162px; TOP: 408px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='satlst07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day01lst07' runat='server' title='day01lst07' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 418px; TOP: 408px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day01lst07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day02lst07' runat='server' title='day02lst07' ShowTitle='False'
	style="Z-INDEX:644; POSITION: absolute; LEFT: 539px; TOP: 408px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day02lst07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='daylst07' runat='server' title='daylst07' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 418px; TOP: 408px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='daylst07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sunlst07' runat='server' title='sunlst07' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 282px; TOP: 408px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunlst07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote07' runat='server' title='備註07' ShowTitle='False'
	style="Z-INDEX:634; POSITION: absolute; LEFT: 657px; TOP: 408px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtnote07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='satlst08' runat='server' title='satlst08' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 162px; TOP: 449px;"
	TxtInput_TabIndex='127'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='satlst08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day01lst08' runat='server' title='day01lst08' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 418px; TOP: 449px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day01lst08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day02lst08' runat='server' title='day02lst08' ShowTitle='False'
	style="Z-INDEX:643; POSITION: absolute; LEFT: 539px; TOP: 449px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day02lst08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='daylst08' runat='server' title='daylst08' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 418px; TOP: 449px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='daylst08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sunlst08' runat='server' title='sunlst08' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 282px; TOP: 449px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunlst08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote08' runat='server' title='備註08' ShowTitle='False'
	style="Z-INDEX:633; POSITION: absolute; LEFT: 657px; TOP: 449px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtnote08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='satlst09' runat='server' title='satlst09' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 162px; TOP: 489px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='satlst09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day01lst09' runat='server' title='day01lst09' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 418px; TOP: 489px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day01lst09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day02lst09' runat='server' title='day02lst09' ShowTitle='False'
	style="Z-INDEX:642; POSITION: absolute; LEFT: 539px; TOP: 489px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day02lst09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='daylst09' runat='server' title='daylst09' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 418px; TOP: 489px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='daylst09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sunlst09' runat='server' title='sunlst09' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 282px; TOP: 489px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunlst09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote09' runat='server' title='備註09' ShowTitle='False'
	style="Z-INDEX:632; POSITION: absolute; LEFT: 657px; TOP: 489px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtnote09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='satlst10' runat='server' title='satlst10' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 162px; TOP: 528px;"
	TxtInput_TabIndex='133'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='satlst10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day01lst10' runat='server' title='day01lst10' ShowTitle='False'
	style="Z-INDEX:654; POSITION: absolute; LEFT: 418px; TOP: 528px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day01lst10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='day02lst10' runat='server' title='day02lst10' ShowTitle='False'
	style="Z-INDEX:641; POSITION: absolute; LEFT: 539px; TOP: 528px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='day02lst10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='daylst10' runat='server' title='daylst10' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 418px; TOP: 528px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='daylst10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='sunlst10' runat='server' title='sunlst10' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 282px; TOP: 528px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='sunlst10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote10' runat='server' title='備註10' ShowTitle='False'
	style="Z-INDEX:631; POSITION: absolute; LEFT: 657px; TOP: 528px;"
	TxtInput_TabIndex='135'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtnote10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtwk01' runat='server' title='txtwk01' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 163px; TOP: 109px;"
	TxtInput_TabIndex='136'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtwk01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtwk02' runat='server' title='txtwk02' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 282px; TOP: 110px;"
	TxtInput_TabIndex='137'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtwk02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtwk03' runat='server' title='txtwk03' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 418px; TOP: 110px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtwk03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtwk04' runat='server' title='txtwk04' ShowTitle='False'
	style="Z-INDEX:652; POSITION: absolute; LEFT: 539px; TOP: 111px;"
	TxtInput_TabIndex='139'>
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='txtwk04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='otherday01' runat='server' Title='otherday01' ShowTitle='False'
	style="POSITION: absolute; left: 418px; top: 137px; z-index: 664;" 
	TxtInput_TabIndex='140' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='otherday01'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='otherday02' runat='server' Title='otherday02' ShowTitle='False'
	style="POSITION: absolute; left: 539px; top: 137px; z-index: 651;" 
	TxtInput_TabIndex='141' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMWPDCN01' BOID='ODMWPDCN01' FieldName='otherday02'></FrmFieldKeys>
</cc1:DscDateAssistant2>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="休假安排表_1.png" id="Head01_file_1" runat="server" width="823" height="580" />
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
<script src="ODMWPDCN01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
