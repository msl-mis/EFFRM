<%@ Page language="c#" CodeFile="ODMFPAYMVEUS01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMFPAYMVEUS01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMFPAYMVEUS01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMFPAYMVEUS01" FrmDefineKeys-BOID="ODMFPAYMVEUS01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="835px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='835px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 835px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmfpaymveus01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='odmfpaymveus01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmfpaymveus01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='odmfpaymveus01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 583px; top: 114px; z-index: 669;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='103px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 97px; TOP: 150px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='125px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='請款人' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 348px; TOP: 150px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='111px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee' runat='server' title='受款人' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 567px; TOP: 151px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='payee'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscCheckBox ID='chkitem01' runat='server' Text='一般費用 Chi phí thường' ShowTitle='False'
	Style="z-index:668; position: absolute; left: 709px; top: 169px;"
	CheckBoxInput_TabIndex='105'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkitem01'></FrmFieldKeys>
</cc1:DscCheckBox>
</div>
<div style="display:none;">
<cc1:DscCheckBox ID='chkitem02' runat='server' Text='資產 Tài sản' ShowTitle='False'
	Style="z-index:663; position: absolute; left: 787px; top: 168px;"
	CheckBoxInput_TabIndex='106'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkitem02'></FrmFieldKeys>
</cc1:DscCheckBox>
</div>
<div style="display:none;">
<cc1:DscCheckBox ID='chkitem03' runat='server' Text='原物料 NVL' ShowTitle='False'
	Style="z-index:665; position: absolute; left: 732px; top: 173px;"
	CheckBoxInput_TabIndex='107'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkitem03'></FrmFieldKeys>
</cc1:DscCheckBox>
</div>
<div style="display:none;">
<cc1:DscCheckBox ID='chkitem04' runat='server' Text='零用金 Tiền mặt' ShowTitle='False'
	Style="z-index:664; position: absolute; left: 761px; top: 172px;"
	CheckBoxInput_TabIndex='108'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkitem04'></FrmFieldKeys>
</cc1:DscCheckBox>
</div>
<div style="display:none;">
<cc1:DscCheckBox ID='chkitem05' runat='server' Text='其他 Khác -' ShowTitle='False'
	Style="z-index:660; position: absolute; left: 809px; top: 173px;"
	CheckBoxInput_TabIndex='109'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkitem05'></FrmFieldKeys>
</cc1:DscCheckBox>
</div>
<cc1:DscTextBox id='chkother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 562px; TOP: 201px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 93px; TOP: 353px;"
	TxtInput_TabIndex='111' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='435px' Height='80px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 554px; TOP: 384px; width: 130px;"
	TxtInput_TabIndex='112' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea2' runat='server' title='內容02' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 93px; TOP: 440px;"
	TxtInput_TabIndex='113' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='435px' Height='70px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 554px; TOP: 460px; width:130px;"
	TxtInput_TabIndex='114' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea3' runat='server' title='內容03' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 93px; TOP: 518px;"
	TxtInput_TabIndex='115' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='435px' Height='75px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 554px; TOP: 542px;width: 130px;"
	TxtInput_TabIndex='116' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='textarea4' runat='server' title='內容04' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 724px; TOP: 377px;"
	TxtInput_TabIndex='117' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='textarea4'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='425px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 554px; TOP: 547px;width: 130px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscTextBox id='textarea5' runat='server' title='內容05' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 718px; TOP: 430px;"
	TxtInput_TabIndex='119' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='textarea5'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='425px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 554px; TOP: 579px;width: 130px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 554px; TOP: 601px;width: 130px;"
	TxtInput_TabIndex='121' TextAlign="Right">
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt01' runat='server' Text='發票' ShowTitle='False'
	Style="z-index:692; position: absolute; left: 88px; top: 635px;"
	CheckBoxInput_TabIndex='122'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkatt01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv01' runat='server' title='發票張數' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 152px; TOP: 631px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='inv01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='26px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt02' runat='server' Text='收據' ShowTitle='False'
	Style="z-index:683; position: absolute; left: 219px; top: 637px;"
	CheckBoxInput_TabIndex='124'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkatt02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv02' runat='server' title='數據張數' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 277px; TOP: 632px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='inv02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt03' runat='server' Text='訂購單' ShowTitle='False'
	Style="z-index:694; position: absolute; left: 88px; top: 671px;"
	CheckBoxInput_TabIndex='126'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkatt03'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkatt04' runat='server' Text='驗收單' ShowTitle='False'
	Style="z-index:693; position: absolute; left: 88px; top: 702px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='27px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkatt04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkatt05' runat='server' Text='進貨單' ShowTitle='False'
	Style="z-index:685; position: absolute; left: 169px; top: 702px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chkatt05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='orderno' runat='server' title='訂購單號' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 197px; TOP: 665px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='orderno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='attother' runat='server' title='其他附件' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 146px; TOP: 729px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='attother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='106px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='other' runat='server' Text='其他附件' ShowTitle='False'
	Style="z-index:695; position: absolute; left: 88px; top: 736px;"
	CheckBoxInput_TabIndex='137'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='31px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='other'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='payother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 372px; TOP: 261px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='payother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscOpenQuery id='empl1' runat='server' title='empl1' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 32px; TOP: 41px;"
	TxtInput_TabIndex='139' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='empl1'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscOpenQuery id='empl2' runat='server' title='empl2' ShowTitle='False'
	style="Z-INDEX: 699; POSITION: absolute; LEFT: 33px; TOP: 8px;"
	TxtInput_TabIndex='140' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='empl2'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscDateAssistant2 ID='paydate' runat='server' Title='付款日期' ShowTitle='False'
	style="POSITION: absolute; left: 154px; top: 112px; z-index: 686;" 
	TxtInput_TabIndex='141' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='90px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='paydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDropDownList ID='cur01' runat='server' Title='幣別01' ShowTitle='False'
	Style="z-index:679; position: absolute; left: 564px; top: 647px;"
	DDLInput_TabIndex='142' Visible="False">
	<Items>
		<asp:ListItem Selected='True' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='cur01'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMFPAYMVEUS01_cur01' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='cur03' runat='server' Title='幣別03' ShowTitle='False'
	Style="z-index:677; position: absolute; left: 433px; top: 650px;"
	DDLInput_TabIndex='142' Visible="False">
	<Items>
		<asp:ListItem Selected='True' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='cur03'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMFPAYMVEUS01_cur03' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='cur02' runat='server' Title='幣別02' ShowTitle='False'
	Style="z-index:678; position: absolute; left: 498px; top: 649px;"
	DDLInput_TabIndex='143' Visible="False">
	<Items>
		<asp:ListItem Selected='True' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='cur02'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMFPAYMVEUS01_cur02' />
</cc1:DscDropDownList>
<div style="display:none;">
<cc1:DscDropDownList ID='cur04' runat='server' Title='幣別04' ShowTitle='False'
	Style="z-index:662; position: absolute; left: 796px; top: 549px;"
	DDLInput_TabIndex='143'>
	<Items>
		<asp:ListItem Selected='True' Value='VND'>VND</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='cur04'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMFPAYMVEUS01_cur04' />
</cc1:DscDropDownList>
</div>
<div style="display:none;">
<cc1:DscDropDownList ID='cur05' runat='server' Title='幣別05' ShowTitle='False'
	Style="z-index:661; position: absolute; left: 796px; top: 579px;"
	DDLInput_TabIndex='143'>
	<Items>
		<asp:ListItem Selected='True' Value='VND'>VND</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='cur05'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMFPAYMVEUS01_cur05' />
</cc1:DscDropDownList>
</div>
<cc1:DscDropDownList ID='curr' runat='server' Title='幣別' ShowTitle='False'
	Style="z-index:676; position: absolute; left: 490px; top: 604px; height: 24px;"
	DDLInput_TabIndex='143'>
	<Items>
		<asp:ListItem Selected='True' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='curr'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMFPAYMVEUS01_curr' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='chpay' runat='server' title='現金 Tiền mặt' ShowTitle='False'
	style="display:none;Z-INDEX:690; POSITION: absolute; LEFT: 97px; TOP: 265px;">
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='chpay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chpay_ctrolRadio0' runat='server' GroupName='chpay' Text='' Value='0' style='position:absolute;top:265px;left:97px;z-index:690;'/>
<asp:RadioButton ID='chpay_ctrolRadio1' runat='server' GroupName='chpay' Text='' Value='1' style='position:absolute;top:265px;left:200px;z-index:690;'/>
<asp:RadioButton ID='chpay_ctrolRadio2' runat='server' GroupName='chpay' Text='' Value='2' style='position:absolute;top:265px;left:316px;z-index:690;'/>
<cc1:DscTextBox id='rdtc' runat='server' title='一般費用 Chi phí thường' ShowTitle='False'
	style="display:none;Z-INDEX:690; POSITION: absolute; LEFT: 97px; TOP: 202px;">
	<FrmFieldKeys FrmID='FrmODMFPAYMVEUS01' BOID='ODMFPAYMVEUS01' FieldName='rdtc'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rdtc_ctrolRadio0' runat='server' GroupName='rdtc' Text='' Value='0' style='position:absolute;top:202px;left:97px;z-index:690;'/>
<asp:RadioButton ID='rdtc_ctrolRadio1' runat='server' GroupName='rdtc' Text='' Value='1' style='position:absolute;top:200px;left:227px;z-index:690;'/>
<asp:RadioButton ID='rdtc_ctrolRadio2' runat='server' GroupName='rdtc' Text='' Value='2' style='position:absolute;top:200px;left:308px;z-index:690;'/>
<asp:RadioButton ID='rdtc_ctrolRadio3' runat='server' GroupName='rdtc' Text='' Value='3' style='position:absolute;top:200px;left:404px;z-index:690;'/>
<asp:RadioButton ID='rdtc_ctrolRadio4' runat='server' GroupName='rdtc' Text='' Value='4' style='position:absolute;top:200px;left:501px;z-index:690;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMFPAYMVEUS01.png" id="Head01_file_1" runat="server" width="736" height="800" />
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
    <!--三位一撇-->
    <script src="../../_Common/OEM/JS/OEMUtils.js"></script>
<script src="ODMFPAYMVEUS01.js?NoCache=20230412007" type="text/javascript"></script>
</asp:Content>
