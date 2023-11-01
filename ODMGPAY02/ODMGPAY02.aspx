<%@ Page language="c#" CodeFile="ODMGPAY02.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMGPAY02" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMGPAY02FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMGPAY02" FrmDefineKeys-BOID="ODMGPAY02"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="725px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='725px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 725px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmgpay02001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='odmgpay02001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmgpay02002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='odmgpay02002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='label2' runat='server' Style="z-index:688; position: absolute; left: 101px; top: 69px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='安規費用' Width='76px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label3' runat='server' Style="z-index:679; position: absolute; left: 211px; top: 69px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='工廠材料採購' Width='100px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label4' runat='server' Style="z-index:672; position: absolute; left: 337px; top: 69px; vertical-align:middle;font-family:'Arial';font-size:12pt;font-weight:bold;" Text='工廠其他費用' Width='100px' Height='22px'></cc1:DscLabel>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 579px; top: 64px; z-index: 655;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='103px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 77px; TOP: 91px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='128px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='請款人' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 331px; TOP: 91px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='111px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee' runat='server' title='受款人' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 570px; TOP: 91px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='payee'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='chkother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 455px; TOP: 121px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 74px; TOP: 222px;"
	TxtInput_TabIndex='111' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='100px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:653; POSITION: absolute; LEFT: 609px; TOP: 261px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:652; POSITION: absolute; LEFT: 609px; TOP: 370px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea3' runat='server' title='內容03' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 74px; TOP: 434px;"
	TxtInput_TabIndex='115' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='60px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:651; POSITION: absolute; LEFT: 609px; TOP: 451px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea4' runat='server' title='內容04' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 74px; TOP: 500px;"
	TxtInput_TabIndex='117' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='textarea4'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='60px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:650; POSITION: absolute; LEFT: 609px; TOP: 518px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:649; POSITION: absolute; LEFT: 609px; TOP: 565px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='inv01' runat='server' title='發票張數' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 129px; TOP: 589px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='inv01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='26px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='inv02' runat='server' title='數據張數' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 241px; TOP: 589px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='inv02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='orderno' runat='server' title='訂購單號' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 572px; TOP: 173px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='orderno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='attother' runat='server' title='其他附件' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 143px; TOP: 645px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='attother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='106px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='other' runat='server' Text='其他附件' ShowTitle='False'
	Style="z-index:693; position: absolute; left: 75px; top: 648px;"
	CheckBoxInput_TabIndex='137'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='other'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='payother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:654; POSITION: absolute; LEFT: 588px; TOP: 146px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='payother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscOpenQuery id='authorID' runat='server' title='authorID' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 32px; TOP: 35px;"
	TxtInput_TabIndex='139' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='authorID'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscOpenQuery id='SuperID' runat='server' title='SuperID' ShowTitle='False'
	style="Z-INDEX: 699; POSITION: absolute; LEFT: 33px; TOP: 8px;"
	TxtInput_TabIndex='140' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='SuperID'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscCheckBox ID='chkkind01' runat='server' Text='一般費用' ShowTitle='False'
	Style="z-index:689; position: absolute; left: 78px; top: 119px;"
	CheckBoxInput_TabIndex='141'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkkind01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkkind02' runat='server' Text='資產' ShowTitle='False'
	Style="z-index:683; position: absolute; left: 164px; top: 119px;"
	CheckBoxInput_TabIndex='142'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkkind02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkkind03' runat='server' Text='原物料' ShowTitle='False'
	Style="z-index:678; position: absolute; left: 235px; top: 119px;"
	CheckBoxInput_TabIndex='143'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkkind03'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkkind04' runat='server' Text='零用金' ShowTitle='False'
	Style="z-index:675; position: absolute; left: 315px; top: 119px;"
	CheckBoxInput_TabIndex='144'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkkind04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkkind05' runat='server' Text='其他' ShowTitle='False'
	Style="z-index:670; position: absolute; left: 398px; top: 119px;"
	CheckBoxInput_TabIndex='145'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkkind05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkpay01' runat='server' Text='現金' ShowTitle='False'
	Style="z-index:687; position: absolute; left: 108px; top: 146px;"
	CheckBoxInput_TabIndex='146'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkpay01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkpay02' runat='server' Text='訂金' ShowTitle='False'
	Style="z-index:680; position: absolute; left: 196px; top: 146px;"
	CheckBoxInput_TabIndex='147'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkpay02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='txtord' runat='server' title='訂金費用' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 265px; TOP: 144px;"
	TxtInput_TabIndex='148'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='txtord'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpayday' runat='server' title='尾天天數' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 369px; TOP: 144px;"
	TxtInput_TabIndex='149'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='txtpayday'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkpay03' runat='server' Text='月結' ShowTitle='False'
	Style="z-index:669; position: absolute; left: 447px; top: 146px;"
	CheckBoxInput_TabIndex='150'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkpay03'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkpay04' runat='server' Text='其他' ShowTitle='False'
	Style="z-index:659; position: absolute; left: 526px; top: 146px;"
	CheckBoxInput_TabIndex='151'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkpay04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkadd01' runat='server' Text='發票' ShowTitle='False'
	Style="z-index:692; position: absolute; left: 75px; top: 590px;"
	CheckBoxInput_TabIndex='154'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkadd01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkadd02' runat='server' Text='收據' ShowTitle='False'
	Style="z-index:681; position: absolute; left: 187px; top: 590px;"
	CheckBoxInput_TabIndex='155'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkadd02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='textarea2' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 74px; TOP: 328px;"
	TxtInput_TabIndex='156' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='100px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkadd04' runat='server' Text='驗收' ShowTitle='False'
	Style="z-index:691; position: absolute; left: 75px; top: 618px;"
	CheckBoxInput_TabIndex='157'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='20px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkadd04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkadd05' runat='server' Text='進貨單' ShowTitle='False'
	Style="z-index:682; position: absolute; left: 164px; top: 618px;"
	CheckBoxInput_TabIndex='158'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='19px' Height='23px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='chkadd05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='useyear' runat='server' title='使用年限' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 126px; TOP: 170px;"
	TxtInput_TabIndex='161'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='useyear'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='31px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='usedetp' runat='server' title='使用單位' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 320px; TOP: 173px;"
	TxtInput_TabIndex='162'>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='usedetp'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='108px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype01' runat='server' title='opentype01' ShowTitle='False'
	style="Z-INDEX: 663; POSITION: absolute; LEFT: 491px; TOP: 251px;"
	TxtInput_TabIndex='163' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='40px' Height='24px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='opentype01'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem01' runat='server' title='openitem01' ShowTitle='False'
	style="Z-INDEX: 667; POSITION: absolute; LEFT: 491px; TOP: 277px;"
	TxtInput_TabIndex='164' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='40px' Height='24px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='openitem01'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='opentype02' runat='server' title='opentype02' ShowTitle='False'
	style="Z-INDEX: 662; POSITION: absolute; LEFT: 491px; TOP: 351px;"
	TxtInput_TabIndex='165' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='40px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='opentype02'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem02' runat='server' title='openitem02' ShowTitle='False'
	style="Z-INDEX: 666; POSITION: absolute; LEFT: 491px; TOP: 378px;"
	TxtInput_TabIndex='166' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='40px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='openitem02'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='opentype03' runat='server' title='opentype03' ShowTitle='False'
	style="Z-INDEX: 661; POSITION: absolute; LEFT: 491px; TOP: 440px;"
	TxtInput_TabIndex='167' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='opentype03'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem03' runat='server' title='openitem03' ShowTitle='False'
	style="Z-INDEX: 665; POSITION: absolute; LEFT: 491px; TOP: 467px;"
	TxtInput_TabIndex='168' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='openitem03'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem04' runat='server' title='openitem04' ShowTitle='False'
	style="Z-INDEX: 664; POSITION: absolute; LEFT: 491px; TOP: 534px;"
	TxtInput_TabIndex='169' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='40px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='openitem04'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='opentype04' runat='server' title='opentype04' ShowTitle='False'
	style="Z-INDEX: 660; POSITION: absolute; LEFT: 491px; TOP: 510px;"
	TxtInput_TabIndex='170' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='opentype04'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscDropDownList ID='curr' runat='server' Title='幣別' ShowTitle='False'
	Style="z-index:658; position: absolute; left: 554px; top: 567px;"
	DDLInput_TabIndex='171'>
	<Items>
		<asp:ListItem Selected='True' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
		<asp:ListItem Selected='False' Value='EUR'>EUR</asp:ListItem>
		<asp:ListItem Selected='False' Value='GBP'>GBP</asp:ListItem>
		<asp:ListItem Selected='False' Value='CHF'>CHF</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='52px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='curr'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMGPAY02_curr' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='kind' runat='server' title='安規費用' ShowTitle='False'
	style="display:none;Z-INDEX:658; POSITION: absolute; LEFT: 80px; TOP: 71px;">
	<FrmFieldKeys FrmID='FrmODMGPAY02' BOID='ODMGPAY02' FieldName='kind'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='kind_ctrolRadio0' runat='server' GroupName='kind' Text='' Value='0' style='position:absolute;top:71px;left:80px;z-index:658;'/>
<asp:RadioButton ID='kind_ctrolRadio1' runat='server' GroupName='kind' Text='' Value='1' style='position:absolute;top:70px;left:189px;z-index:658;'/>
<asp:RadioButton ID='kind_ctrolRadio2' runat='server' GroupName='kind' Text='' Value='2' style='position:absolute;top:70px;left:313px;z-index:658;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="msl請款V2.png" id="Head01_file_1" runat="server" width="748" height="690" />
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
<script src="ODMGPAY02.js?NoCache=202207291705" type="text/javascript"></script>
</asp:Content>
