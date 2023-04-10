<%@ Page language="c#" CodeFile="ODMTESTV02.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMTESTV02" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMTESTV02FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMTESTV02" FrmDefineKeys-BOID="ODMTESTV02"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="724px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='724px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 724px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmtestv02001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='odmtestv02001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmtestv02002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='odmtestv02002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='label2' runat='server' Style="z-index:657; position: absolute; left: 555px; top: 192px; vertical-align:middle;font-family:'Arial';font-size:12pt;font-weight:bold;" Text='冠志廠' Width='59px' Height='23px'></cc1:DscLabel>
<cc1:DscLabel ID='label3' runat='server' Style="z-index:649; position: absolute; left: 623px; top: 192px; vertical-align:middle;font-family:'Arial';font-size:12pt;font-weight:bold;" Text='越南廠' Width='56px' Height='25px'></cc1:DscLabel>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 535px; top: 75px; z-index: 658;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='103px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 109px; TOP: 103px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='請款人' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 347px; TOP: 103px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee' runat='server' title='受款人' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 556px; TOP: 103px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='payee'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkitem01' runat='server' Text='一般費用' ShowTitle='False'
	Style="z-index:684; position: absolute; left: 109px; top: 131px;"
	CheckBoxInput_TabIndex='105'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkitem01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem02' runat='server' Text='資產' ShowTitle='False'
	Style="z-index:680; position: absolute; left: 199px; top: 133px;"
	CheckBoxInput_TabIndex='106'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkitem02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem03' runat='server' Text='原物料' ShowTitle='False'
	Style="z-index:676; position: absolute; left: 263px; top: 132px;"
	CheckBoxInput_TabIndex='107'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='23px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkitem03'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem04' runat='server' Text='零用金' ShowTitle='False'
	Style="z-index:671; position: absolute; left: 350px; top: 133px;"
	CheckBoxInput_TabIndex='108'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='20px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkitem04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkitem05' runat='server' Text='其他-' ShowTitle='False'
	Style="z-index:668; position: absolute; left: 427px; top: 130px;"
	CheckBoxInput_TabIndex='109'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkitem05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='chkother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 496px; TOP: 134px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 109px; TOP: 247px;"
	TxtInput_TabIndex='111' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='415px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:654; POSITION: absolute; LEFT: 581px; TOP: 255px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea2' runat='server' title='內容02' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 110px; TOP: 288px;"
	TxtInput_TabIndex='113' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='415px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:653; POSITION: absolute; LEFT: 581px; TOP: 293px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea3' runat='server' title='內容03' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 109px; TOP: 326px;"
	TxtInput_TabIndex='115' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='415px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:652; POSITION: absolute; LEFT: 581px; TOP: 334px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea4' runat='server' title='內容04' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 110px; TOP: 365px;"
	TxtInput_TabIndex='117' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='textarea4'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='415px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:651; POSITION: absolute; LEFT: 581px; TOP: 373px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea5' runat='server' title='內容05' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 109px; TOP: 407px;"
	TxtInput_TabIndex='119' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='textarea5'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='415px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:650; POSITION: absolute; LEFT: 581px; TOP: 412px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 579px; TOP: 450px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt01' runat='server' Text='發票' ShowTitle='False'
	Style="z-index:690; position: absolute; left: 107px; top: 483px;"
	CheckBoxInput_TabIndex='122'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkatt01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv01' runat='server' title='發票張數' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 162px; TOP: 481px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='inv01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='26px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt02' runat='server' Text='收據' ShowTitle='False'
	Style="z-index:677; position: absolute; left: 212px; top: 483px;"
	CheckBoxInput_TabIndex='124'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkatt02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv02' runat='server' title='數據張數' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 273px; TOP: 480px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='inv02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkatt03' runat='server' Text='訂購單' ShowTitle='False'
	Style="z-index:689; position: absolute; left: 107px; top: 520px;"
	CheckBoxInput_TabIndex='126'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkatt03'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkatt04' runat='server' Text='驗收單' ShowTitle='False'
	Style="z-index:688; position: absolute; left: 107px; top: 554px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='24px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkatt04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkatt05' runat='server' Text='進貨單' ShowTitle='False'
	Style="z-index:681; position: absolute; left: 191px; top: 553px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkatt05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='orderno' runat='server' title='訂購單號' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 210px; TOP: 523px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='orderno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='attother' runat='server' title='其他附件' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 173px; TOP: 590px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='attother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='106px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='other' runat='server' Text='其他附件' ShowTitle='False'
	Style="z-index:695; position: absolute; left: 107px; top: 590px;"
	CheckBoxInput_TabIndex='137'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='31px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='other'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='payother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 295px; TOP: 161px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='payother'></FrmFieldKeys>
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
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='empl1'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscOpenQuery id='empl2' runat='server' title='empl2' ShowTitle='False'
	style="Z-INDEX: 699; POSITION: absolute; LEFT: 33px; TOP: 8px;"
	TxtInput_TabIndex='140' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='empl2'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscDropDownList ID='curr01' runat='server' Title='幣別01' ShowTitle='False'
	Style="z-index:666; position: absolute; left: 525px; top: 257px;"
	DDLInput_TabIndex='143'>
	<Items>
		<asp:ListItem Selected='True' Value='RMB'>RMB</asp:ListItem>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='curr01'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMTESTV02_curr01' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='curr02' runat='server' Title='幣別02' ShowTitle='False'
	Style="z-index:665; position: absolute; left: 525px; top: 295px;"
	DDLInput_TabIndex='144'>
	<Items>
		<asp:ListItem Selected='True' Value='RMB'>RMB</asp:ListItem>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='curr02'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMTESTV02_curr02' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='curr03' runat='server' Title='幣別03' ShowTitle='False'
	Style="z-index:664; position: absolute; left: 525px; top: 336px;"
	DDLInput_TabIndex='145'>
	<Items>
		<asp:ListItem Selected='True' Value='RMB'>RMB</asp:ListItem>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='curr03'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMTESTV02_curr03' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='curr04' runat='server' Title='幣別04' ShowTitle='False'
	Style="z-index:663; position: absolute; left: 525px; top: 375px;"
	DDLInput_TabIndex='146'>
	<Items>
		<asp:ListItem Selected='True' Value='RMB'>RMB</asp:ListItem>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='curr04'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMTESTV02_curr04' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='curr05' runat='server' Title='幣別05' ShowTitle='False'
	Style="z-index:661; position: absolute; left: 526px; top: 416px;"
	DDLInput_TabIndex='147'>
	<Items>
		<asp:ListItem Selected='True' Value='RMB'>RMB</asp:ListItem>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='curr05'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMTESTV02_curr05' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='curr06' runat='server' Title='幣別06' ShowTitle='False'
	Style="z-index:662; position: absolute; left: 525px; top: 454px;"
	DDLInput_TabIndex='148'>
	<Items>
		<asp:ListItem Selected='True' Value='RMB'>RMB</asp:ListItem>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='53px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='curr06'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMTESTV02_curr06' />
</cc1:DscDropDownList>
<div style="display:none;">
<cc1:DscTextBox id='typename' runat='server' title='類別名稱' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 534px; TOP: 648px;"
	TxtInput_TabIndex='150'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='typename'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='66px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscTextBox id='typename01' runat='server' title='typename' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 105px; TOP: 638px;"
	TxtInput_TabIndex='153'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='typename01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='300px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='itemname' runat='server' title='year' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 407px; TOP: 191px;"
	TxtInput_TabIndex='154'>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='itemname'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opentype' runat='server' title='opentype' ShowTitle='False'
	style="Z-INDEX: 696; POSITION: absolute; LEFT: 106px; TOP: 189px;"
	TxtInput_TabIndex='155' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='opentype'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='openitem' runat='server' title='openitem' ShowTitle='False'
	style="Z-INDEX: 678; POSITION: absolute; LEFT: 211px; TOP: 189px;"
	TxtInput_TabIndex='156' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='openitem'></FrmFieldKeys>
</cc1:DscOpenQuery>
<div style="display:none;">
<cc1:DscDropDownList ID='selven' runat='server' Title='使用單位' ShowTitle='False'
	Style="z-index:669; position: absolute; left: 421px; top: 638px;"
	DDLInput_TabIndex='157'>
	<Items>
		<asp:ListItem Selected='True' Value='冠志廠'>冠志廠</asp:ListItem>
		<asp:ListItem Selected='False' Value='越南廠'>越南廠</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='80px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='selven'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMTESTV02_selven' />
</cc1:DscDropDownList>
</div>
<div style="display:none;">
<cc1:DscCheckBox ID='chkprice' runat='server' Text='登錄price' ShowTitle='False'
	Style="z-index:673; position: absolute; left: 319px; top: 73px;"
	CheckBoxInput_TabIndex='158'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkprice'></FrmFieldKeys>
</cc1:DscCheckBox>
</div>
<cc1:DscTextBox id='chkven' runat='server' title='冠志廠' ShowTitle='False'
	style="display:none;Z-INDEX:660; POSITION: absolute; LEFT: 537px; TOP: 193px;">
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chkven'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chkven_ctrolRadio0' runat='server' GroupName='chkven' Text='' Value='0' style='position:absolute;top:193px;left:537px;z-index:660;'/>
<asp:RadioButton ID='chkven_ctrolRadio1' runat='server' GroupName='chkven' Text='' Value='1' style='position:absolute;top:193px;left:605px;z-index:660;'/>
<cc1:DscTextBox id='chpay' runat='server' title='現金支付' ShowTitle='False'
	style="display:none;Z-INDEX:660; POSITION: absolute; LEFT: 115px; TOP: 165px;">
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='chpay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chpay_ctrolRadio0' runat='server' GroupName='chpay' Text='' Value='0' style='position:absolute;top:165px;left:115px;z-index:660;'/>
<asp:RadioButton ID='chpay_ctrolRadio1' runat='server' GroupName='chpay' Text='' Value='1' style='position:absolute;top:163px;left:180px;z-index:660;'/>
<asp:RadioButton ID='chpay_ctrolRadio2' runat='server' GroupName='chpay' Text='' Value='2' style='position:absolute;top:162px;left:250px;z-index:660;'/>
<cc1:DscTextBox id='kind' runat='server' title='一般類別' ShowTitle='False'
	style="display:none;Z-INDEX:660; POSITION: absolute; LEFT: 87px; TOP: 77px;">
	<FrmFieldKeys FrmID='FrmODMTESTV02' BOID='ODMTESTV02' FieldName='kind'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='kind_ctrolRadio0' runat='server' GroupName='kind' Text='' Value='0' style='position:absolute;top:77px;left:87px;z-index:660;'/>
<asp:RadioButton ID='kind_ctrolRadio1' runat='server' GroupName='kind' Text='' Value='1' style='position:absolute;top:77px;left:149px;z-index:660;'/>
<asp:RadioButton ID='kind_ctrolRadio2' runat='server' GroupName='kind' Text='' Value='2' style='position:absolute;top:77px;left:214px;z-index:660;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMFPAYCN.png" id="Head01_file_1" runat="server" width="702" height="637" />
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
	<%--//20230322 edit by winni S--%>
    <script src="../../_Common/OEM/JS/OEMSetControl.js"></script>
	<%--//20230322 edit by winni E--%>

<script src="ODMTESTV02.js?NoCache=2021083114550004" type="text/javascript"></script>
</asp:Content>
