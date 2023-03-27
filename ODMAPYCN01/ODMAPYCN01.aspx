<%@ Page language="c#" CodeFile="ODMAPYCN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMAPYCN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMAPYCN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMAPYCN01" FrmDefineKeys-BOID="ODMAPYCN01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="685px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='685px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 685px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmapycn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='odmapycn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmapycn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='odmapycn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='txtuser' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 84px; TOP: 70px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtuser'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='102px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='applydate' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 742px; top: 71px; z-index: 645;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='applydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno01' runat='server' title='本廠編號01' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 44px; TOP: 217px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtno01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname01' runat='server' title='名稱規格01' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 159px; TOP: 214px;"
	TxtInput_TabIndex='104' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtname01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='30px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt01' runat='server' title='數量01' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 480px; TOP: 217px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtamt01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit01' runat='server' title='單位01' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 544px; TOP: 217px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtunit01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice01' runat='server' title='單價01' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 604px; TOP: 216px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtprice01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp01' runat='server' title='廠商01' ShowTitle='False'
	style="Z-INDEX:653; POSITION: absolute; LEFT: 676px; TOP: 217px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtcomp01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='申請日期01' ShowTitle='False'
	style="POSITION: absolute; left: 746px; top: 217px; z-index: 644;" 
	TxtInput_TabIndex='109' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno02' runat='server' title='本廠編號02' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 44px; TOP: 255px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtno02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname02' runat='server' title='名稱規格02' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 159px; TOP: 251px;"
	TxtInput_TabIndex='111' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtname02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='30px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt02' runat='server' title='數量02' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 480px; TOP: 255px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtamt02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit02' runat='server' title='單位02' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 544px; TOP: 255px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtunit02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice02' runat='server' title='單價02' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 604px; TOP: 255px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtprice02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp02' runat='server' title='廠商02' ShowTitle='False'
	style="Z-INDEX:652; POSITION: absolute; LEFT: 676px; TOP: 255px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtcomp02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime2' runat='server' Title='申請日期02' ShowTitle='False'
	style="POSITION: absolute; left: 746px; top: 255px; z-index: 643;" 
	TxtInput_TabIndex='116' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='datetime2'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno03' runat='server' title='本廠編號03' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 44px; TOP: 292px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtno03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname03' runat='server' title='名稱規格03' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 159px; TOP: 288px;"
	TxtInput_TabIndex='118' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtname03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='30px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt03' runat='server' title='數量03' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 480px; TOP: 292px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtamt03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit03' runat='server' title='單位03' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 544px; TOP: 292px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtunit03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice03' runat='server' title='單價03' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 604px; TOP: 292px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtprice03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp03' runat='server' title='廠商03' ShowTitle='False'
	style="Z-INDEX:651; POSITION: absolute; LEFT: 676px; TOP: 292px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtcomp03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtother' runat='server' title='其他類別' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 436px; TOP: 145px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='58px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime3' runat='server' Title='申請日期03' ShowTitle='False'
	style="POSITION: absolute; left: 746px; top: 292px; z-index: 642;" 
	TxtInput_TabIndex='123' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='datetime3'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno04' runat='server' title='本廠編號04' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 44px; TOP: 329px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtno04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname04' runat='server' title='名稱規格04' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 159px; TOP: 325px;"
	TxtInput_TabIndex='125' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtname04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='30px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt04' runat='server' title='數量04' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 480px; TOP: 329px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtamt04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit04' runat='server' title='單位04' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 544px; TOP: 329px;"
	TxtInput_TabIndex='127'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtunit04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice04' runat='server' title='單價04' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 604px; TOP: 329px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtprice04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp04' runat='server' title='廠商04' ShowTitle='False'
	style="Z-INDEX:650; POSITION: absolute; LEFT: 676px; TOP: 329px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtcomp04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime4' runat='server' Title='申請日期04' ShowTitle='False'
	style="POSITION: absolute; left: 746px; top: 329px; z-index: 641;" 
	TxtInput_TabIndex='130' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='datetime4'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno05' runat='server' title='本廠編號05' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 44px; TOP: 366px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtno05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname05' runat='server' title='名稱規格05' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 159px; TOP: 362px;"
	TxtInput_TabIndex='132' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtname05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='30px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt05' runat='server' title='數量05' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 480px; TOP: 366px;"
	TxtInput_TabIndex='133'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtamt05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit05' runat='server' title='單位05' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 544px; TOP: 366px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtunit05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice05' runat='server' title='單價05' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 604px; TOP: 366px;"
	TxtInput_TabIndex='135'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtprice05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp05' runat='server' title='廠商05' ShowTitle='False'
	style="Z-INDEX:649; POSITION: absolute; LEFT: 676px; TOP: 366px;"
	TxtInput_TabIndex='136'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtcomp05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime5' runat='server' Title='申請日期05' ShowTitle='False'
	style="POSITION: absolute; left: 746px; top: 366px; z-index: 640;" 
	TxtInput_TabIndex='137' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='datetime5'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno06' runat='server' title='本廠編號06' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 44px; TOP: 403px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtno06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname06' runat='server' title='名稱規格06' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 159px; TOP: 399px;"
	TxtInput_TabIndex='139' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtname06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='30px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt06' runat='server' title='數量06' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 480px; TOP: 403px;"
	TxtInput_TabIndex='140'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtamt06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit06' runat='server' title='單位06' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 544px; TOP: 403px;"
	TxtInput_TabIndex='141'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtunit06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice06' runat='server' title='單價06' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 604px; TOP: 403px;"
	TxtInput_TabIndex='142'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtprice06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp06' runat='server' title='廠商06' ShowTitle='False'
	style="Z-INDEX:648; POSITION: absolute; LEFT: 676px; TOP: 403px;"
	TxtInput_TabIndex='143'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtcomp06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime6' runat='server' Title='申請日期06' ShowTitle='False'
	style="POSITION: absolute; left: 746px; top: 403px; z-index: 639;" 
	TxtInput_TabIndex='144' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='datetime6'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno07' runat='server' title='本廠編號07' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 44px; TOP: 440px;"
	TxtInput_TabIndex='145'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtno07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname07' runat='server' title='名稱規格07' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 159px; TOP: 436px;"
	TxtInput_TabIndex='146' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtname07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='30px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt07' runat='server' title='數量07' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 480px; TOP: 440px;"
	TxtInput_TabIndex='147'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtamt07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit07' runat='server' title='單位07' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 544px; TOP: 440px;"
	TxtInput_TabIndex='148'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtunit07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice07' runat='server' title='單價07' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 604px; TOP: 440px;"
	TxtInput_TabIndex='149'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtprice07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp07' runat='server' title='廠商07' ShowTitle='False'
	style="Z-INDEX:647; POSITION: absolute; LEFT: 676px; TOP: 440px;"
	TxtInput_TabIndex='150'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtcomp07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime7' runat='server' Title='申請日期07' ShowTitle='False'
	style="POSITION: absolute; left: 746px; top: 440px; z-index: 638;" 
	TxtInput_TabIndex='151' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='datetime7'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno08' runat='server' title='本廠編號08' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 44px; TOP: 477px;"
	TxtInput_TabIndex='152'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtno08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname08' runat='server' title='名稱規格08' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 159px; TOP: 473px;"
	TxtInput_TabIndex='153' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtname08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='30px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt08' runat='server' title='數量08' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 480px; TOP: 477px;"
	TxtInput_TabIndex='154'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtamt08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit08' runat='server' title='單位08' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 544px; TOP: 477px;"
	TxtInput_TabIndex='155'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtunit08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice08' runat='server' title='單價08' ShowTitle='False'
	style="Z-INDEX:654; POSITION: absolute; LEFT: 604px; TOP: 477px;"
	TxtInput_TabIndex='156'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtprice08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp08' runat='server' title='廠商08' ShowTitle='False'
	style="Z-INDEX:646; POSITION: absolute; LEFT: 676px; TOP: 477px;"
	TxtInput_TabIndex='157'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtcomp08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime8' runat='server' Title='申請日期08' ShowTitle='False'
	style="POSITION: absolute; left: 746px; top: 477px; z-index: 637;" 
	TxtInput_TabIndex='158' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='datetime8'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtresaon' runat='server' title='textarea1' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 94px; TOP: 512px;"
	TxtInput_TabIndex='159' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtresaon'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='592px' Height='60px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscOpenQuery id='empl1' runat='server' title='申請人工號' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 17px; TOP: 19px;"
	TxtInput_TabIndex='180' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='99px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='empl1'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscTextBox id='txtdept' runat='server' title='申請部門' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 28px; TOP: 612px;"
	TxtInput_TabIndex='200'>
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='txtdept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='115px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='rddept' runat='server' title='採購、研發單位' ShowTitle='False'
	style="display:none;Z-INDEX:699; POSITION: absolute; LEFT: 127px; TOP: 107px;">
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='rddept'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rddept_ctrolRadio0' runat='server' GroupName='rddept' Text='' Value='0' style='position:absolute;top:107px;left:127px;z-index:699;'/>
<asp:RadioButton ID='rddept_ctrolRadio1' runat='server' GroupName='rddept' Text='' Value='1' style='position:absolute;top:107px;left:291px;z-index:699;'/>
<cc1:DscTextBox id='rditem' runat='server' title='設備' ShowTitle='False'
	style="display:none;Z-INDEX:699; POSITION: absolute; LEFT: 127px; TOP: 149px;">
	<FrmFieldKeys FrmID='FrmODMAPYCN01' BOID='ODMAPYCN01' FieldName='rditem'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rditem_ctrolRadio0' runat='server' GroupName='rditem' Text='' Value='0' style='position:absolute;top:149px;left:127px;z-index:699;'/>
<asp:RadioButton ID='rditem_ctrolRadio1' runat='server' GroupName='rditem' Text='' Value='1' style='position:absolute;top:149px;left:187px;z-index:699;'/>
<asp:RadioButton ID='rditem_ctrolRadio2' runat='server' GroupName='rditem' Text='' Value='2' style='position:absolute;top:149px;left:278px;z-index:699;'/>
<asp:RadioButton ID='rditem_ctrolRadio3' runat='server' GroupName='rditem' Text='' Value='3' style='position:absolute;top:149px;left:379px;z-index:699;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="新增申請單.png" id="Head01_file_1" runat="server" width="860" height="604" />
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
<script src="ODMAPYCN01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
