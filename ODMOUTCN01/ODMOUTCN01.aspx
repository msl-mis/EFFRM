<%@ Page language="c#" CodeFile="ODMOUTCN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMOUTCN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMOUTCN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMOUTCN01" FrmDefineKeys-BOID="ODMOUTCN01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="591px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='591px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 591px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmoutcn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='odmoutcn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmoutcn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='odmoutcn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 76px; TOP: 63px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='applydate' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 699px; top: 65px; z-index: 645;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='91px' Height='23px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='applydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='debtdate' runat='server' Title='結帳/扣款時間' ShowTitle='False'
	style="POSITION: absolute; left: 26px; top: 127px; z-index: 700;" 
	TxtInput_TabIndex='103' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='debtdate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='firm' runat='server' title='委外廠商' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 167px; TOP: 126px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='firm'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='103px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='scrap01' runat='server' title='生產廢料(kg)' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 411px; TOP: 126px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='scrap01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='scrap02' runat='server' title='回收廢料(kg)' ShowTitle='False'
	style="Z-INDEX:647; POSITION: absolute; LEFT: 515px; TOP: 126px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='scrap02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='scrap03' runat='server' title='回收比例(%)' ShowTitle='False'
	style="Z-INDEX:646; POSITION: absolute; LEFT: 614px; TOP: 126px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='scrap03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='principal' runat='server' title='單位負責人' ShowTitle='False'
	style="Z-INDEX:644; POSITION: absolute; LEFT: 714px; TOP: 126px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='principal'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit01' runat='server' title='扣款項目01' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 44px; TOP: 211px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='debit01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name01' runat='server' title='材料名稱01' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 163px; TOP: 211px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='name01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='outqty01' runat='server' title='超補數量01' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 288px; TOP: 211px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='outqty01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='uniprice01' runat='server' title='單價01' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 342px; TOP: 211px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='uniprice01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 411px; TOP: 211px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='amt01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note01' runat='server' title='備註01' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 511px; TOP: 211px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='note01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit02' runat='server' title='回款項目02' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 44px; TOP: 248px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='debit02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name02' runat='server' title='材料名稱02' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 163px; TOP: 248px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='name02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='outqty02' runat='server' title='超補數量02' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 288px; TOP: 248px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='outqty02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='uniprice02' runat='server' title='單價02' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 342px; TOP: 248px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='uniprice02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 411px; TOP: 248px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='amt02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note02' runat='server' title='備註02' ShowTitle='False'
	style="Z-INDEX:654; POSITION: absolute; LEFT: 511px; TOP: 248px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='note02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit03' runat='server' title='扣款項目03' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 44px; TOP: 285px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='debit03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name03' runat='server' title='材料名稱03' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 163px; TOP: 285px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='name03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='outqty03' runat='server' title='超補數量03' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 288px; TOP: 285px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='outqty03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='uniprice03' runat='server' title='單價03' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 342px; TOP: 285px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='uniprice03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 411px; TOP: 285px;"
	TxtInput_TabIndex='133'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='amt03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note03' runat='server' title='備註03' ShowTitle='False'
	style="Z-INDEX:653; POSITION: absolute; LEFT: 511px; TOP: 285px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='note03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit04' runat='server' title='扣款項目04' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 44px; TOP: 322px;"
	TxtInput_TabIndex='143'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='debit04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name04' runat='server' title='材料名稱04' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 163px; TOP: 322px;"
	TxtInput_TabIndex='144'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='name04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='outqty04' runat='server' title='超補數量04' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 288px; TOP: 322px;"
	TxtInput_TabIndex='145'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='outqty04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='uniprice04' runat='server' title='單價04' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 342px; TOP: 322px;"
	TxtInput_TabIndex='146'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='uniprice04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 411px; TOP: 322px;"
	TxtInput_TabIndex='147'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='amt04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note04' runat='server' title='備註04' ShowTitle='False'
	style="Z-INDEX:652; POSITION: absolute; LEFT: 511px; TOP: 322px;"
	TxtInput_TabIndex='148'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='note04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit05' runat='server' title='回款項目05' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 44px; TOP: 359px;"
	TxtInput_TabIndex='157'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='debit05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name05' runat='server' title='材料名稱05' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 163px; TOP: 359px;"
	TxtInput_TabIndex='158'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='name05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='outqty05' runat='server' title='超補數量05' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 288px; TOP: 359px;"
	TxtInput_TabIndex='159'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='outqty05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='uniprice05' runat='server' title='單價05' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 342px; TOP: 359px;"
	TxtInput_TabIndex='160'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='uniprice05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 411px; TOP: 359px;"
	TxtInput_TabIndex='161'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='amt05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note05' runat='server' title='備註05' ShowTitle='False'
	style="Z-INDEX:651; POSITION: absolute; LEFT: 511px; TOP: 359px;"
	TxtInput_TabIndex='162'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='note05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit06' runat='server' title='扣款項目06' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 44px; TOP: 396px;"
	TxtInput_TabIndex='171'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='debit06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name06' runat='server' title='材料名稱06' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 163px; TOP: 396px;"
	TxtInput_TabIndex='172'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='name06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='outqty06' runat='server' title='超補數量06' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 288px; TOP: 396px;"
	TxtInput_TabIndex='173'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='outqty06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='uniprice06' runat='server' title='單價06' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 342px; TOP: 396px;"
	TxtInput_TabIndex='174'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='uniprice06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt06' runat='server' title='金額06' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 411px; TOP: 396px;"
	TxtInput_TabIndex='175'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='amt06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note06' runat='server' title='備註06' ShowTitle='False'
	style="Z-INDEX:650; POSITION: absolute; LEFT: 511px; TOP: 396px;"
	TxtInput_TabIndex='176'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='note06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit07' runat='server' title='扣款項目07' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 44px; TOP: 433px;"
	TxtInput_TabIndex='185'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='debit07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name07' runat='server' title='材料名稱07' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 163px; TOP: 433px;"
	TxtInput_TabIndex='186'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='name07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='outqty07' runat='server' title='超補數量07' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 288px; TOP: 433px;"
	TxtInput_TabIndex='187'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='outqty07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='uniprice07' runat='server' title='單價07' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 342px; TOP: 433px;"
	TxtInput_TabIndex='188'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='uniprice07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt07' runat='server' title='金額07' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 411px; TOP: 433px;"
	TxtInput_TabIndex='189'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='amt07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note07' runat='server' title='備註07' ShowTitle='False'
	style="Z-INDEX:649; POSITION: absolute; LEFT: 511px; TOP: 433px;"
	TxtInput_TabIndex='190'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='note07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit08' runat='server' title='回款項目08' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 44px; TOP: 471px;"
	TxtInput_TabIndex='199'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='debit08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name08' runat='server' title='材料名稱08' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 163px; TOP: 471px;"
	TxtInput_TabIndex='200'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='name08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='outqty08' runat='server' title='超補數量08' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 288px; TOP: 471px;"
	TxtInput_TabIndex='201'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='outqty08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='uniprice08' runat='server' title='單價08' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 342px; TOP: 471px;"
	TxtInput_TabIndex='202'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='uniprice08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='amt08' runat='server' title='金額08' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 411px; TOP: 471px;"
	TxtInput_TabIndex='203'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='amt08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note08' runat='server' title='備註08' ShowTitle='False'
	style="Z-INDEX:648; POSITION: absolute; LEFT: 511px; TOP: 471px;"
	TxtInput_TabIndex='204'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='note08'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='280px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='totamt' runat='server' title='合計' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 413px; TOP: 507px;"
	TxtInput_TabIndex='205'>
	<FrmFieldKeys FrmID='FrmODMOUTCN01' BOID='ODMOUTCN01' FieldName='totamt'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMOUTCN01.png" id="Head01_file_1" runat="server" width="823" height="556" />
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
<script src="ODMOUTCN01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
