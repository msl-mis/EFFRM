<%@ Page language="c#" CodeFile="ODMPURPAY01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMPURPAY01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMPURPAY01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMPURPAY01" FrmDefineKeys-BOID="ODMPURPAY01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="637px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='637px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 637px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmpurpay01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='odmpurpay01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmpurpay01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='odmpurpay01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='lblmsl' runat='server' Style="z-index:677; position: absolute; left: 561px; top: 104px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='木子' Width='57px' Height='22px'></cc1:DscLabel>
<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 120px; TOP: 66px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='109px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 623px; top: 65px; z-index: 672;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='120px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='purno01' runat='server' title='單號01' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 64px; TOP: 277px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='purno01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='paymeth01' runat='server' title='付款方式01' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 779px; TOP: 304px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='paymeth01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='180px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscDateAssistant2 ID='datetime2' runat='server' Title='付款日期01' ShowTitle='False'
	style="POSITION: absolute; left: 429px; top: 276px; z-index: 684;" 
	TxtInput_TabIndex='105' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='datetime2'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='payee01' runat='server' title='受款方01' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 510px; TOP: 276px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='payee01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr01' runat='server' Title='幣別01' ShowTitle='False'
	Style="z-index:676; position: absolute; left: 601px; top: 279px;"
	DDLInput_TabIndex='107'>
	<Items>
		<asp:ListItem Selected='False' Value='人民幣'>人民幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='新台幣'>新台幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='美金'>美金</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='65px' Height='25px' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='curr01'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPURPAY01_curr01' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 677px; TOP: 277px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purno02' runat='server' title='單號02' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 64px; TOP: 326px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='purno02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='paymeth02' runat='server' title='付款方式02' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 778px; TOP: 338px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='paymeth02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='180px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscDateAssistant2 ID='datetime3' runat='server' Title='付款日期02' ShowTitle='False'
	style="POSITION: absolute; left: 430px; top: 328px; z-index: 683;" 
	TxtInput_TabIndex='111' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='datetime3'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='payee02' runat='server' title='受款方02' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 511px; TOP: 327px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='payee02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr02' runat='server' Title='幣別02' ShowTitle='False'
	Style="z-index:675; position: absolute; left: 601px; top: 330px;"
	DDLInput_TabIndex='113'>
	<Items>
		<asp:ListItem Selected='False' Value='人民幣'>人民幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='新台幣'>新台幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='美金'>美金</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='65px' Height='25px' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='curr02'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPURPAY01_curr02' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 677px; TOP: 330px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purno03' runat='server' title='單號03' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 64px; TOP: 378px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='purno03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='paymeth03' runat='server' title='付款方式03' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 778px; TOP: 410px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='paymeth03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='180px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscDateAssistant2 ID='datetime4' runat='server' Title='付款日期03' ShowTitle='False'
	style="POSITION: absolute; left: 430px; top: 379px; z-index: 682;" 
	TxtInput_TabIndex='117' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='datetime4'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='payee03' runat='server' title='受款方03' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 510px; TOP: 378px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='payee03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr03' runat='server' Title='幣別03' ShowTitle='False'
	Style="z-index:674; position: absolute; left: 601px; top: 382px;"
	DDLInput_TabIndex='119'>
	<Items>
		<asp:ListItem Selected='False' Value='人民幣'>人民幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='新台幣'>新台幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='美金'>美金</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='65px' Height='25px' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='curr03'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPURPAY01_curr03' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 677px; TOP: 383px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purno04' runat='server' title='單號04' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 64px; TOP: 433px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='purno04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='paymeth04' runat='server' title='付款方式04' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 771px; TOP: 446px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='paymeth04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='180px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscDateAssistant2 ID='datetime5' runat='server' Title='付款日期04' ShowTitle='False'
	style="POSITION: absolute; left: 428px; top: 436px; z-index: 685;" 
	TxtInput_TabIndex='123' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='datetime5'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='payee04' runat='server' title='受款方04' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 511px; TOP: 435px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='payee04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDropDownList ID='curr04' runat='server' Title='幣別04' ShowTitle='False'
	Style="z-index:673; position: absolute; left: 602px; top: 436px;"
	DDLInput_TabIndex='125'>
	<Items>
		<asp:ListItem Selected='False' Value='人民幣'>人民幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='新台幣'>新台幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='美金'>美金</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='65px' Height='25px' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='curr04'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPURPAY01_curr04' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 677px; TOP: 434px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='purno05' runat='server' title='單號05' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 789px; TOP: 518px;"
	TxtInput_TabIndex='127'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='purno05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscTextBox id='paymeth05' runat='server' title='付款方式05' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 776px; TOP: 479px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='paymeth05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='180px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscDateAssistant2 ID='datetime6' runat='server' Title='付款日期05' ShowTitle='False'
	style="POSITION: absolute; left: 774px; top: 376px; z-index: 665;" 
	TxtInput_TabIndex='129' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='datetime6'></FrmFieldKeys>
</cc1:DscDateAssistant2>
</div>
<div style="display:none;">
<cc1:DscTextBox id='payee05' runat='server' title='受款方05' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 865px; TOP: 379px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='payee05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscDropDownList ID='curr05' runat='server' Title='幣別05' ShowTitle='False'
	Style="z-index:657; position: absolute; left: 899px; top: 445px;"
	DDLInput_TabIndex='131'>
	<Items>
		<asp:ListItem Selected='False' Value='人民幣'>人民幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='新台幣'>新台幣</asp:ListItem>
		<asp:ListItem Selected='False' Value='美金'>美金</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='65px' Height='25px' />
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='curr05'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMPURPAY01_curr05' />
</cc1:DscDropDownList>
</div>
<div style="display:none;">
<cc1:DscTextBox id='money05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 895px; TOP: 478px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='mtotal' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 677px; TOP: 481px;"
	TxtInput_TabIndex='133'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='mtotal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='textarea1' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 176px; TOP: 526px;"
	TxtInput_TabIndex='134' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='550px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='rate' runat='server' title='滙率' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 937px; TOP: 513px;"
	TxtInput_TabIndex='137'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='rate'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='payother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 363px; TOP: 187px;"
	TxtInput_TabIndex='140'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='payother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='67px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payarea01' runat='server' title='付款方式01' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 173px; TOP: 267px;"
	TxtInput_TabIndex='141' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='payarea01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='250px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payarea02' runat='server' title='付款方式02' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 173px; TOP: 319px;"
	TxtInput_TabIndex='142' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='payarea02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='250px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payarea03' runat='server' title='付款方式03' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 173px; TOP: 370px;"
	TxtInput_TabIndex='143' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='payarea03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='250px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='payarea04' runat='server' title='付款方式4' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 173px; TOP: 423px;"
	TxtInput_TabIndex='144' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='payarea04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='250px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='comp' runat='server' title='木子股份有限公司' ShowTitle='False'
	style="display:none;Z-INDEX:688; POSITION: absolute; LEFT: 538px; TOP: 103px;">
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='comp'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='comp_ctrolRadio0' runat='server' GroupName='comp' Text='' Value='0' style='position:absolute;top:103px;left:538px;z-index:688;'/>
<asp:RadioButton ID='comp_ctrolRadio1' runat='server' GroupName='comp' Text='' Value='1' style='position:absolute;top:104px;left:149px;z-index:688;'/>
<asp:RadioButton ID='comp_ctrolRadio2' runat='server' GroupName='comp' Text='' Value='2' style='position:absolute;top:104px;left:227px;z-index:688;'/>
<asp:RadioButton ID='comp_ctrolRadio3' runat='server' GroupName='comp' Text='' Value='3' style='position:absolute;top:104px;left:297px;z-index:688;'/>
<asp:RadioButton ID='comp_ctrolRadio4' runat='server' GroupName='comp' Text='' Value='4' style='position:absolute;top:104px;left:428px;z-index:688;'/>
<cc1:DscTextBox id='pay' runat='server' title='現金' ShowTitle='False'
	style="display:none;Z-INDEX:688; POSITION: absolute; LEFT: 149px; TOP: 187px;">
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='pay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='pay_ctrolRadio0' runat='server' GroupName='pay' Text='' Value='0' style='position:absolute;top:187px;left:149px;z-index:688;'/>
<asp:RadioButton ID='pay_ctrolRadio1' runat='server' GroupName='pay' Text='' Value='1' style='position:absolute;top:187px;left:227px;z-index:688;'/>
<asp:RadioButton ID='pay_ctrolRadio2' runat='server' GroupName='pay' Text='' Value='2' style='position:absolute;top:187px;left:310px;z-index:688;'/>
<div style="display:none;">
<cc1:DscTextBox id='radio1' runat='server' title='MVE' ShowTitle='False'
	style="display:none;Z-INDEX:688; POSITION: absolute; LEFT: 45px; TOP: 20px;">
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='radio1'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='radio1_ctrolRadio0' runat='server' GroupName='radio1' Text='' Value='0' style='position:absolute;top:20px;left:45px;z-index:688;'/>
</div>
<cc1:DscTextBox id='rddept' runat='server' title='採購單位' ShowTitle='False'
	style="display:none;Z-INDEX:688; POSITION: absolute; LEFT: 149px; TOP: 145px;">
	<FrmFieldKeys FrmID='FrmODMPURPAY01' BOID='ODMPURPAY01' FieldName='rddept'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rddept_ctrolRadio0' runat='server' GroupName='rddept' Text='' Value='0' style='position:absolute;top:145px;left:149px;z-index:688;'/>
<asp:RadioButton ID='rddept_ctrolRadio1' runat='server' GroupName='rddept' Text='' Value='1' style='position:absolute;top:145px;left:249px;z-index:688;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="PURPAY.png" id="Head01_file_1" runat="server" width="823" height="602" />
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
<script src="ODMPURPAY01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
