<%@ Page language="c#" CodeFile="ODMPAY01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMPAY01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMPAY01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMPAY01" FrmDefineKeys-BOID="ODMPAY01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="693px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='693px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 693px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmpay01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='odmpay01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmpay01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='odmpay01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 575px; top: 81px; z-index: 663;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='103px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 110px; TOP: 116px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='131px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='請款人' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 343px; TOP: 116px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='111px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee' runat='server' title='受款人' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 588px; TOP: 116px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='payee'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='chkother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 480px; TOP: 153px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 112px; TOP: 253px;"
	TxtInput_TabIndex='111' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='455px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 631px; TOP: 260px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea2' runat='server' title='內容02' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 112px; TOP: 293px;"
	TxtInput_TabIndex='113' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='455px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 631px; TOP: 301px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea3' runat='server' title='內容03' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 112px; TOP: 333px;"
	TxtInput_TabIndex='115' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='455px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 631px; TOP: 341px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea4' runat='server' title='內容04' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 112px; TOP: 373px;"
	TxtInput_TabIndex='117' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='textarea4'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='455px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 631px; TOP: 380px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea5' runat='server' title='內容05' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 112px; TOP: 413px;"
	TxtInput_TabIndex='119' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='textarea5'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='455px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 631px; TOP: 421px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 635px; TOP: 461px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='inv01' runat='server' title='發票張數' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 164px; TOP: 493px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='inv01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='26px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='inv02' runat='server' title='數據張數' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 277px; TOP: 493px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='inv02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='orderno' runat='server' title='訂購單號' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 218px; TOP: 528px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='orderno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='attother' runat='server' title='其他附件' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 176px; TOP: 607px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='attother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='106px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='other' runat='server' Text='其他附件' ShowTitle='False'
	Style="z-index:695; position: absolute; left: 110px; top: 610px;"
	CheckBoxInput_TabIndex='137'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='other'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='payother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 590px; TOP: 187px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='payother'></FrmFieldKeys>
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
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='empl1'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscOpenQuery id='empl2' runat='server' title='empl2' ShowTitle='False'
	style="Z-INDEX: 699; POSITION: absolute; LEFT: 33px; TOP: 8px;"
	TxtInput_TabIndex='140' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='empl2'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscCheckBox ID='chkkind01' runat='server' Text='一般費用' ShowTitle='False'
	Style="z-index:698; position: absolute; left: 107px; top: 152px;"
	CheckBoxInput_TabIndex='141'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkkind01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkkind02' runat='server' Text='資產' ShowTitle='False'
	Style="z-index:683; position: absolute; left: 198px; top: 152px;"
	CheckBoxInput_TabIndex='142'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkkind02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkkind03' runat='server' Text='原物料' ShowTitle='False'
	Style="z-index:678; position: absolute; left: 267px; top: 152px;"
	CheckBoxInput_TabIndex='143'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkkind03'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkkind04' runat='server' Text='零用金' ShowTitle='False'
	Style="z-index:676; position: absolute; left: 341px; top: 152px;"
	CheckBoxInput_TabIndex='144'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkkind04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkkind05' runat='server' Text='其他' ShowTitle='False'
	Style="z-index:673; position: absolute; left: 419px; top: 152px;"
	CheckBoxInput_TabIndex='145'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkkind05'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkpay01' runat='server' Text='現金' ShowTitle='False'
	Style="z-index:697; position: absolute; left: 108px; top: 188px;"
	CheckBoxInput_TabIndex='146'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkpay01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkpay02' runat='server' Text='訂金' ShowTitle='False'
	Style="z-index:684; position: absolute; left: 198px; top: 188px;"
	CheckBoxInput_TabIndex='147'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkpay02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='txtord' runat='server' title='訂金費用' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 267px; TOP: 183px;"
	TxtInput_TabIndex='148'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='txtord'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpayday' runat='server' title='尾天天數' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 372px; TOP: 183px;"
	TxtInput_TabIndex='149'>
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='txtpayday'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chkpay03' runat='server' Text='月結' ShowTitle='False'
	Style="z-index:672; position: absolute; left: 448px; top: 188px;"
	CheckBoxInput_TabIndex='150'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkpay03'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkpay04' runat='server' Text='其他' ShowTitle='False'
	Style="z-index:670; position: absolute; left: 535px; top: 188px;"
	CheckBoxInput_TabIndex='151'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkpay04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscDropDownList ID='selcurr01' runat='server' Title='幣別01' ShowTitle='False'
	Style="z-index:669; position: absolute; left: 574px; top: 264px;"
	DDLInput_TabIndex='152'>
	<Items>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='55px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='selcurr01'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPAY01_selcurr01' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='selcurr02' runat='server' Title='幣別02' ShowTitle='False'
	Style="z-index:668; position: absolute; left: 574px; top: 305px;"
	DDLInput_TabIndex='152'>
	<Items>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='55px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='selcurr02'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPAY01_selcurr02' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='selcurr03' runat='server' Title='幣別03' ShowTitle='False'
	Style="z-index:667; position: absolute; left: 574px; top: 344px;"
	DDLInput_TabIndex='152'>
	<Items>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='55px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='selcurr03'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPAY01_selcurr03' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='selcurr04' runat='server' Title='幣別04' ShowTitle='False'
	Style="z-index:666; position: absolute; left: 574px; top: 383px;"
	DDLInput_TabIndex='152'>
	<Items>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='55px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='selcurr04'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPAY01_selcurr04' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='selcurr05' runat='server' Title='幣別05' ShowTitle='False'
	Style="z-index:665; position: absolute; left: 574px; top: 424px;"
	DDLInput_TabIndex='152'>
	<Items>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='55px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='selcurr05'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPAY01_selcurr05' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='selcurr06' runat='server' Title='幣別06' ShowTitle='False'
	Style="z-index:664; position: absolute; left: 574px; top: 464px;"
	DDLInput_TabIndex='152'>
	<Items>
		<asp:ListItem Selected='False' Value='NTD'>NTD</asp:ListItem>
		<asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='55px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='selcurr06'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPAY01_selcurr06' />
</cc1:DscDropDownList>
<cc1:DscCheckBox ID='chkadd01' runat='server' Text='發票' ShowTitle='False'
	Style="z-index:689; position: absolute; left: 110px; top: 497px;"
	CheckBoxInput_TabIndex='154'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkadd01'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkadd02' runat='server' Text='收據' ShowTitle='False'
	Style="z-index:680; position: absolute; left: 217px; top: 497px;"
	CheckBoxInput_TabIndex='155'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkadd02'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkadd03' runat='server' Text='訂購單' ShowTitle='False'
	Style="z-index:688; position: absolute; left: 110px; top: 535px;"
	CheckBoxInput_TabIndex='156'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkadd03'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkadd04' runat='server' Text='驗收' ShowTitle='False'
	Style="z-index:687; position: absolute; left: 110px; top: 569px;"
	CheckBoxInput_TabIndex='157'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='20px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkadd04'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chkadd05' runat='server' Text='進貨單' ShowTitle='False'
	Style="z-index:682; position: absolute; left: 199px; top: 569px;"
	CheckBoxInput_TabIndex='158'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='19px' Height='23px' />
	<FrmFieldKeys FrmID='FrmODMPAY01' BOID='ODMPAY01' FieldName='chkadd05'></FrmFieldKeys>
</cc1:DscCheckBox>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="msl請款.png" id="Head01_file_1" runat="server" width="759" height="658" />
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
<script src="ODMPAY01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
