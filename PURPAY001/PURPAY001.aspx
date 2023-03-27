<%@ Page language="c#" CodeFile="PURPAY001.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.PURPAY001" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="PURPAY001FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmPURPAY001" FrmDefineKeys-BOID="PURPAY001"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="543px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='543px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 543px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='purpaid001001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='purpaid001001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='purpaid001002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='purpaid001002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 112px; TOP: 69px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='109px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 593px; top: 67px; z-index: 673;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='120px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='purno01' runat='server' title='單號01' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 97px; TOP: 131px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='purno01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='paymeth01' runat='server' title='付款方式01' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 214px; TOP: 130px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='paymeth01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='165px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime2' runat='server' Title='付款日期01' ShowTitle='False'
	style="POSITION: absolute; left: 384px; top: 131px; z-index: 688;" 
	TxtInput_TabIndex='105' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='datetime2'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='payee01' runat='server' title='受款方01' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 482px; TOP: 132px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='payee01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr01' runat='server' Title='幣別01' ShowTitle='False'
	Style="z-index:678; position: absolute; left: 575px; top: 134px;"
	DDLInput_TabIndex='107'>
	<Items>
		<asp:ListItem Selected='False' Value='人民幣'>人民幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='新台幣'>新台幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='美金'>美金</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='80px' Height='25px' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='curr01'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='PURPAY001_curr01' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 662px; TOP: 132px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purno02' runat='server' title='單號02' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 97px; TOP: 169px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='purno02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='paymeth02' runat='server' title='付款方式02' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 214px; TOP: 170px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='paymeth02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='165px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime3' runat='server' Title='付款日期02' ShowTitle='False'
	style="POSITION: absolute; left: 384px; top: 172px; z-index: 687;" 
	TxtInput_TabIndex='111' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='datetime3'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='payee02' runat='server' title='受款方02' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 482px; TOP: 170px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='payee02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr02' runat='server' Title='幣別02' ShowTitle='False'
	Style="z-index:677; position: absolute; left: 575px; top: 174px;"
	DDLInput_TabIndex='113'>
	<Items>
		<asp:ListItem Selected='False' Value='人民幣'>人民幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='新台幣'>新台幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='美金'>美金</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='80px' Height='25px' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='curr02'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='PURPAY001_curr02' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 662px; TOP: 170px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purno03' runat='server' title='單號03' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 97px; TOP: 211px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='purno03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='paymeth03' runat='server' title='付款方式03' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 214px; TOP: 211px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='paymeth03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='165px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime4' runat='server' Title='付款日期03' ShowTitle='False'
	style="POSITION: absolute; left: 384px; top: 213px; z-index: 686;" 
	TxtInput_TabIndex='117' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='datetime4'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='payee03' runat='server' title='受款方03' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 482px; TOP: 211px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='payee03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr03' runat='server' Title='幣別03' ShowTitle='False'
	Style="z-index:676; position: absolute; left: 575px; top: 214px;"
	DDLInput_TabIndex='119'>
	<Items>
		<asp:ListItem Selected='False' Value='人民幣'>人民幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='新台幣'>新台幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='美金'>美金</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='80px' Height='25px' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='curr03'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='PURPAY001_curr03' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 662px; TOP: 211px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purno04' runat='server' title='單號04' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 97px; TOP: 253px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='purno04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='paymeth04' runat='server' title='付款方式04' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 214px; TOP: 253px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='paymeth04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='165px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime5' runat='server' Title='付款日期04' ShowTitle='False'
	style="POSITION: absolute; left: 384px; top: 253px; z-index: 685;" 
	TxtInput_TabIndex='123' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='datetime5'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='payee04' runat='server' title='受款方04' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 482px; TOP: 253px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='payee04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr04' runat='server' Title='幣別04' ShowTitle='False'
	Style="z-index:675; position: absolute; left: 575px; top: 255px;"
	DDLInput_TabIndex='125'>
	<Items>
		<asp:ListItem Selected='False' Value='人民幣'>人民幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='新台幣'>新台幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='美金'>美金</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='80px' Height='25px' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='curr04'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='PURPAY001_curr04' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 662px; TOP: 251px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purno05' runat='server' title='單號05' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 97px; TOP: 293px;"
	TxtInput_TabIndex='127'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='purno05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='paymeth05' runat='server' title='付款方式05' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 214px; TOP: 291px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='paymeth05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='165px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime6' runat='server' Title='付款日期05' ShowTitle='False'
	style="POSITION: absolute; left: 385px; top: 292px; z-index: 684;" 
	TxtInput_TabIndex='129' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='datetime6'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='payee05' runat='server' title='受款方05' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 482px; TOP: 293px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='payee05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr05' runat='server' Title='幣別05' ShowTitle='False'
	Style="z-index:674; position: absolute; left: 576px; top: 295px;"
	DDLInput_TabIndex='131'>
	<Items>
		<asp:ListItem Selected='False' Value='人民幣'>人民幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='新台幣'>新台幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='美金'>美金</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='80px' Height='25px' />
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='curr05'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='PURPAY001_curr05' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 662px; TOP: 292px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 662px; TOP: 330px;"
	TxtInput_TabIndex='133'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='textarea1' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 96px; TOP: 362px;"
	TxtInput_TabIndex='134' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmPURPAY001' BOID='PURPAY001' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='600px' Height='30px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

<div style="position:absolute; left:15px; top:18px; z-index:10; ">
	<img src="采购请款通知单.jpg" id="Head01_file_1" runat="server" width="800" height="495" />
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
<script src="PURPAY001.js" type="text/javascript"></script>
</asp:Content>
