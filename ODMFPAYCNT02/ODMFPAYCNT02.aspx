<%@ Page language="c#" CodeFile="ODMFPAYCNT02.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMFPAYCNT02" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMFPAYCNT02FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMFPAYCNT02" FrmDefineKeys-BOID="ODMFPAYCNT02"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="750px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='750px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 750px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmfpaycnt02001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='odmfpaycnt02001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmfpaycnt02002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='odmfpaycnt02002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='lblcn' runat='server' Style="z-index:677; position: absolute; left: 277px; top: 205px; vertical-align:middle;font-family:'Arial';font-size:12pt;font-weight:bold;" Text='冠志廠' Width='59px' Height='23px'></cc1:DscLabel>
<cc1:DscLabel ID='lblvn' runat='server' Style="z-index:673; position: absolute; left: 363px; top: 205px; vertical-align:middle;font-family:'Arial';font-size:12pt;font-weight:bold;" Text='越南廠' Width='56px' Height='25px'></cc1:DscLabel>
<cc1:DscLabel ID='unit' runat='server' Style="z-index:655; position: absolute; left: 572px; top: 174px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='%' Width='29px' Height='22px'></cc1:DscLabel>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='日期' ShowTitle='False'
	style="POSITION: absolute; left: 513px; top: 73px; z-index: 660;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='103px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 67px; TOP: 106px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='請款人' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 320px; TOP: 106px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee' runat='server' title='受款人' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 527px; TOP: 106px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='payee'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkitem01' runat='server' Text='一般費用' ShowTitle='False'
	Style="z-index:695; position: absolute; left: 59px; top: 139px;"
	CheckBoxInput_TabIndex='105'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkitem01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem02' runat='server' Text='資產' ShowTitle='False'
	Style="z-index:682; position: absolute; left: 154px; top: 139px;"
	CheckBoxInput_TabIndex='106'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkitem02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem03' runat='server' Text='原物料' ShowTitle='False'
	Style="z-index:680; position: absolute; left: 219px; top: 139px;"
	CheckBoxInput_TabIndex='107'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='23px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkitem03'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem04' runat='server' Text='零用金' ShowTitle='False'
	Style="z-index:675; position: absolute; left: 302px; top: 139px;"
	CheckBoxInput_TabIndex='108'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='20px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkitem04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem05' runat='server' Text='其他-' ShowTitle='False'
	Style="z-index:672; position: absolute; left: 381px; top: 139px;"
	CheckBoxInput_TabIndex='109'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkitem05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='chkother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 447px; TOP: 141px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 280px; TOP: 172px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='payother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='orderno' runat='server' title='訂購單號' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 524px; TOP: 203px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='orderno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='150px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 65px; TOP: 263px;"
	TxtInput_TabIndex='114' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='350px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype01' runat='server' title='主類別01' ShowTitle='False'
	style="Z-INDEX: 670; POSITION: absolute; LEFT: 430px; TOP: 262px;"
	TxtInput_TabIndex='115' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='opentype01'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem01' runat='server' title='子類別01' ShowTitle='False'
	style="Z-INDEX: 665; POSITION: absolute; LEFT: 430px; TOP: 287px;"
	TxtInput_TabIndex='116' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='openitem01'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 577px; TOP: 274px;"
	TxtInput_TabIndex='117' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea2' runat='server' title='內容02' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 65px; TOP: 325px;"
	TxtInput_TabIndex='118' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='350px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype02' runat='server' title='主類別02' ShowTitle='False'
	style="Z-INDEX: 669; POSITION: absolute; LEFT: 430px; TOP: 325px;"
	TxtInput_TabIndex='119' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='opentype02'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem02' runat='server' title='子類別02' ShowTitle='False'
	style="Z-INDEX: 664; POSITION: absolute; LEFT: 430px; TOP: 351px;"
	TxtInput_TabIndex='120' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='openitem02'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 577px; TOP: 340px;"
	TxtInput_TabIndex='121' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea3' runat='server' title='內容03' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 65px; TOP: 386px;"
	TxtInput_TabIndex='122' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='350px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype03' runat='server' title='主類別03' ShowTitle='False'
	style="Z-INDEX: 668; POSITION: absolute; LEFT: 430px; TOP: 387px;"
	TxtInput_TabIndex='123' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='opentype03'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem03' runat='server' title='子類別03' ShowTitle='False'
	style="Z-INDEX: 662; POSITION: absolute; LEFT: 431px; TOP: 410px;"
	TxtInput_TabIndex='124' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='openitem03'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:654; POSITION: absolute; LEFT: 577px; TOP: 400px;"
	TxtInput_TabIndex='126' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea4' runat='server' title='內容04' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 65px; TOP: 446px;"
	TxtInput_TabIndex='127' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='textarea4'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='350px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype04' runat='server' title='主類別04' ShowTitle='False'
	style="Z-INDEX: 667; POSITION: absolute; LEFT: 430px; TOP: 448px;"
	TxtInput_TabIndex='128' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='opentype04'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem04' runat='server' title='子類別04' ShowTitle='False'
	style="Z-INDEX: 663; POSITION: absolute; LEFT: 430px; TOP: 474px;"
	TxtInput_TabIndex='129' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='openitem04'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:653; POSITION: absolute; LEFT: 577px; TOP: 462px;"
	TxtInput_TabIndex='130' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea5' runat='server' title='內容05' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 65px; TOP: 508px;"
	TxtInput_TabIndex='131' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='textarea5'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='350px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype05' runat='server' title='主類別05' ShowTitle='False'
	style="Z-INDEX: 666; POSITION: absolute; LEFT: 430px; TOP: 509px;"
	TxtInput_TabIndex='132' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='opentype05'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem05' runat='server' title='子類別05' ShowTitle='False'
	style="Z-INDEX: 671; POSITION: absolute; LEFT: 429px; TOP: 535px;"
	TxtInput_TabIndex='133' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='openitem05'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:652; POSITION: absolute; LEFT: 577px; TOP: 521px;"
	TxtInput_TabIndex='134' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:651; POSITION: absolute; LEFT: 577px; TOP: 566px;"
	TxtInput_TabIndex='135' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt01' runat='server' Text='發票' ShowTitle='False'
	Style="z-index:698; position: absolute; left: 58px; top: 601px;"
	CheckBoxInput_TabIndex='136'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkatt01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv01' runat='server' title='發票張數' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 116px; TOP: 598px;"
	TxtInput_TabIndex='137'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='inv01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='26px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt02' runat='server' Text='收據' ShowTitle='False'
	Style="z-index:681; position: absolute; left: 168px; top: 601px;"
	CheckBoxInput_TabIndex='138'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkatt02'></FrmFieldKeys>
</cc1:DscCheckBox>
<div style="display:none;">
<cc1:DscOpenQuery id='SenderID' runat='server' title='SenderID' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 32px; TOP: 41px;"
	TxtInput_TabIndex='139' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='SenderID'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscCheckBox ID='chkatt04' runat='server' Text='驗收單' ShowTitle='False'
	Style="z-index:697; position: absolute; left: 58px; top: 635px;"
	CheckBoxInput_TabIndex='139'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='24px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkatt04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv02' runat='server' title='數據張數' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 227px; TOP: 598px;"
	TxtInput_TabIndex='139'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='inv02'></FrmFieldKeys>
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
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='SuperID'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscCheckBox ID='chkatt05' runat='server' Text='進貨單' ShowTitle='False'
	Style="z-index:683; position: absolute; left: 145px; top: 635px;"
	CheckBoxInput_TabIndex='140'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkatt05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='other' runat='server' Text='其他附件' ShowTitle='False'
	Style="z-index:696; position: absolute; left: 58px; top: 670px;"
	CheckBoxInput_TabIndex='141'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='31px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='other'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='attother' runat='server' title='其他附件' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 128px; TOP: 667px;"
	TxtInput_TabIndex='142'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='attother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='106px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr' runat='server' Title='幣別' ShowTitle='False'
	Style="z-index:659; position: absolute; left: 517px; top: 572px;"
	DDLInput_TabIndex='148'>
	<Items>
		<asp:ListItem Selected='True' Value='RMB'>RMB</asp:ListItem>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='curr'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMFPAYCNT02_curr' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='useyear' runat='server' title='年' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 104px; TOP: 203px;"
	TxtInput_TabIndex='154'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='useyear'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tax' runat='server' title='稅點' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 524px; TOP: 171px;"
	TxtInput_TabIndex='160'>
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='tax'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='chkven' runat='server' title='冠志廠' ShowTitle='False'
	style="display:none;Z-INDEX:678; POSITION: absolute; LEFT: 258px; TOP: 206px;">
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chkven'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chkven_ctrolRadio0' runat='server' GroupName='chkven' Text='' Value='0' style='position:absolute;top:206px;left:255px; z-index:678;'/>
<asp:RadioButton ID='chkven_ctrolRadio1' runat='server' GroupName='chkven' Text='' Value='1' style='position:absolute;top:206px;left:342px; z-index:678;'/>
<cc1:DscTextBox id='chpay' runat='server' title='現金支付' ShowTitle='False'
	style="display:none;Z-INDEX:678; POSITION: absolute; LEFT: 95px; TOP: 176px;">
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='chpay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chpay_ctrolRadio0' runat='server' GroupName='chpay' Text='' Value='0' style='position:absolute;top:176px;left:95px;z-index:678;'/>
<asp:RadioButton ID='chpay_ctrolRadio1' runat='server' GroupName='chpay' Text='' Value='1' style='position:absolute;top:176px;left:165px;z-index:678;'/>
<asp:RadioButton ID='chpay_ctrolRadio2' runat='server' GroupName='chpay' Text='' Value='2' style='position:absolute;top:176px;left:232px;z-index:678;'/>
<cc1:DscTextBox id='kind' runat='server' title='一般類別' ShowTitle='False'
	style="display:none;Z-INDEX:678; POSITION: absolute; LEFT: 102px; TOP: 76px;">
	<FrmFieldKeys FrmID='FrmODMFPAYCNT02' BOID='ODMFPAYCNT02' FieldName='kind'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='kind_ctrolRadio0' runat='server' GroupName='kind' Text='' Value='0' style='position:absolute;top:76px;left:102px;z-index:678;'/>
<asp:RadioButton ID='kind_ctrolRadio1' runat='server' GroupName='kind' Text='' Value='1' style='position:absolute;top:76px;left:165px;z-index:678;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMFPAYCNTV2.png" id="Head01_file_1" runat="server" width="719" height="715" />
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
	<!--控制項觸發條件--20230424 Peggy-->
	 <script src="../../_Common/OEM/JS/OEMSetControl.js"></script>
    <!--三位一撇--20230424 Peggy-->
	<script src="../../_Common/OEM/JS/OEMUtils.js"></script>
<script src="ODMFPAYCNT02.js?NoCache=20230428005" type="text/javascript"></script>
</asp:Content>
