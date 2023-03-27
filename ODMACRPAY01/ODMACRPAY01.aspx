﻿<%@ Page language="c#" CodeFile="ODMACRPAY01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMACRPAY01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMACRPAY01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMACRPAY01" FrmDefineKeys-BOID="ODMACRPAY01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="706px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='706px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 706px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmacrpay01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='odmacrpay01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmacrpay01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='odmacrpay01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 577px; top: 59px; z-index: 672;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='103px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 108px; TOP: 95px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='131px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='請款人' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 344px; TOP: 94px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='111px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee' runat='server' title='受款人' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 585px; TOP: 93px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='payee'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox1' runat='server' Text='checkbox1' ShowTitle='False'
	Style="z-index:691; position: absolute; left: 110px; top: 166px;"
	CheckBoxInput_TabIndex='105'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='16px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='checkbox1'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox2' runat='server' Text='checkbox2' ShowTitle='False'
	Style="z-index:683; position: absolute; left: 201px; top: 166px;"
	CheckBoxInput_TabIndex='106'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='checkbox2'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox3' runat='server' Text='checkbox3' ShowTitle='False'
	Style="z-index:679; position: absolute; left: 264px; top: 166px;"
	CheckBoxInput_TabIndex='107'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='23px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='checkbox3'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox4' runat='server' Text='checkbox4' ShowTitle='False'
	Style="z-index:676; position: absolute; left: 341px; top: 166px;"
	CheckBoxInput_TabIndex='108'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='20px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='checkbox4'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox5' runat='server' Text='checkbox5' ShowTitle='False'
	Style="z-index:674; position: absolute; left: 422px; top: 166px;"
	CheckBoxInput_TabIndex='109'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='checkbox5'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='chkother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 480px; TOP: 167px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='chkother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 111px; TOP: 265px;"
	TxtInput_TabIndex='111' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='462px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 586px; TOP: 271px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea2' runat='server' title='內容02' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 111px; TOP: 305px;"
	TxtInput_TabIndex='113' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='462px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 586px; TOP: 314px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea3' runat='server' title='內容03' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 111px; TOP: 345px;"
	TxtInput_TabIndex='115' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='462px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 586px; TOP: 352px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea4' runat='server' title='內容04' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 111px; TOP: 386px;"
	TxtInput_TabIndex='117' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='textarea4'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='462px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 586px; TOP: 392px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea5' runat='server' title='內容05' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 111px; TOP: 426px;"
	TxtInput_TabIndex='119' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='textarea5'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='462px' Height='38px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 586px; TOP: 431px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 586px; TOP: 472px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox6' runat='server' Text='checkbox6' ShowTitle='False'
	Style="z-index:690; position: absolute; left: 110px; top: 510px;"
	CheckBoxInput_TabIndex='122'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='checkbox6'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv01' runat='server' title='發票張數' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 164px; TOP: 506px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='inv01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='26px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox7' runat='server' Text='checkbox7' ShowTitle='False'
	Style="z-index:680; position: absolute; left: 219px; top: 510px;"
	CheckBoxInput_TabIndex='124'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='27px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='checkbox7'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='inv02' runat='server' title='數據張數' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 276px; TOP: 506px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='inv02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox8' runat='server' Text='checkbox8' ShowTitle='False'
	Style="z-index:689; position: absolute; left: 110px; top: 546px;"
	CheckBoxInput_TabIndex='126'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='checkbox8'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox9' runat='server' Text='checkbox9' ShowTitle='False'
	Style="z-index:688; position: absolute; left: 110px; top: 585px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='27px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='checkbox9'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox10' runat='server' Text='checkbox10' ShowTitle='False'
	Style="z-index:682; position: absolute; left: 204px; top: 585px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='checkbox10'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='orderno' runat='server' title='訂購單號' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 216px; TOP: 542px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='orderno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='attother' runat='server' title='其他附件' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 176px; TOP: 622px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='attother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='106px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='other' runat='server' Text='其他附件' ShowTitle='False'
	Style="z-index:692; position: absolute; left: 110px; top: 624px;"
	CheckBoxInput_TabIndex='137'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='31px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='other'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='payother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 305px; TOP: 202px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='payother'></FrmFieldKeys>
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
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='empl1'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscOpenQuery id='empl2' runat='server' title='empl2' ShowTitle='False'
	style="Z-INDEX: 699; POSITION: absolute; LEFT: 33px; TOP: 8px;"
	TxtInput_TabIndex='140' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='empl2'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscTextBox id='chpay' runat='server' title='現金支付' ShowTitle='False'
	style="display:none;Z-INDEX:686; POSITION: absolute; LEFT: 118px; TOP: 203px;">
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='chpay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='chpay_ctrolRadio0' runat='server' GroupName='chpay' Text='' Value='0' style='position:absolute;top:203px;left:118px;z-index:686;'/>
<asp:RadioButton ID='chpay_ctrolRadio1' runat='server' GroupName='chpay' Text='' Value='1' style='position:absolute;top:203px;left:185px;z-index:686;'/>
<asp:RadioButton ID='chpay_ctrolRadio2' runat='server' GroupName='chpay' Text='' Value='2' style='position:absolute;top:203px;left:252px;z-index:686;'/>
<cc1:DscTextBox id='comp' runat='server' title='木子' ShowTitle='False'
	style="display:none;Z-INDEX:686; POSITION: absolute; LEFT: 122px; TOP: 134px;">
	<FrmFieldKeys FrmID='FrmODMACRPAY01' BOID='ODMACRPAY01' FieldName='comp'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='comp_ctrolRadio0' runat='server' GroupName='comp' Text='' Value='0' style='position:absolute;top:134px;left:122px;z-index:686;'/>
<asp:RadioButton ID='comp_ctrolRadio1' runat='server' GroupName='comp' Text='' Value='1' style='position:absolute;top:134px;left:190px;z-index:686;'/>
<asp:RadioButton ID='comp_ctrolRadio2' runat='server' GroupName='comp' Text='' Value='2' style='position:absolute;top:134px;left:252px;z-index:686;'/>
<asp:RadioButton ID='comp_ctrolRadio3' runat='server' GroupName='comp' Text='' Value='3' style='position:absolute;top:134px;left:320px;z-index:686;'/>
<asp:RadioButton ID='comp_ctrolRadio4' runat='server' GroupName='comp' Text='' Value='4' style='position:absolute;top:134px;left:455px;z-index:686;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="請款.png" id="Head01_file_1" runat="server" width="759" height="671" />
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
<script src="ODMACRPAY01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
