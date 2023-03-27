<%@ Page language="c#" CodeFile="ODMOUTMVE01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMOUTMVE01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMOUTMVE01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMOUTMVE01" FrmDefineKeys-BOID="ODMOUTMVE01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="654px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='654px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 654px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmoutmve01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='odmoutmve01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmoutmve01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='odmoutmve01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='label1' runat='server' Style="z-index:687; position: absolute; left: 340px; top: 168px; vertical-align:middle;font-family:'Arial';font-size:14pt;" Text='~' Width='31px' Height='22px'></cc1:DscLabel>
<cc1:DscTextBox id='username' runat='server' title='username' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 146px; TOP: 112px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept' runat='server' title='dept' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 595px; TOP: 112px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtreason' runat='server' title='事由' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 89px; TOP: 139px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='txtreason'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='375px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='outdate01' runat='server' Title='執行時間01' ShowTitle='False'
	style="POSITION: absolute; left: 201px; top: 166px; z-index: 689;" 
	TxtInput_TabIndex='104' 
	DisplayMode='yyyyMMddHHmmss' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='outdate01'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='outdate02' runat='server' Title='執行時間02' ShowTitle='False'
	style="POSITION: absolute; left: 360px; top: 166px; z-index: 686;" 
	TxtInput_TabIndex='105' 
	DisplayMode='yyyyMMddHHmmss' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='outdate02'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='totalmoney' runat='server' title='totalmoney' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 590px; TOP: 455px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='totalmoney'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtlocation' runat='server' title='地點' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 583px; TOP: 164px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='txtlocation'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='no01' runat='server' title='號碼01' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 38px; TOP: 292px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='no01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='33px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime01' runat='server' Title='日期01' ShowTitle='False'
	style="POSITION: absolute; left: 82px; top: 292px; z-index: 697;" 
	TxtInput_TabIndex='108' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='64px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='datetime01'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='content01' runat='server' title='內容01' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 158px; TOP: 280px;"
	TxtInput_TabIndex='109' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='content01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='190px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='carmoney01' runat='server' title='車費01' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 371px; TOP: 292px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='carmoney01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='66px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='staymoney01' runat='server' title='居留費01' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 450px; TOP: 292px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='staymoney01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='59px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='foodmoney01' runat='server' title='餐費01' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 518px; TOP: 292px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='foodmoney01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='64px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='money01' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 590px; TOP: 292px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note01' runat='server' title='備註01' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 678px; TOP: 278px;"
	TxtInput_TabIndex='114' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='note01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='101px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='no02' runat='server' title='號碼02' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 39px; TOP: 350px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='no02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='32px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='no03' runat='server' title='號碼03' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 39px; TOP: 408px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='no03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='32px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime02' runat='server' Title='日期02' ShowTitle='False'
	style="POSITION: absolute; left: 83px; top: 350px; z-index: 696;" 
	TxtInput_TabIndex='116' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='64px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='datetime02'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='datetime03' runat='server' Title='日期03' ShowTitle='False'
	style="POSITION: absolute; left: 83px; top: 408px; z-index: 695;" 
	TxtInput_TabIndex='116' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='64px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='datetime03'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='content02' runat='server' title='內容02' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 158px; TOP: 339px;"
	TxtInput_TabIndex='117' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='content02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='190px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='content03' runat='server' title='內容03' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 158px; TOP: 399px;"
	TxtInput_TabIndex='117' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='content03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='190px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='carmoney02' runat='server' title='車費02' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 371px; TOP: 350px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='carmoney02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='carmoney03' runat='server' title='車費03' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 371px; TOP: 408px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='carmoney03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='staymoney02' runat='server' title='居留費02' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 449px; TOP: 350px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='staymoney02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='59px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='staymoney03' runat='server' title='居留費03' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 449px; TOP: 408px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='staymoney03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='59px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='foodmoney02' runat='server' title='餐費02' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 516px; TOP: 350px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='foodmoney02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='64px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='foodmoney03' runat='server' title='餐費03' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 516px; TOP: 408px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='foodmoney03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='64px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='money02' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 589px; TOP: 350px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='money03' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 589px; TOP: 408px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note02' runat='server' title='備註02' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 679px; TOP: 339px;"
	TxtInput_TabIndex='122' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='note02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='101px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note03' runat='server' title='備註03' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 679px; TOP: 398px;"
	TxtInput_TabIndex='122' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='note03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='101px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='lmoney' runat='server' title='合計大寫金額' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 257px; TOP: 489px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMOUTMVE01' BOID='ODMOUTMVE01' FieldName='lmoney'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='369px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMOUTMVE.png" id="Head01_file_1" runat="server" width="836" height="619" />
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
<script src="ODMOUTMVE01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
