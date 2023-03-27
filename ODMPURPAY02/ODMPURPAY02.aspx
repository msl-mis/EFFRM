<%@ Page language="c#" CodeFile="ODMPURPAY02.aspx.cs" ValidateRequest="false" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMPURPAY02" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<%@ Register Assembly='System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35' Namespace='System.Web.UI' TagPrefix='asp' %>
<asp:Content ID="ODMPURPAY02FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMPURPAY02" FrmDefineKeys-BOID="ODMPURPAY02"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="616px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='616px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 616px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmpurpay02a001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='odmpurpay02a001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmpurpay02a002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='odmpurpay02a002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='txtuser' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 76px; TOP: 65px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='txtuser'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='103px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='usedate' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 740px; top: 65px; z-index: 651;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='89px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='usedate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscOpenQuery id='querypurno' runat='server' title='採購單號' ShowTitle='False'
	style="Z-INDEX: 695; POSITION: absolute; LEFT: 49px; TOP: 236px;"
	TxtInput_TabIndex='106' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='130px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='querypurno'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='na003' runat='server' title='付款方式' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 237px; TOP: 225px;"
	TxtInput_TabIndex='107' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='na003'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='215px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc027' runat='server' title='付款代號' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 189px; TOP: 225px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='tc027'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='45px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='paydate' runat='server' Title='付款日期' ShowTitle='False'
	style="POSITION: absolute; left: 460px; top: 237px; z-index: 669;" 
	TxtInput_TabIndex='109' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='65px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='paydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='ma001' runat='server' title='廠商代號' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 542px; TOP: 227px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='ma001'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma002' runat='server' title='廠商名稱' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 542px; TOP: 250px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='ma002'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc005' runat='server' title='交易幣別' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 678px; TOP: 237px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='tc005'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='totalamt' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:646; POSITION: absolute; LEFT: 745px; TOP: 434px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='totalamt'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='82px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='newid' runat='server' title='單號別' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 14px; TOP: 537px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='newid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='68px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='txtnote' runat='server' title='備註' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 197px; TOP: 468px;"
	TxtInput_TabIndex='121' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='txtnote'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='600px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 359px; TOP: 146px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='txtother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='79px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='querypurno01' runat='server' title='採購單號01' ShowTitle='False'
	style="Z-INDEX: 694; POSITION: absolute; LEFT: 50px; TOP: 286px;"
	TxtInput_TabIndex='125' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='130px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='querypurno01'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='querypurno02' runat='server' title='採購單號02' ShowTitle='False'
	style="Z-INDEX: 693; POSITION: absolute; LEFT: 50px; TOP: 341px;"
	TxtInput_TabIndex='126' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='130px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='querypurno02'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='querypurno03' runat='server' title='採購單號03' ShowTitle='False'
	style="Z-INDEX: 692; POSITION: absolute; LEFT: 50px; TOP: 393px;"
	TxtInput_TabIndex='127' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='130px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='querypurno03'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='tc027_01' runat='server' title='付款代號01' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 189px; TOP: 279px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='tc027_01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='45px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc027_02' runat='server' title='付款代號02' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 189px; TOP: 330px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='tc027_02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='45px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc027_03' runat='server' title='付款代號03' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 189px; TOP: 382px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='tc027_03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='45px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='na003_01' runat='server' title='付款方式01' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 236px; TOP: 279px;"
	TxtInput_TabIndex='131' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='na003_01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='215px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='na003_02' runat='server' title='付款方式02' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 237px; TOP: 330px;"
	TxtInput_TabIndex='132' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='na003_02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='215px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='na003_03' runat='server' title='付款方式03' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 237px; TOP: 382px;"
	TxtInput_TabIndex='133' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='na003_03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='215px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='paydate01' runat='server' Title='付款日期01' ShowTitle='False'
	style="POSITION: absolute; left: 460px; top: 290px; z-index: 668;" 
	TxtInput_TabIndex='134' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='65px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='paydate01'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='paydate02' runat='server' Title='付款日期02' ShowTitle='False'
	style="POSITION: absolute; left: 460px; top: 342px; z-index: 667;" 
	TxtInput_TabIndex='135' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='65px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='paydate02'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='paydate03' runat='server' Title='付款日期03' ShowTitle='False'
	style="POSITION: absolute; left: 460px; top: 391px; z-index: 666;" 
	TxtInput_TabIndex='136' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='65px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='paydate03'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='ma001_01' runat='server' title='廠商代號01' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 542px; TOP: 280px;"
	TxtInput_TabIndex='137'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='ma001_01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma001_02' runat='server' title='廠商代號02' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 542px; TOP: 329px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='ma001_02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma001_03' runat='server' title='廠商代號03' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 542px; TOP: 383px;"
	TxtInput_TabIndex='139'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='ma001_03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma002_01' runat='server' title='廠商名稱01' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 542px; TOP: 303px;"
	TxtInput_TabIndex='140'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='ma002_01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma002_02' runat='server' title='廠商名稱02' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 542px; TOP: 354px;"
	TxtInput_TabIndex='141'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='ma002_02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma002_03' runat='server' title='廠商名稱03' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 542px; TOP: 407px;"
	TxtInput_TabIndex='142'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='ma002_03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc005_01' runat='server' title='交易幣別01' ShowTitle='False'
	style="Z-INDEX:654; POSITION: absolute; LEFT: 678px; TOP: 293px;"
	TxtInput_TabIndex='143'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='tc005_01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc005_02' runat='server' title='交易幣別02' ShowTitle='False'
	style="Z-INDEX:653; POSITION: absolute; LEFT: 678px; TOP: 343px;"
	TxtInput_TabIndex='144'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='tc005_02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc005_03' runat='server' title='交易幣別' ShowTitle='False'
	style="Z-INDEX:652; POSITION: absolute; LEFT: 678px; TOP: 392px;"
	TxtInput_TabIndex='145'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='tc005_03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt' runat='server' title='金額' ShowTitle='False'
	style="Z-INDEX:650; POSITION: absolute; LEFT: 742px; TOP: 237px;"
	TxtInput_TabIndex='146'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='txtamt'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:649; POSITION: absolute; LEFT: 743px; TOP: 293px;"
	TxtInput_TabIndex='147'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='txtamt01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:648; POSITION: absolute; LEFT: 743px; TOP: 342px;"
	TxtInput_TabIndex='148'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='txtamt02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:647; POSITION: absolute; LEFT: 743px; TOP: 392px;"
	TxtInput_TabIndex='149'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='txtamt03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='pay' runat='server' title='現金' ShowTitle='False'
	style="display:none;Z-INDEX:689; POSITION: absolute; LEFT: 146px; TOP: 149px;">
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='pay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='pay_ctrolRadio0' runat='server' GroupName='pay' Text='' Value='0' TabIndex='103' style='position:absolute;top:149px;left:146px;z-index:689;'/>
<asp:RadioButton ID='pay_ctrolRadio1' runat='server' GroupName='pay' Text='' Value='1' TabIndex='104' style='position:absolute;top:149px;left:224px;z-index:689;'/>
<asp:RadioButton ID='pay_ctrolRadio2' runat='server' GroupName='pay' Text='' Value='2' TabIndex='105' style='position:absolute;top:149px;left:306px;z-index:689;'/>
<cc1:DscTextBox id='rddept' runat='server' title='採購單位' ShowTitle='False'
	style="display:none;Z-INDEX:689; POSITION: absolute; LEFT: 146px; TOP: 105px;">
	<FrmFieldKeys FrmID='FrmODMPURPAY02' BOID='ODMPURPAY02' FieldName='rddept'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rddept_ctrolRadio0' runat='server' GroupName='rddept' Text='' Value='0' TabIndex='123' style='position:absolute;top:105px;left:146px;z-index:689;'/>
<asp:RadioButton ID='rddept_ctrolRadio1' runat='server' GroupName='rddept' Text='' Value='1' TabIndex='124' style='position:absolute;top:105px;left:245px;z-index:689;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="EF採購請款單.png" id="Head01_file_1" runat="server" width="865" height="581" />
</div>
<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="EF採購請款單.png" id="Head01_file_2" runat="server" width="865" height="581" />
</div>

						</div>
					</cc1:Dscpanel>


					<table><tr><td height='5'></td></tr></table>
					<!--單身頁籤-->
					<iewc:TabStrip id='TabStrip2' runat='server' CssClass='divToolBar2'
						TabDefaultStyle='background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);'
						TabHoverStyle='background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);'
						TabSelectedStyle='background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);'>
						<iewc:Tab ID="bodyDefault" Text="單身頁籤1" DefaultStyle="width:100px;height:27px;vertical-align:middle;text-align:center;"></iewc:Tab>
					</iewc:TabStrip>

					<!--單身Grid畫面-->
					
					<!--單身Grid 一 的各個dsc元件-->
					<div id='divbodyDefault' runat='server' class='TabPage' style='DISPLAY: block; OVERFLOW: hidden; WIDTH: 100%; BACKGROUND-REPEAT: repeat;'>
						<cc1:DscPanel ID='ecPnlDetail1' runat='server' FrmDefineKeys-BOID='ODMPURPAY02_d01' FrmDefineKeys-FrmID='FrmODMPURPAY02_d01' FrmDefineKeys-FrmType='Query'
							BorderStyle='None' BorderColor='Transparent' BorderWidth='0px'
							IniHTML="<div style='OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%;' ms_positioning='GridLayout'></div>"
							Width='100%' Height='0px'>
							<cc1:DscPanel ID='divDetail1Default' runat='server' FrmDefineKeys-BOID='ODMPURPAY02_d01' FrmDefineKeys-FrmID='FrmODMPURPAY02_d01' FrmDefineKeys-FrmType='Query'
								BorderStyle='None' BorderColor='Transparent' BorderWidth='0px'
								IniHTML="<div style='OVERFLOW: auto; WIDTH: 98%; POSITION: relative; HEIGHT: 100%;' ms_positioning='GridLayout'></div>"
								Width='894px' Height='152px' style='position:relative;'>
<cc1:DscTextBox id='odmpurpay02b1001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='odmpurpay02b1001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmpurpay02b1002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='odmpurpay02b1002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='odmpurpay02b1003' runat='server' title='序號'
	style='display: none; Z-INDEX: 700; POSITION: absolute; LEFT: 245px; TOP: 82px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px' CssClass='Edit20'></INPUTSTYLE>
	<TITLESTYLE Width='100px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='odmpurpay02b1003'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='lblno' runat='server' Style="z-index:698; position: absolute; left: 37px; top: 13px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='單號' Width='40px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblnob' runat='server' Style="z-index:697; position: absolute; left: 37px; top: 46px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='品號' Width='39px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblpdname' runat='server' Style="z-index:696; position: absolute; left: 37px; top: 77px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='品名' Width='39px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblprice' runat='server' Style="z-index:671; position: absolute; left: 381px; top: 13px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='單價' Width='35px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblpurprice' runat='server' Style="z-index:665; position: absolute; left: 509px; top: 13px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='採購金額' Width='70px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblqry' runat='server' Style="z-index:679; position: absolute; left: 235px; top: 13px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='數量' Width='37px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblspeci' runat='server' Style="z-index:680; position: absolute; left: 234px; top: 46px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='規格' Width='40px' Height='22px'></cc1:DscLabel>
<cc1:DscOpenQuery id='querypurtc' runat='server' title='採購單號' ShowTitle='False'
	style="Z-INDEX: 691; POSITION: absolute; LEFT: 74px; TOP: 11px;"
	TxtInput_TabIndex='114' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='130px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='querypurtc'></FrmFieldKeys>
</cc1:DscOpenQuery>
<div style="display:none;">
<cc1:DscTextBox id='td004' runat='server' title='採購單號' ShowTitle='False'
	style="Z-INDEX:645; POSITION: absolute; LEFT: 745px; TOP: 48px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='td004'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='93px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='td006' runat='server' title='規格' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 270px; TOP: 45px;"
	TxtInput_TabIndex='116' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='td006'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='450px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='td008' runat='server' title='數量' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 269px; TOP: 12px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='td008'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='td010' runat='server' title='單價' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 413px; TOP: 12px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='td010'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='td011' runat='server' title='採購金額' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 576px; TOP: 12px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='td011'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purnob' runat='server' title='品號' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 74px; TOP: 45px;"
	TxtInput_TabIndex='150'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='purnob'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='118px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purnoname' runat='server' title='品名' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 74px; TOP: 76px;"
	TxtInput_TabIndex='151'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='purnoname'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='118px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

							</cc1:DscPanel>
							<uc1:gridusercontrol id='GridUserControl1' runat='server'></uc1:gridusercontrol>
						</cc1:DscPanel>
					</div>


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

	<asp:UpdatePanel ID='DetailUpdatePanel' UpdateMode='Conditional' runat='server'>
		<ContentTemplate>
		</ContentTemplate>
		<Triggers>
			<asp:AsyncPostBackTrigger ControlID='BtnDetailSave' EventName='Click' />
			<asp:AsyncPostBackTrigger ControlID='BtnDetailAdd' EventName='Click' />
			<asp:AsyncPostBackTrigger ControlID='BtnDetailDel' EventName='Click' />
			<asp:AsyncPostBackTrigger ControlID='BtnDetailExit' EventName='Click' />
		</Triggers>
	</asp:UpdatePanel>
<!--引用JavaScript-->
<script src="ODMPURPAY02.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
