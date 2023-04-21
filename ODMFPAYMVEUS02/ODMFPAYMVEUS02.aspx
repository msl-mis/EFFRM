<%@ Page language="c#" CodeFile="ODMFPAYMVEUS02.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMFPAYMVEUS02" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMFPAYMVEUS02FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMFPAYMVEUS02" FrmDefineKeys-BOID="ODMFPAYMVEUS02"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="813px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='813px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 813px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmfpaymveus02001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='odmfpaymveus02001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmfpaymveus02002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='odmfpaymveus02002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='lblcn' runat='server' Style="z-index:680; position: absolute; left: 316px; top: 288px; vertical-align:middle;font-family:'細明體';font-size:12pt;" Text='冠志廠(CN)' Width='100px' Height='23px'></cc1:DscLabel>
<cc1:DscLabel ID='lblvn' runat='server' Style="z-index:675; position: absolute; left: 403px; top: 288px; vertical-align:middle;font-family:'新細明體';font-size:12pt;" Text='越南廠(VN)' Width='100px' Height='25px'></cc1:DscLabel>
<cc1:DscLabel ID='lblyear' runat='server' Style="z-index:686; position: absolute; left: 174px; top: 272px; vertical-align:middle;font-family:'新細明體';font-size:12pt;" Text='年' Width='33px' Height='28px'></cc1:DscLabel>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 673px; top: 104px; z-index: 658;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='103px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 57px; TOP: 141px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='125px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='請款人' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 329px; TOP: 141px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='111px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee' runat='server' title='受款人' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 615px; TOP: 144px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='payee'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscCheckBox ID='chkitem01' runat='server' Text='一般費用 Chi phí thường' ShowTitle='False'
	Style="z-index:691; position: absolute; left: 59px; top: 179px;"
	CheckBoxInput_TabIndex='105'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkitem01'></FrmFieldKeys>
</cc1:DscCheckBox>
</div>
<div style="display:none;">
<cc1:DscCheckBox ID='chkitem02' runat='server' Text='資產 Tài sản' ShowTitle='False'
	Style="z-index:684; position: absolute; left: 195px; top: 176px;"
	CheckBoxInput_TabIndex='106'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkitem02'></FrmFieldKeys>
</cc1:DscCheckBox>
</div>
<div style="display:none;">
<cc1:DscCheckBox ID='chkitem03' runat='server' Text='原物料 NVL' ShowTitle='False'
	Style="z-index:681; position: absolute; left: 269px; top: 179px;"
	CheckBoxInput_TabIndex='107'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkitem03'></FrmFieldKeys>
</cc1:DscCheckBox>
</div>
<div style="display:none;">
<cc1:DscCheckBox ID='chkitem04' runat='server' Text='零用金 Tiền mặt' ShowTitle='False'
	Style="z-index:677; position: absolute; left: 361px; top: 181px;"
	CheckBoxInput_TabIndex='108'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkitem04'></FrmFieldKeys>
</cc1:DscCheckBox>
</div>
<cc1:DscTextBox id='chkother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 523px; TOP: 184px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 56px; TOP: 340px;"
	TxtInput_TabIndex='111' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='80px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 621px; TOP: 370px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea2' runat='server' title='內容02' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 56px; TOP: 434px;"
	TxtInput_TabIndex='113' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='80px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 621px; TOP: 460px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype01' runat='server' title='主類別01' ShowTitle='False'
	style="Z-INDEX: 668; POSITION: absolute; LEFT: 469px; TOP: 354px;"
	TxtInput_TabIndex='115' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='opentype01'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='textarea3' runat='server' title='內容03' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 56px; TOP: 521px;"
	TxtInput_TabIndex='115' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='80px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 621px; TOP: 550px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='openitem01' runat='server' title='子類別01' ShowTitle='False'
	style="Z-INDEX: 667; POSITION: absolute; LEFT: 469px; TOP: 385px;"
	TxtInput_TabIndex='116' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='openitem01'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='opentype02' runat='server' title='主類別02' ShowTitle='False'
	style="Z-INDEX: 671; POSITION: absolute; LEFT: 468px; TOP: 444px;"
	TxtInput_TabIndex='119' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='opentype02'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem02' runat='server' title='子類別02' ShowTitle='False'
	style="Z-INDEX: 672; POSITION: absolute; LEFT: 468px; TOP: 477px;"
	TxtInput_TabIndex='120' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='openitem02'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 621px; TOP: 611px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt01' runat='server' Text='發票' ShowTitle='False'
	Style="z-index:693; position: absolute; left: 58px; top: 641px;"
	CheckBoxInput_TabIndex='122'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkatt01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv01' runat='server' title='發票張數' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 189px; TOP: 639px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='inv01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='26px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype03' runat='server' title='主類別03' ShowTitle='False'
	style="Z-INDEX: 670; POSITION: absolute; LEFT: 469px; TOP: 536px;"
	TxtInput_TabIndex='123' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='opentype03'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscCheckBox ID='chkatt02' runat='server' Text='收據' ShowTitle='False'
	Style="z-index:682; position: absolute; left: 264px; top: 643px;"
	CheckBoxInput_TabIndex='124'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkatt02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscOpenQuery id='openitem03' runat='server' title='子類別03' ShowTitle='False'
	style="Z-INDEX: 669; POSITION: absolute; LEFT: 469px; TOP: 564px;"
	TxtInput_TabIndex='124' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='openitem03'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='inv02' runat='server' title='數據張數' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 387px; TOP: 641px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='inv02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt04' runat='server' Text='驗收單' ShowTitle='False'
	Style="z-index:692; position: absolute; left: 58px; top: 677px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='27px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkatt04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkatt05' runat='server' Text='進貨單' ShowTitle='False'
	Style="z-index:683; position: absolute; left: 264px; top: 678px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkatt05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='orderno' runat='server' title='訂購單號' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 619px; TOP: 273px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='orderno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='attother' runat='server' title='其他附件' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 151px; TOP: 713px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='attother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='106px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkitem05' runat='server' Text='其他 Khác' ShowTitle='False'
	Style="z-index:673; position: absolute; left: 462px; top: 178px;"
	CheckBoxInput_TabIndex='132'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkitem05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='other' runat='server' Text='其他附件' ShowTitle='False'
	Style="z-index:694; position: absolute; left: 58px; top: 711px;"
	CheckBoxInput_TabIndex='137'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='31px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='other'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='payother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 411px; TOP: 229px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='payother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscOpenQuery id='SenderID' runat='server' title='SenderID' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 32px; TOP: 41px;"
	TxtInput_TabIndex='139' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='SenderID'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscOpenQuery id='SuperID' runat='server' title='SuperID' ShowTitle='False'
	style="Z-INDEX: 699; POSITION: absolute; LEFT: 33px; TOP: 8px;"
	TxtInput_TabIndex='140' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='SuperID'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscDateAssistant2 ID='paydate' runat='server' Title='付款日期' ShowTitle='False'
	style="POSITION: absolute; left: 143px; top: 104px; z-index: 688;" 
	TxtInput_TabIndex='141' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='90px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='paydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDropDownList ID='curr' runat='server' Title='幣別' ShowTitle='False'
	Style="z-index:665; position: absolute; left: 562px; top: 615px;"
	DDLInput_TabIndex='143'>
	<Items>
		<asp:ListItem Selected='True' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='curr'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMFPAYMVEUS02_curr' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='useyear' runat='server' title='使用年限' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 134px; TOP: 270px;"
	TxtInput_TabIndex='144'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='useyear'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='29px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='chkven' runat='server' title='冠志廠(CN)' ShowTitle='False'
	style="display:none;Z-INDEX:679; POSITION: absolute; LEFT: 317px; TOP: 267px;">
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chkven'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chkven_ctrolRadio0' runat='server' GroupName='chkven' Text='' Value='0' style='position:absolute;top:267px;left:317px;z-index:679;'/>
<asp:RadioButton ID='chkven_ctrolRadio1' runat='server' GroupName='chkven' Text='' Value='1' style='position:absolute;top:267px;left:404px;z-index:679;'/>
<cc1:DscTextBox id='chpay' runat='server' title='現金 Tiền mặt' ShowTitle='False'
	style="display:none;Z-INDEX:679; POSITION: absolute; LEFT: 133px; TOP: 233px;">
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS02' BOID='ODMFPAYMVEUS02' FieldName='chpay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chpay_ctrolRadio0' runat='server' GroupName='chpay' Text='' Value='0' style='position:absolute;top:233px;left:133px;z-index:679;'/>
<asp:RadioButton ID='chpay_ctrolRadio1' runat='server' GroupName='chpay' Text='' Value='1' style='position:absolute;top:227px;left:237px;z-index:679;'/>
<asp:RadioButton ID='chpay_ctrolRadio2' runat='server' GroupName='chpay' Text='' Value='2' style='position:absolute;top:227px;left:344px;z-index:679;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMFPAYMVEUSDV2.png" id="Head01_file_1" runat="server" width="792" height="778" />
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
<script src="ODMFPAYMVEUS02.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
