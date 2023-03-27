<%@ Page language="c#" CodeFile="ODMMRRPCN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMMRRPCN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMMRRPCN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMMRRPCN01" FrmDefineKeys-BOID="ODMMRRPCN01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="605px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='605px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 605px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmmrrpcn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='odmmrrpcn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmmrrpcn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='odmmrrpcn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='txtno' runat='server' title='編號' ShowTitle='False'
	style="Z-INDEX:659; POSITION: absolute; LEFT: 709px; TOP: 110px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='75px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='date' runat='server' Title='製表日期' ShowTitle='False'
	style="POSITION: absolute; left: 461px; top: 110px; z-index: 672;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='90px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='date'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtuser' runat='server' title='製表人' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 265px; TOP: 110px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtuser'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtmain' runat='server' title='主旨' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 85px; TOP: 143px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtmain'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='600px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='areadescp' runat='server' title='說明內容' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 85px; TOP: 185px;"
	TxtInput_TabIndex='105' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='areadescp'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='700px' Height='210px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtdept' runat='server' title='發文部門' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 85px; TOP: 110px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtdept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='queryno' runat='server' title='工號姓名' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 52px; TOP: 445px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='queryno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 189px; TOP: 445px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpunish' runat='server' title='獎懲' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 262px; TOP: 445px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtpunish'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='58px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt' runat='server' title='金額' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 326px; TOP: 444px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtamt'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='queryno01' runat='server' title='工號姓名01' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 52px; TOP: 472px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='queryno01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept01' runat='server' title='部門01' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 189px; TOP: 472px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='dept01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpunish01' runat='server' title='獎懲01' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 262px; TOP: 472px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtpunish01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='58px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpunish02' runat='server' title='獎懲02' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 262px; TOP: 498px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtpunish02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='58px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept02' runat='server' title='部門02' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 189px; TOP: 498px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='dept02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 326px; TOP: 472px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtamt01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 326px; TOP: 498px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtamt02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='queryno02' runat='server' title='工號姓名02' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 52px; TOP: 498px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='queryno02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name' runat='server' title='姓名' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 115px; TOP: 445px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='name'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name01' runat='server' title='姓名01' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 115px; TOP: 472px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='name01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name02' runat='server' title='姓名02' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 115px; TOP: 498px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='name02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='queryno03' runat='server' title='工號姓名03' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 52px; TOP: 525px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='queryno03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name03' runat='server' title='姓名03' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 115px; TOP: 525px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='name03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name04' runat='server' title='姓名04' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 511px; TOP: 445px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='name04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name05' runat='server' title='姓名05' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 511px; TOP: 472px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='name05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name06' runat='server' title='姓名06' ShowTitle='False'
	style="Z-INDEX:669; POSITION: absolute; LEFT: 511px; TOP: 498px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='name06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name07' runat='server' title='姓名07' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 511px; TOP: 525px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='name07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept03' runat='server' title='部門03' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 189px; TOP: 525px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='dept03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpunish03' runat='server' title='獎懲03' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 262px; TOP: 525px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtpunish03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='58px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 326px; TOP: 526px;"
	TxtInput_TabIndex='127'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtamt03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='queryno04' runat='server' title='工號姓名04' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 453px; TOP: 445px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='queryno04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='55px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='queryno05' runat='server' title='工號姓名05' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 453px; TOP: 472px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='queryno05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='55px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='queryno06' runat='server' title='工號姓名06' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 453px; TOP: 498px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='queryno06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='55px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='queryno07' runat='server' title='工號姓名07' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 453px; TOP: 525px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='queryno07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='55px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept04' runat='server' title='部門04' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 584px; TOP: 445px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='dept04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept05' runat='server' title='部門05' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 584px; TOP: 472px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='dept05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept06' runat='server' title='部門06' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 584px; TOP: 498px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='dept06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept07' runat='server' title='部門07' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 584px; TOP: 525px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='dept07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpunish04' runat='server' title='獎懲04' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 666px; TOP: 445px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtpunish04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpunish05' runat='server' title='獎懲05' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 666px; TOP: 472px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtpunish05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpunish06' runat='server' title='獎懲06' ShowTitle='False'
	style="Z-INDEX:661; POSITION: absolute; LEFT: 666px; TOP: 498px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtpunish06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpunish07' runat='server' title='獎懲07' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 666px; TOP: 525px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtpunish07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='60px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 736px; TOP: 445px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtamt04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt05' runat='server' title='金額05' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 736px; TOP: 472px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtamt05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt06' runat='server' title='金額06' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 736px; TOP: 498px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtamt06'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt07' runat='server' title='金額07' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 736px; TOP: 526px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMMRRPCN01' BOID='ODMMRRPCN01' FieldName='txtamt07'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="EF通告_獎懲.png" id="Head01_file_1" runat="server" width="841" height="570" />
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
<script src="ODMMRRPCN01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
