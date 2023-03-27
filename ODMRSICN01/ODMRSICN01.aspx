<%@ Page language="c#" CodeFile="ODMRSICN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMRSICN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMRSICN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMRSICN01" FrmDefineKeys-BOID="ODMRSICN01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="684px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='684px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 684px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmrsicn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='odmrsicn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmrsicn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='odmrsicn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='label1' runat='server' Style="z-index:639; position: absolute; left: 503px; top: 82px; vertical-align:middle;font-weight:bold;" Text='~' Width='25px' Height='22px'></cc1:DscLabel>
<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 128px; TOP: 78px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='77px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 394px; top: 81px; z-index: 650;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='datetime2' runat='server' Title='datetime2' ShowTitle='False'
	style="POSITION: absolute; left: 513px; top: 81px; z-index: 638;" 
	TxtInput_TabIndex='103' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='datetime2'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='note01' runat='server' title='note01' ShowTitle='False'
	style="Z-INDEX:649; POSITION: absolute; LEFT: 474px; TOP: 147px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='note01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id01' runat='server' title='id01' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 92px; TOP: 147px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='id01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name01' runat='server' title='name01' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 177px; TOP: 147px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='name01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debt01' runat='server' title='debt01' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 262px; TOP: 147px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='debt01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt01' runat='server' title='amt01' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 364px; TOP: 147px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='amt01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note02' runat='server' title='note02' ShowTitle='False'
	style="Z-INDEX:648; POSITION: absolute; LEFT: 474px; TOP: 184px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='note02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id02' runat='server' title='id02' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 92px; TOP: 184px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='id02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name02' runat='server' title='name02' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 177px; TOP: 184px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='name02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debt02' runat='server' title='debt02' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 262px; TOP: 184px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='debt02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt02' runat='server' title='amt02' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 364px; TOP: 184px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='amt02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept03' runat='server' title='dept03' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 92px; TOP: 221px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='dept03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note03' runat='server' title='note03' ShowTitle='False'
	style="Z-INDEX:647; POSITION: absolute; LEFT: 474px; TOP: 221px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='note03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id03' runat='server' title='id03' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 92px; TOP: 221px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='id03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name03' runat='server' title='name03' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 177px; TOP: 221px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='name03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debt03' runat='server' title='debt03' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 262px; TOP: 221px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='debt03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt03' runat='server' title='amt03' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 364px; TOP: 221px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='amt03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept04' runat='server' title='dept04' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 92px; TOP: 258px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='dept04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note04' runat='server' title='note04' ShowTitle='False'
	style="Z-INDEX:646; POSITION: absolute; LEFT: 474px; TOP: 258px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='note04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id04' runat='server' title='id04' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 92px; TOP: 258px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='id04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name04' runat='server' title='name04' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 177px; TOP: 258px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='name04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debt04' runat='server' title='debt04' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 262px; TOP: 258px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='debt04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt04' runat='server' title='amt04' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 364px; TOP: 258px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='amt04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept05' runat='server' title='dept05' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 92px; TOP: 295px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='dept05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note05' runat='server' title='note05' ShowTitle='False'
	style="Z-INDEX:645; POSITION: absolute; LEFT: 474px; TOP: 295px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='note05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id05' runat='server' title='id05' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 92px; TOP: 295px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='id05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name05' runat='server' title='name05' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 177px; TOP: 295px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='name05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debt05' runat='server' title='debt05' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 262px; TOP: 295px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='debt05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt05' runat='server' title='amt05' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 364px; TOP: 295px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='amt05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept06' runat='server' title='dept06' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 92px; TOP: 332px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='dept06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note06' runat='server' title='note06' ShowTitle='False'
	style="Z-INDEX:644; POSITION: absolute; LEFT: 474px; TOP: 332px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='note06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id06' runat='server' title='id06' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 92px; TOP: 332px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='id06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name06' runat='server' title='name06' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 177px; TOP: 332px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='name06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debt06' runat='server' title='debt06' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 262px; TOP: 332px;"
	TxtInput_TabIndex='127'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='debt06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt06' runat='server' title='amt06' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 364px; TOP: 332px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='amt06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept07' runat='server' title='dept07' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 92px; TOP: 370px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='dept07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note07' runat='server' title='note07' ShowTitle='False'
	style="Z-INDEX:643; POSITION: absolute; LEFT: 474px; TOP: 370px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='note07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id07' runat='server' title='id07' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 92px; TOP: 370px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='id07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name07' runat='server' title='name07' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 177px; TOP: 370px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='name07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debt07' runat='server' title='debt07' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 262px; TOP: 370px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='debt07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt07' runat='server' title='amt07' ShowTitle='False'
	style="Z-INDEX:654; POSITION: absolute; LEFT: 364px; TOP: 370px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='amt07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept08' runat='server' title='dept08' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 92px; TOP: 406px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='dept08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note08' runat='server' title='note08' ShowTitle='False'
	style="Z-INDEX:642; POSITION: absolute; LEFT: 474px; TOP: 406px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='note08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id08' runat='server' title='id08' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 92px; TOP: 406px;"
	TxtInput_TabIndex='133'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='id08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name08' runat='server' title='name08' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 177px; TOP: 406px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='name08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debt08' runat='server' title='debt08' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 262px; TOP: 406px;"
	TxtInput_TabIndex='135'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='debt08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt08' runat='server' title='amt08' ShowTitle='False'
	style="Z-INDEX:653; POSITION: absolute; LEFT: 364px; TOP: 406px;"
	TxtInput_TabIndex='136'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='amt08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept09' runat='server' title='dept09' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 92px; TOP: 443px;"
	TxtInput_TabIndex='136'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='dept09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note09' runat='server' title='note09' ShowTitle='False'
	style="Z-INDEX:641; POSITION: absolute; LEFT: 474px; TOP: 443px;"
	TxtInput_TabIndex='136'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='note09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id09' runat='server' title='id09' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 92px; TOP: 443px;"
	TxtInput_TabIndex='137'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='id09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name09' runat='server' title='name09' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 177px; TOP: 443px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='name09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debt09' runat='server' title='debt09' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 262px; TOP: 443px;"
	TxtInput_TabIndex='139'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='debt09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt09' runat='server' title='amt09' ShowTitle='False'
	style="Z-INDEX:652; POSITION: absolute; LEFT: 364px; TOP: 443px;"
	TxtInput_TabIndex='140'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='amt09'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept10' runat='server' title='dept10' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 92px; TOP: 480px;"
	TxtInput_TabIndex='140'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='dept10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note10' runat='server' title='note10' ShowTitle='False'
	style="Z-INDEX:640; POSITION: absolute; LEFT: 474px; TOP: 480px;"
	TxtInput_TabIndex='140'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='note10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id10' runat='server' title='id10' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 92px; TOP: 480px;"
	TxtInput_TabIndex='141'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='id10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name10' runat='server' title='name10' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 177px; TOP: 480px;"
	TxtInput_TabIndex='142'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='name10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debt10' runat='server' title='debt10' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 262px; TOP: 480px;"
	TxtInput_TabIndex='143'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='debt10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt10' runat='server' title='amt10' ShowTitle='False'
	style="Z-INDEX:651; POSITION: absolute; LEFT: 364px; TOP: 480px;"
	TxtInput_TabIndex='144'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='amt10'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='totamt' runat='server' title='合計金額' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 363px; TOP: 519px;"
	TxtInput_TabIndex='145'>
	<FrmFieldKeys FrmID='FrmODMRSICN01' BOID='ODMRSICN01' FieldName='totamt'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMRSICN01.png" id="Head01_file_1" runat="server" width="609" height="649" />
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
<script src="ODMRSICN01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
