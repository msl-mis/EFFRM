<%@ Page language="c#" CodeFile="ACRPAY001.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ACRPAY001" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ACRPAY001FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmACRPAY001" FrmDefineKeys-BOID="ACRPAY001"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="661px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='661px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 661px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='acrpay001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='acrpay001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='acrpay002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='acrpay002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 632px; top: 96px; z-index: 670;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='102px' Height='26px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 130px; TOP: 135px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='131px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payee' runat='server' title='受款人' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 600px; TOP: 135px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='payee'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='118px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 378px; TOP: 136px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='107px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox1' runat='server' Text='一般費用支出' ShowTitle='False'
	Style="z-index:700; position: absolute; left: 121px; top: 172px;"
	CheckBoxInput_TabIndex='104'
	Checked='True' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='22px' Height='22px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox1'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox2' runat='server' Text='資產' ShowTitle='False'
	Style="z-index:687; position: absolute; left: 242px; top: 172px;"
	CheckBoxInput_TabIndex='105'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='23px' Height='22px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox2'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox3' runat='server' Text='原物料' ShowTitle='False'
	Style="z-index:683; position: absolute; left: 303px; top: 172px;"
	CheckBoxInput_TabIndex='106'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='23px' Height='22px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox3'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox4' runat='server' Text='零用金' ShowTitle='False'
	Style="z-index:680; position: absolute; left: 382px; top: 172px;"
	CheckBoxInput_TabIndex='107'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='24px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox4'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox5' runat='server' Text='其他' ShowTitle='False'
	Style="z-index:679; position: absolute; left: 465px; top: 172px;"
	CheckBoxInput_TabIndex='108'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='25px' Height='22px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox5'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='itemother' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 537px; TOP: 170px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='itemother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='102px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='項目1' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 126px; TOP: 243px;"
	TxtInput_TabIndex='110' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='472px' Height='32px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 621px; TOP: 247px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='103px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea2' runat='server' title='項目2' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 126px; TOP: 288px;"
	TxtInput_TabIndex='112' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='472px' Height='32px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 621px; TOP: 292px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='103px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea3' runat='server' title='項目3' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 126px; TOP: 332px;"
	TxtInput_TabIndex='114' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='472px' Height='32px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 621px; TOP: 337px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='103px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea4' runat='server' title='項目4' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 126px; TOP: 376px;"
	TxtInput_TabIndex='116' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='textarea4'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='472px' Height='32px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 621px; TOP: 378px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='103px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea5' runat='server' title='項目5' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 126px; TOP: 419px;"
	TxtInput_TabIndex='118' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='textarea5'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='472px' Height='32px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 621px; TOP: 421px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='103px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='moneytot' runat='server' title='總計' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 621px; TOP: 463px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='moneytot'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='103px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox6' runat='server' Text='發票' ShowTitle='False'
	Style="z-index:692; position: absolute; left: 129px; top: 496px;"
	CheckBoxInput_TabIndex='121'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='24px' Height='22px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox6'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='invoice' runat='server' title='發票張數' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 197px; TOP: 494px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='invoice'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='47px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox7' runat='server' Text='收據' ShowTitle='False'
	Style="z-index:684; position: absolute; left: 278px; top: 497px;"
	CheckBoxInput_TabIndex='123'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='30px' Height='22px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox7'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='recino' runat='server' title='收據張數' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 350px; TOP: 493px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='recino'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox8' runat='server' Text='訂購單' ShowTitle='False'
	Style="z-index:691; position: absolute; left: 129px; top: 528px;"
	CheckBoxInput_TabIndex='125'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox8'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='orderno' runat='server' title='訂購單號' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 253px; TOP: 522px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='orderno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='125px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox9' runat='server' Text='驗收單' ShowTitle='False'
	Style="z-index:690; position: absolute; left: 129px; top: 554px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='22px' Height='22px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox9'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox10' runat='server' Text='進貨單' ShowTitle='False'
	Style="z-index:685; position: absolute; left: 263px; top: 555px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='32px' Height='22px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox10'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox11' runat='server' Text='其他' ShowTitle='False'
	Style="z-index:694; position: absolute; left: 127px; top: 584px;"
	CheckBoxInput_TabIndex='129'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='26px' Height='22px' />
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='checkbox11'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='attother' runat='server' title='其他附件' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 209px; TOP: 581px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmACRPAY001' BOID='ACRPAY001' FieldName='attother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='149px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="一般请款通知单 (2).jpg" id="Head01_file_1" runat="server" width="800" height="626" />
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
<script src="ACRPAY001.js" type="text/javascript"></script>
</asp:Content>
