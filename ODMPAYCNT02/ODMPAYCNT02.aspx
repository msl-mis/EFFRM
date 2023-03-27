<%@ Page language="c#" CodeFile="ODMPAYCNT02.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMPAYCNT02" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMPAYCNT02FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMPAYCNT02" FrmDefineKeys-BOID="ODMPAYCNT02"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="626px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='626px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 626px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmpaycnt02001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='odmpaycnt02001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmpaycnt02002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='odmpaycnt02002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='txtuser' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 76px; TOP: 65px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='txtuser'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='103px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='usedate' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 740px; top: 65px; z-index: 666;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='89px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='usedate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscOpenQuery id='querypurno' runat='server' title='採購單號' ShowTitle='False'
	style="Z-INDEX: 699; POSITION: absolute; LEFT: 49px; TOP: 235px;"
	TxtInput_TabIndex='106' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='130px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='querypurno'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='na003' runat='server' title='付款方式' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 236px; TOP: 225px;"
	TxtInput_TabIndex='107' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='na003'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='200px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc027' runat='server' title='付款代號' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 189px; TOP: 225px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='tc027'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='45px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='paydate' runat='server' Title='付款日期' ShowTitle='False'
	style="POSITION: absolute; left: 447px; top: 234px; z-index: 682;" 
	TxtInput_TabIndex='109' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='paydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='ma001' runat='server' title='廠商代號' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 545px; TOP: 225px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='ma001'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma002' runat='server' title='廠商名稱' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 545px; TOP: 247px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='ma002'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc005' runat='server' title='交易幣別' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 678px; TOP: 237px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='tc005'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='totalamt' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 745px; TOP: 434px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='totalamt'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='82px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote' runat='server' title='備註' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 218px; TOP: 469px;"
	TxtInput_TabIndex='121' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='txtnote'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='600px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtother' runat='server' title='其他支付' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 359px; TOP: 146px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='txtother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='79px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='querypurno01' runat='server' title='採購單號01' ShowTitle='False'
	style="Z-INDEX: 698; POSITION: absolute; LEFT: 50px; TOP: 286px;"
	TxtInput_TabIndex='125' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='130px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='querypurno01'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='querypurno02' runat='server' title='採購單號02' ShowTitle='False'
	style="Z-INDEX: 696; POSITION: absolute; LEFT: 51px; TOP: 341px;"
	TxtInput_TabIndex='126' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='130px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='querypurno02'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='querypurno03' runat='server' title='採購單號03' ShowTitle='False'
	style="Z-INDEX: 697; POSITION: absolute; LEFT: 50px; TOP: 393px;"
	TxtInput_TabIndex='127' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='130px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='querypurno03'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='tc027_01' runat='server' title='付款代號01' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 189px; TOP: 279px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='tc027_01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='45px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc027_02' runat='server' title='付款代號02' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 189px; TOP: 330px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='tc027_02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='45px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc027_03' runat='server' title='付款代號03' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 189px; TOP: 382px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='tc027_03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='45px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='na003_01' runat='server' title='付款方式01' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 236px; TOP: 279px;"
	TxtInput_TabIndex='131' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='na003_01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='200px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='na003_02' runat='server' title='付款方式02' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 237px; TOP: 330px;"
	TxtInput_TabIndex='132' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='na003_02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='200px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='na003_03' runat='server' title='付款方式03' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 237px; TOP: 382px;"
	TxtInput_TabIndex='133' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='na003_03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='200px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='paydate01' runat='server' Title='付款日期01' ShowTitle='False'
	style="POSITION: absolute; left: 447px; top: 291px; z-index: 681;" 
	TxtInput_TabIndex='134' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='paydate01'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='paydate02' runat='server' Title='付款日期02' ShowTitle='False'
	style="POSITION: absolute; left: 447px; top: 342px; z-index: 680;" 
	TxtInput_TabIndex='135' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='paydate02'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='paydate03' runat='server' Title='付款日期03' ShowTitle='False'
	style="POSITION: absolute; left: 447px; top: 393px; z-index: 679;" 
	TxtInput_TabIndex='136' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='paydate03'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='ma001_01' runat='server' title='廠商代號01' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 545px; TOP: 277px;"
	TxtInput_TabIndex='137'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='ma001_01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma001_02' runat='server' title='廠商代號02' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 545px; TOP: 329px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='ma001_02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma001_03' runat='server' title='廠商代號03' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 545px; TOP: 383px;"
	TxtInput_TabIndex='139'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='ma001_03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma002_01' runat='server' title='廠商名稱01' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 545px; TOP: 299px;"
	TxtInput_TabIndex='140'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='ma002_01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma002_02' runat='server' title='廠商名稱02' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 545px; TOP: 352px;"
	TxtInput_TabIndex='141'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='ma002_02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='ma002_03' runat='server' title='廠商名稱03' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 545px; TOP: 405px;"
	TxtInput_TabIndex='142'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='ma002_03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc005_01' runat='server' title='交易幣別01' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 678px; TOP: 293px;"
	TxtInput_TabIndex='143'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='tc005_01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc005_02' runat='server' title='交易幣別02' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 678px; TOP: 343px;"
	TxtInput_TabIndex='144'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='tc005_02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='tc005_03' runat='server' title='交易幣別' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 678px; TOP: 392px;"
	TxtInput_TabIndex='145'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='tc005_03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt' runat='server' title='金額' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 742px; TOP: 237px;"
	TxtInput_TabIndex='146'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='txtamt'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 743px; TOP: 293px;"
	TxtInput_TabIndex='147'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='txtamt01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 743px; TOP: 342px;"
	TxtInput_TabIndex='148'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='txtamt02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 743px; TOP: 392px;"
	TxtInput_TabIndex='149'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='txtamt03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='tempno' runat='server' title='暫存區' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 22px; TOP: 551px;"
	TxtInput_TabIndex='150'>
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='tempno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='pay' runat='server' title='現金' ShowTitle='False'
	style="display:none;Z-INDEX:700; POSITION: absolute; LEFT: 142px; TOP: 147px;">
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='pay'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='pay_ctrolRadio0' runat='server' GroupName='pay' Text='' Value='0' style='position:absolute;top:147px;left:142px;z-index:700;'/>
<asp:RadioButton ID='pay_ctrolRadio1' runat='server' GroupName='pay' Text='' Value='1' style='position:absolute;top:147px;left:223px;z-index:700;'/>
<asp:RadioButton ID='pay_ctrolRadio2' runat='server' GroupName='pay' Text='' Value='2' style='position:absolute;top:147px;left:303px;z-index:700;'/>
<cc1:DscTextBox id='rddept' runat='server' title='採購單位' ShowTitle='False'
	style="display:none;Z-INDEX:700; POSITION: absolute; LEFT: 142px; TOP: 102px;">
	<FrmFieldKeys FrmID='FrmODMPAYCNT02' BOID='ODMPAYCNT02' FieldName='rddept'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rddept_ctrolRadio0' runat='server' GroupName='rddept' Text='' Value='0' style='position:absolute;top:102px;left:142px;z-index:700;'/>
<asp:RadioButton ID='rddept_ctrolRadio1' runat='server' GroupName='rddept' Text='' Value='1' style='position:absolute;top:102px;left:244px;z-index:700;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="EF採購請款單.png" id="Head01_file_1" runat="server" width="876" height="554" />
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
<script src="ODMPAYCNT02.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
