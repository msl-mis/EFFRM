<%@ Page language="c#" CodeFile="ODMTEST.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMTEST" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMTESTFormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMTEST" FrmDefineKeys-BOID="ODMTEST"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="727px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='727px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 727px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmtest001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='odmtest001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmtest002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='odmtest002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='label1' runat='server' Style="z-index:677; position: absolute; left: 387px; top: 517px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='支出類別' Width='75px' Height='26px'></cc1:DscLabel>
<cc1:DscLabel ID='label2' runat='server' Style="z-index:667; position: absolute; left: 552px; top: 517px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='子項' Width='52px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label4' runat='server' Style="z-index:676; position: absolute; left: 388px; top: 546px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='採購單號' Width='80px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label5' runat='server' Style="z-index:675; position: absolute; left: 389px; top: 571px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='使用單位' Width='73px' Height='22px'></cc1:DscLabel>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 110px; TOP: 131px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='131px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='請款人' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 338px; TOP: 132px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='111px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee' runat='server' title='受款人' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 579px; TOP: 130px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='payee'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox1' runat='server' Text='checkbox1' ShowTitle='False'
	Style="z-index:689; position: absolute; left: 117px; top: 168px;"
	CheckBoxInput_TabIndex='105'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='checkbox1'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox2' runat='server' Text='checkbox2' ShowTitle='False'
	Style="z-index:685; position: absolute; left: 206px; top: 166px;"
	CheckBoxInput_TabIndex='106'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='checkbox2'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox3' runat='server' Text='checkbox3' ShowTitle='False'
	Style="z-index:682; position: absolute; left: 267px; top: 165px;"
	CheckBoxInput_TabIndex='107'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='23px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='checkbox3'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox4' runat='server' Text='checkbox4' ShowTitle='False'
	Style="z-index:678; position: absolute; left: 350px; top: 166px;"
	CheckBoxInput_TabIndex='108'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='20px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='checkbox4'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox5' runat='server' Text='checkbox5' ShowTitle='False'
	Style="z-index:673; position: absolute; left: 431px; top: 165px;"
	CheckBoxInput_TabIndex='109'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='checkbox5'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='chkother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 492px; TOP: 167px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='chkother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 110px; TOP: 266px;"
	TxtInput_TabIndex='111' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 574px; TOP: 272px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea2' runat='server' title='內容02' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 110px; TOP: 306px;"
	TxtInput_TabIndex='113' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 574px; TOP: 312px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea3' runat='server' title='內容03' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 110px; TOP: 346px;"
	TxtInput_TabIndex='115' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 574px; TOP: 351px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea4' runat='server' title='內容04' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 110px; TOP: 386px;"
	TxtInput_TabIndex='117' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='textarea4'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 574px; TOP: 393px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea5' runat='server' title='內容05' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 110px; TOP: 426px;"
	TxtInput_TabIndex='119' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='textarea5'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='400px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 574px; TOP: 433px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 574px; TOP: 472px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox6' runat='server' Text='checkbox6' ShowTitle='False'
	Style="z-index:693; position: absolute; left: 110px; top: 509px;"
	CheckBoxInput_TabIndex='122'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='checkbox6'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv01' runat='server' title='發票張數' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 165px; TOP: 506px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='inv01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='26px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox7' runat='server' Text='checkbox7' ShowTitle='False'
	Style="z-index:683; position: absolute; left: 221px; top: 506px;"
	CheckBoxInput_TabIndex='124'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='checkbox7'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv02' runat='server' title='數據張數' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 276px; TOP: 506px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='inv02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox8' runat='server' Text='checkbox8' ShowTitle='False'
	Style="z-index:692; position: absolute; left: 110px; top: 546px;"
	CheckBoxInput_TabIndex='126'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='checkbox8'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox9' runat='server' Text='checkbox9' ShowTitle='False'
	Style="z-index:691; position: absolute; left: 110px; top: 578px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='27px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='checkbox9'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox10' runat='server' Text='checkbox10' ShowTitle='False'
	Style="z-index:686; position: absolute; left: 198px; top: 580px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='checkbox10'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='orderno' runat='server' title='訂購單號' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 217px; TOP: 542px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='orderno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='attother' runat='server' title='其他附件' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 183px; TOP: 617px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='attother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='106px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='other' runat='server' Text='其他附件' ShowTitle='False'
	Style="z-index:690; position: absolute; left: 110px; top: 615px;"
	CheckBoxInput_TabIndex='137'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='31px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='other'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='payother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 307px; TOP: 200px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='payother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='seltype' runat='server' Title='支出類型' ShowTitle='False'
	Style="z-index:671; position: absolute; left: 459px; top: 519px;"
	DDLInput_TabIndex='139'>
	<Items>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='86px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='seltype'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMTEST_seltype' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='selitem' runat='server' Title='類別子項' ShowTitle='False'
	Style="z-index:658; position: absolute; left: 591px; top: 519px;"
	DDLInput_TabIndex='140'>
	<Items>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='81px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='selitem'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMTEST_selitem' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='purorder' runat='server' title='採購單號' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 461px; TOP: 545px;"
	TxtInput_TabIndex='143'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='purorder'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='119px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 565px; top: 95px; z-index: 666;" 
	TxtInput_TabIndex='144' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='101px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDropDownList ID='selusefactor' runat='server' Title='使用單位' ShowTitle='False'
	Style="z-index:672; position: absolute; left: 456px; top: 573px;"
	DDLInput_TabIndex='145'>
	<Items>
		<asp:ListItem Selected='False' Value='越南廠'>越南廠</asp:ListItem>
		<asp:ListItem Selected='False' Value='冠志廠'>冠志廠</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='81px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='selusefactor'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMTEST_selusefactor' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='itemname' runat='server' title='子項名稱' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 600px; TOP: 607px;"
	TxtInput_TabIndex='148'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='itemname'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='typename' runat='server' title='typename' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 489px; TOP: 609px;"
	TxtInput_TabIndex='149'>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='typename'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='63px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype' runat='server' title='類別開窗' ShowTitle='False'
	style="Z-INDEX: 674; POSITION: absolute; LEFT: 404px; TOP: 606px;"
	TxtInput_TabIndex='150' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='75px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='opentype'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='chpay' runat='server' title='現金支付' ShowTitle='False'
	style="display:none;Z-INDEX:674; POSITION: absolute; LEFT: 117px; TOP: 205px;">
	<FrmFieldKeys FrmID='FrmODMTEST' BOID='ODMTEST' FieldName='chpay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chpay_ctrolRadio0' runat='server' GroupName='chpay' Text='' Value='0' style='position:absolute;top:205px;left:117px;z-index:674;'/>
<asp:RadioButton ID='chpay_ctrolRadio1' runat='server' GroupName='chpay' Text='' Value='1' style='position:absolute;top:204px;left:181px;z-index:674;'/>
<asp:RadioButton ID='chpay_ctrolRadio2' runat='server' GroupName='chpay' Text='' Value='2' style='position:absolute;top:204px;left:253px;z-index:674;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMFPAYCN02.png" id="Head01_file_1" runat="server" width="749" height="692" />
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
<script src="ODMTEST.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
