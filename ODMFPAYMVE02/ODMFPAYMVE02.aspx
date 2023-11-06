<%@ Page language="c#" CodeFile="ODMFPAYMVE02.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMFPAYMVE02" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMFPAYMVE02FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMFPAYMVE02" FrmDefineKeys-BOID="ODMFPAYMVE02"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="862px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='862px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 862px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmfpaymve02001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='odmfpaymve02001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmfpaymve02002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='odmfpaymve02002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='lblcn' runat='server' Style="z-index:676; position: absolute; left: 329px; top: 288px; vertical-align:middle;font-family:'細明體';font-size:12pt;" Text='冠志廠(CN)' Width='100px' Height='23px'></cc1:DscLabel>
<cc1:DscLabel ID='lblvn' runat='server' Style="z-index:672; position: absolute; left: 424px; top: 286px; vertical-align:middle;font-family:'新細明體';font-size:12pt;" Text='越南廠(VN)' Width='100px' Height='25px'></cc1:DscLabel>
<cc1:DscLabel ID='lblyear' runat='server' Style="z-index:684; position: absolute; left: 179px; top: 278px; vertical-align:middle;font-family:'細明體';font-size:12pt;" Text='年' Width='39px' Height='23px'></cc1:DscLabel>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='日期' ShowTitle='False'
	style="POSITION: absolute; left: 665px; top: 104px; z-index: 650;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='103px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 64px; TOP: 141px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='請款人' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 290px; TOP: 141px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee' runat='server' title='受款人' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 499px; TOP: 135px;"
	TxtInput_TabIndex='104' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='payee'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='250px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkitem01' runat='server' Text='一般費用' ShowTitle='False'
	Style="z-index:690; position: absolute; left: 62px; top: 178px;"
	CheckBoxInput_TabIndex='105'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkitem01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem02' runat='server' Text='資產' ShowTitle='False'
	Style="z-index:682; position: absolute; left: 188px; top: 178px;"
	CheckBoxInput_TabIndex='106'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkitem02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem03' runat='server' Text='原物料' ShowTitle='False'
	Style="z-index:679; position: absolute; left: 269px; top: 178px;"
	CheckBoxInput_TabIndex='107'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='23px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkitem03'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem04' runat='server' Text='零用金' ShowTitle='False'
	Style="z-index:675; position: absolute; left: 365px; top: 178px;"
	CheckBoxInput_TabIndex='108'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='20px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkitem04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem05' runat='server' Text='其他-' ShowTitle='False'
	Style="z-index:671; position: absolute; left: 461px; top: 178px;"
	CheckBoxInput_TabIndex='109'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkitem05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='chkother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 526px; TOP: 182px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 411px; TOP: 228px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='payother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='orderno' runat='server' title='訂購單號' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 617px; TOP: 275px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='orderno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 59px; TOP: 342px;"
	TxtInput_TabIndex='114' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='70px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype01' runat='server' title='主類別01' ShowTitle='False'
	style="Z-INDEX: 665; POSITION: absolute; LEFT: 468px; TOP: 345px;"
	TxtInput_TabIndex='115' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='opentype01'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem01' runat='server' title='子類別01' ShowTitle='False'
	style="Z-INDEX: 670; POSITION: absolute; LEFT: 468px; TOP: 373px;"
	TxtInput_TabIndex='116' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='openitem01'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 619px; TOP: 364px;"
	TxtInput_TabIndex='117' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea2' runat='server' title='內容02' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 58px; TOP: 424px;"
	TxtInput_TabIndex='118' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='70px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype02' runat='server' title='主類別02' ShowTitle='False'
	style="Z-INDEX: 664; POSITION: absolute; LEFT: 468px; TOP: 427px;"
	TxtInput_TabIndex='119' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='opentype02'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem02' runat='server' title='子類別02' ShowTitle='False'
	style="Z-INDEX: 669; POSITION: absolute; LEFT: 468px; TOP: 454px;"
	TxtInput_TabIndex='120' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='openitem02'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 619px; TOP: 445px;"
	TxtInput_TabIndex='121' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea3' runat='server' title='內容03' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 56px; TOP: 501px;"
	TxtInput_TabIndex='122' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype03' runat='server' title='主類別03' ShowTitle='False'
	style="Z-INDEX: 663; POSITION: absolute; LEFT: 468px; TOP: 504px;"
	TxtInput_TabIndex='123' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='opentype03'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem03' runat='server' title='子類別03' ShowTitle='False'
	style="Z-INDEX: 668; POSITION: absolute; LEFT: 468px; TOP: 529px;"
	TxtInput_TabIndex='124' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='openitem03'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:654; POSITION: absolute; LEFT: 619px; TOP: 518px;"
	TxtInput_TabIndex='126' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea4' runat='server' title='內容04' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 57px; TOP: 564px;"
	TxtInput_TabIndex='127' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='textarea4'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype04' runat='server' title='主類別04' ShowTitle='False'
	style="Z-INDEX: 662; POSITION: absolute; LEFT: 468px; TOP: 565px;"
	TxtInput_TabIndex='128' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='opentype04'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem04' runat='server' title='子類別04' ShowTitle='False'
	style="Z-INDEX: 667; POSITION: absolute; LEFT: 468px; TOP: 588px;"
	TxtInput_TabIndex='129' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='openitem04'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:653; POSITION: absolute; LEFT: 619px; TOP: 580px;"
	TxtInput_TabIndex='130' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea5' runat='server' title='內容05' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 61px; TOP: 621px;"
	TxtInput_TabIndex='131' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='textarea5'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype05' runat='server' title='主類別05' ShowTitle='False'
	style="Z-INDEX: 661; POSITION: absolute; LEFT: 468px; TOP: 625px;"
	TxtInput_TabIndex='132' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='opentype05'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem05' runat='server' title='子類別05' ShowTitle='False'
	style="Z-INDEX: 666; POSITION: absolute; LEFT: 468px; TOP: 650px;"
	TxtInput_TabIndex='133' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='openitem05'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:652; POSITION: absolute; LEFT: 619px; TOP: 633px;"
	TxtInput_TabIndex='134' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:651; POSITION: absolute; LEFT: 622px; TOP: 680px;"
	TxtInput_TabIndex='135' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt01' runat='server' Text='發票' ShowTitle='False'
	Style="z-index:692; position: absolute; left: 60px; top: 715px;"
	CheckBoxInput_TabIndex='136'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkatt01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv01' runat='server' title='發票張數' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 184px; TOP: 711px;"
	TxtInput_TabIndex='137'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='inv01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='26px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt02' runat='server' Text='收據' ShowTitle='False'
	Style="z-index:680; position: absolute; left: 265px; top: 714px;"
	CheckBoxInput_TabIndex='138'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkatt02'></FrmFieldKeys>
</cc1:DscCheckBox>
<div style="display:none;">
<cc1:DscOpenQuery id='SenderID' runat='server' title='SenderID' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 32px; TOP: 42px;"
	TxtInput_TabIndex='139' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='SenderID'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscCheckBox ID='chkatt04' runat='server' Text='驗收單' ShowTitle='False'
	Style="z-index:691; position: absolute; left: 60px; top: 749px;"
	CheckBoxInput_TabIndex='139'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='24px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkatt04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv02' runat='server' title='數據張數' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 384px; TOP: 711px;"
	TxtInput_TabIndex='139'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='inv02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscOpenQuery id='SuperID' runat='server' title='SuperID' ShowTitle='False'
	style="Z-INDEX: 699; POSITION: absolute; LEFT: 33px; TOP: 8px;"
	TxtInput_TabIndex='140' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='SuperID'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscCheckBox ID='chkatt05' runat='server' Text='進貨單' ShowTitle='False'
	Style="z-index:681; position: absolute; left: 265px; top: 750px;"
	CheckBoxInput_TabIndex='140'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkatt05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='other' runat='server' Text='其他附件' ShowTitle='False'
	Style="z-index:693; position: absolute; left: 60px; top: 783px;"
	CheckBoxInput_TabIndex='141'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='31px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='other'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='attother' runat='server' title='其他附件' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 160px; TOP: 780px;"
	TxtInput_TabIndex='142'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='attother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='106px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr' runat='server' Title='幣別' ShowTitle='False'
	Style="z-index:658; position: absolute; left: 566px; top: 684px;"
	DDLInput_TabIndex='148'>
	<Items>
		<asp:ListItem Selected='False' Value='RMB'>RMB</asp:ListItem>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
		<asp:ListItem Selected='True' Value='VND'>VND</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='curr'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMFPAYMVE02_curr' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='useyear' runat='server' title='年' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 128px; TOP: 277px;"
	TxtInput_TabIndex='154'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='useyear'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='paydate' runat='server' Title='付款日期' ShowTitle='False'
	style="POSITION: absolute; left: 147px; top: 105px; z-index: 686;" 
	TxtInput_TabIndex='160' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='89px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='paydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='chkven' runat='server' title='冠志廠(CN)' ShowTitle='False'
	style="display:none;Z-INDEX:686; POSITION: absolute; LEFT: 329px; TOP: 269px;">
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chkven'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chkven_ctrolRadio0' runat='server' GroupName='chkven' Text='' Value='0' style='position:absolute;top:269px;left:329px;z-index:686;'/>
<asp:RadioButton ID='chkven_ctrolRadio1' runat='server' GroupName='chkven' Text='' Value='1' style='position:absolute;top:268px;left:426px;z-index:686;'/>
<cc1:DscTextBox id='chpay' runat='server' title='現金支付' ShowTitle='False'
	style="display:none;Z-INDEX:686; POSITION: absolute; LEFT: 133px; TOP: 228px;">
	<FrmFieldKeys FrmID='FrmODMFPAYMVE02' BOID='ODMFPAYMVE02' FieldName='chpay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chpay_ctrolRadio0' runat='server' GroupName='chpay' Text='' Value='0' style='position:absolute;top:228px;left:133px;z-index:686;'/>
<asp:RadioButton ID='chpay_ctrolRadio1' runat='server' GroupName='chpay' Text='' Value='1' style='position:absolute;top:228px;left:236px;z-index:686;'/>
<asp:RadioButton ID='chpay_ctrolRadio2' runat='server' GroupName='chpay' Text='' Value='2' style='position:absolute;top:228px;left:356px;z-index:686;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMFPAYMVEV2.png" id="Head01_file_1" runat="server" width="792" height="827" />
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
	 <script src="../../_Common/OEM/JS/OEMSetControl.js"></script>
    <!--三位一撇--20230424 Peggy-->
	<script src="../../_Common/OEM/JS/OEMUtils.js"></script>
	<script src="ODMFPAYMVE02.js?NoCache=202301106001" type="text/javascript"></script>
</asp:Content>
