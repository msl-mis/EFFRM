<%@ Page language="c#" CodeFile="ODMAPYMVE01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMAPYMVE01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMAPYMVE01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMAPYMVE01" FrmDefineKeys-BOID="ODMAPYMVE01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="691px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='691px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 691px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmapymve01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='odmapymve01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmapymve01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='odmapymve01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='txtuser' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 137px; TOP: 96px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtuser'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='102px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='applydate' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 833px; top: 98px; z-index: 645;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='applydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno01' runat='server' title='本廠編號01' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 53px; TOP: 274px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtno01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname01' runat='server' title='名稱規格01' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 171px; TOP: 273px;"
	TxtInput_TabIndex='104' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtname01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='330px' Height='32px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt01' runat='server' title='數量01' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 512px; TOP: 274px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtamt01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit01' runat='server' title='單位01' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 581px; TOP: 274px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtunit01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote01' runat='server' title='備註01' ShowTitle='False'
	style="Z-INDEX:641; POSITION: absolute; LEFT: 861px; TOP: 273px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtnote01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp01' runat='server' title='廠商01' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 633px; TOP: 273px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtcomp01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='申請日期01' ShowTitle='False'
	style="POSITION: absolute; left: 753px; top: 274px; z-index: 653;" 
	TxtInput_TabIndex='109' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno02' runat='server' title='本廠編號02' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 53px; TOP: 313px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtno02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname02' runat='server' title='名稱規格02' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 170px; TOP: 310px;"
	TxtInput_TabIndex='111' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtname02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='330px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt02' runat='server' title='數量02' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 512px; TOP: 314px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtamt02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit02' runat='server' title='單位02' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 581px; TOP: 316px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtunit02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote02' runat='server' title='備註02' ShowTitle='False'
	style="Z-INDEX:640; POSITION: absolute; LEFT: 861px; TOP: 310px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtnote02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp02' runat='server' title='廠商02' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 633px; TOP: 310px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtcomp02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime2' runat='server' Title='申請日期02' ShowTitle='False'
	style="POSITION: absolute; left: 753px; top: 315px; z-index: 652;" 
	TxtInput_TabIndex='116' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='datetime2'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno03' runat='server' title='本廠編號03' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 53px; TOP: 351px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtno03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname03' runat='server' title='名稱規格03' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 171px; TOP: 347px;"
	TxtInput_TabIndex='118' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtname03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='330px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt03' runat='server' title='數量03' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 512px; TOP: 352px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtamt03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit03' runat='server' title='單位03' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 581px; TOP: 353px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtunit03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote03' runat='server' title='備註03' ShowTitle='False'
	style="Z-INDEX:639; POSITION: absolute; LEFT: 861px; TOP: 347px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtnote03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp03' runat='server' title='廠商03' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 633px; TOP: 347px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtcomp03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtother' runat='server' title='其他類別' ShowTitle='False'
	style="Z-INDEX:654; POSITION: absolute; LEFT: 694px; TOP: 175px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime3' runat='server' Title='申請日期03' ShowTitle='False'
	style="POSITION: absolute; left: 753px; top: 351px; z-index: 651;" 
	TxtInput_TabIndex='123' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='datetime3'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno04' runat='server' title='本廠編號04' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 53px; TOP: 389px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtno04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname04' runat='server' title='名稱規格04' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 171px; TOP: 384px;"
	TxtInput_TabIndex='125' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtname04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='330px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt04' runat='server' title='數量04' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 512px; TOP: 387px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtamt04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit04' runat='server' title='單位04' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 581px; TOP: 389px;"
	TxtInput_TabIndex='127'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtunit04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote04' runat='server' title='備註04' ShowTitle='False'
	style="Z-INDEX:638; POSITION: absolute; LEFT: 861px; TOP: 384px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtnote04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp04' runat='server' title='廠商04' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 633px; TOP: 384px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtcomp04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime4' runat='server' Title='申請日期04' ShowTitle='False'
	style="POSITION: absolute; left: 753px; top: 388px; z-index: 650;" 
	TxtInput_TabIndex='130' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='datetime4'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno05' runat='server' title='本廠編號05' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 53px; TOP: 424px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtno05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname05' runat='server' title='名稱規格05' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 171px; TOP: 420px;"
	TxtInput_TabIndex='132' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtname05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='330px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt05' runat='server' title='數量05' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 512px; TOP: 425px;"
	TxtInput_TabIndex='133'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtamt05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit05' runat='server' title='單位05' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 581px; TOP: 425px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtunit05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote05' runat='server' title='備註05' ShowTitle='False'
	style="Z-INDEX:637; POSITION: absolute; LEFT: 862px; TOP: 420px;"
	TxtInput_TabIndex='135'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtnote05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp05' runat='server' title='廠商05' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 633px; TOP: 420px;"
	TxtInput_TabIndex='136'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtcomp05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime5' runat='server' Title='申請日期05' ShowTitle='False'
	style="POSITION: absolute; left: 753px; top: 427px; z-index: 649;" 
	TxtInput_TabIndex='137' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='datetime5'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno06' runat='server' title='本廠編號06' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 53px; TOP: 461px;"
	TxtInput_TabIndex='138'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtno06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname06' runat='server' title='名稱規格06' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 171px; TOP: 458px;"
	TxtInput_TabIndex='139' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtname06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='330px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt06' runat='server' title='數量06' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 512px; TOP: 461px;"
	TxtInput_TabIndex='140'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtamt06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit06' runat='server' title='單位06' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 581px; TOP: 462px;"
	TxtInput_TabIndex='141'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtunit06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote06' runat='server' title='備註06' ShowTitle='False'
	style="Z-INDEX:644; POSITION: absolute; LEFT: 861px; TOP: 458px;"
	TxtInput_TabIndex='142'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtnote06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp06' runat='server' title='廠商06' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 633px; TOP: 458px;"
	TxtInput_TabIndex='143'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtcomp06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime6' runat='server' Title='申請日期06' ShowTitle='False'
	style="POSITION: absolute; left: 753px; top: 462px; z-index: 648;" 
	TxtInput_TabIndex='144' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='datetime6'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno07' runat='server' title='本廠編號07' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 53px; TOP: 499px;"
	TxtInput_TabIndex='145'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtno07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname07' runat='server' title='名稱規格07' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 171px; TOP: 495px;"
	TxtInput_TabIndex='146' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtname07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='330px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt07' runat='server' title='數量07' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 513px; TOP: 500px;"
	TxtInput_TabIndex='147'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtamt07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit07' runat='server' title='單位07' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 582px; TOP: 501px;"
	TxtInput_TabIndex='148'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtunit07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote07' runat='server' title='備註07' ShowTitle='False'
	style="Z-INDEX:643; POSITION: absolute; LEFT: 861px; TOP: 495px;"
	TxtInput_TabIndex='149'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtnote07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp07' runat='server' title='廠商07' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 634px; TOP: 495px;"
	TxtInput_TabIndex='150'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtcomp07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime7' runat='server' Title='申請日期07' ShowTitle='False'
	style="POSITION: absolute; left: 753px; top: 499px; z-index: 647;" 
	TxtInput_TabIndex='151' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='datetime7'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtno08' runat='server' title='本廠編號08' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 53px; TOP: 536px;"
	TxtInput_TabIndex='152'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtno08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname08' runat='server' title='名稱規格08' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 170px; TOP: 532px;"
	TxtInput_TabIndex='153' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtname08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='330px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt08' runat='server' title='數量08' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 512px; TOP: 536px;"
	TxtInput_TabIndex='154'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtamt08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtunit08' runat='server' title='單位08' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 581px; TOP: 536px;"
	TxtInput_TabIndex='155'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtunit08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtnote08' runat='server' title='備註08' ShowTitle='False'
	style="Z-INDEX:642; POSITION: absolute; LEFT: 861px; TOP: 532px;"
	TxtInput_TabIndex='156'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtnote08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp08' runat='server' title='廠商08' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 633px; TOP: 532px;"
	TxtInput_TabIndex='157'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtcomp08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='33px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime8' runat='server' Title='申請日期08' ShowTitle='False'
	style="POSITION: absolute; left: 753px; top: 536px; z-index: 646;" 
	TxtInput_TabIndex='158' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='datetime8'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtresaon' runat='server' title='textarea1' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 29px; TOP: 587px;"
	TxtInput_TabIndex='159' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtresaon'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='950px' Height='45px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscOpenQuery id='empl1' runat='server' title='申請人工號' ShowTitle='False'
	style="Z-INDEX: 699; POSITION: absolute; LEFT: 17px; TOP: 19px;"
	TxtInput_TabIndex='180' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='99px' Height='25px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='empl1'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscTextBox id='txtdept' runat='server' title='申請部門' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 13px; TOP: 47px;"
	TxtInput_TabIndex='200'>
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='txtdept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='115px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='rddept' runat='server' title='採購、研發單位 Bộ phận mua bán, công trình' ShowTitle='False'
	style="display:none;Z-INDEX:700; POSITION: absolute; LEFT: 141px; TOP: 134px;">
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='rddept'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rddept_ctrolRadio0' runat='server' GroupName='rddept' Text='' Value='0' style='position:absolute;top:134px;left:141px;z-index:700;'/>
<asp:RadioButton ID='rddept_ctrolRadio1' runat='server' GroupName='rddept' Text='' Value='1' style='position:absolute;top:134px;left:333px;z-index:700;'/>
<cc1:DscTextBox id='rditem' runat='server' title='設備   Thiết bị/Phụ kiện' ShowTitle='False'
	style="display:none;Z-INDEX:700; POSITION: absolute; LEFT: 142px; TOP: 177px;">
	<FrmFieldKeys FrmID='FrmODMAPYMVE01' BOID='ODMAPYMVE01' FieldName='rditem'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rditem_ctrolRadio0' runat='server' GroupName='rditem' Text='' Value='0' style='position:absolute;top:177px;left:142px;z-index:700;'/>
<asp:RadioButton ID='rditem_ctrolRadio1' runat='server' GroupName='rditem' Text='' Value='1' style='position:absolute;top:177px;left:253px;z-index:700;'/>
<asp:RadioButton ID='rditem_ctrolRadio2' runat='server' GroupName='rditem' Text='' Value='2' style='position:absolute;top:177px;left:331px;z-index:700;'/>
<asp:RadioButton ID='rditem_ctrolRadio3' runat='server' GroupName='rditem' Text='' Value='3' style='position:absolute;top:177px;left:636px;z-index:700;'/>
<asp:RadioButton ID='rditem_ctrolRadio4' runat='server' GroupName='rditem' Text='' Value='4' style='position:absolute;top:177px;left:458px;z-index:700;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMAPYMVE.png" id="Head01_file_1" runat="server" width="1039" height="656" />
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
<script src="ODMAPYMVE01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
