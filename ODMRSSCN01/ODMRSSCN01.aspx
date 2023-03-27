<%@ Page language="c#" CodeFile="ODMRSSCN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMRSSCN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMRSSCN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMRSSCN01" FrmDefineKeys-BOID="ODMRSSCN01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="510px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='510px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 510px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmrsscn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='odmrsscn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmrsscn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='odmrsscn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 89px; TOP: 67px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='87px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='userdate' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 623px; top: 66px; z-index: 669;" 
	TxtInput_TabIndex='102' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='89px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='userdate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='grant01' runat='server' title='grant01' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 293px; TOP: 142px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='grant01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='150px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='money01' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 452px; TOP: 142px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit01' runat='server' title='debit01' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 535px; TOP: 142px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='debit01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note01' runat='server' title='note01' ShowTitle='False'
	style="Z-INDEX:668; POSITION: absolute; LEFT: 651px; TOP: 142px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='note01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept01' runat='server' title='dept01' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 191px; TOP: 142px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='dept01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='grant02' runat='server' title='grant02' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 293px; TOP: 189px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='grant02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='150px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='money02' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 452px; TOP: 189px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit02' runat='server' title='debit02' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 535px; TOP: 189px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='debit02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note02' runat='server' title='note02' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 651px; TOP: 189px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='note02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept02' runat='server' title='dept02' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 191px; TOP: 189px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='dept02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='grant03' runat='server' title='grant03' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 293px; TOP: 232px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='grant03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='150px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='money03' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 452px; TOP: 232px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit03' runat='server' title='debit03' ShowTitle='False'
	style="Z-INDEX:672; POSITION: absolute; LEFT: 535px; TOP: 232px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='debit03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note03' runat='server' title='note03' ShowTitle='False'
	style="Z-INDEX:666; POSITION: absolute; LEFT: 651px; TOP: 232px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='note03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept03' runat='server' title='dept03' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 191px; TOP: 232px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='dept03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='grant04' runat='server' title='grant04' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 293px; TOP: 277px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='grant04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='150px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money04' runat='server' title='money04' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 452px; TOP: 277px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit04' runat='server' title='debit04' ShowTitle='False'
	style="Z-INDEX:671; POSITION: absolute; LEFT: 535px; TOP: 277px;"
	TxtInput_TabIndex='125'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='debit04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note04' runat='server' title='note04' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 651px; TOP: 277px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='note04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept04' runat='server' title='dept04' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 191px; TOP: 277px;"
	TxtInput_TabIndex='127'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='dept04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='grant05' runat='server' title='grant05' ShowTitle='False'
	style="Z-INDEX:680; POSITION: absolute; LEFT: 293px; TOP: 317px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='grant05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='150px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money05' runat='server' title='money05' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 452px; TOP: 317px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='money05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='debit05' runat='server' title='debit05' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 535px; TOP: 317px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='debit05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note05' runat='server' title='note05' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 651px; TOP: 317px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='note05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept05' runat='server' title='dept05' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 191px; TOP: 317px;"
	TxtInput_TabIndex='133'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='dept05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id01' runat='server' title='id01' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 24px; TOP: 142px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='id01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id02' runat='server' title='id02' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 24px; TOP: 189px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='id02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id03' runat='server' title='id03' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 24px; TOP: 232px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='id03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id04' runat='server' title='id04' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 24px; TOP: 277px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='id04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='id05' runat='server' title='id05' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 24px; TOP: 317px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='id05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name01' runat='server' title='name01' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 108px; TOP: 142px;"
	TxtInput_TabIndex='135'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='name01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name02' runat='server' title='name02' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 108px; TOP: 189px;"
	TxtInput_TabIndex='135'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='name02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name03' runat='server' title='name03' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 108px; TOP: 232px;"
	TxtInput_TabIndex='135'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='name03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name04' runat='server' title='name04' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 108px; TOP: 277px;"
	TxtInput_TabIndex='135'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='name04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name05' runat='server' title='name05' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 108px; TOP: 317px;"
	TxtInput_TabIndex='135'>
	<FrmFieldKeys FrmID='FrmODMRSSCN01' BOID='ODMRSSCN01' FieldName='name05'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="RSSCN.png" id="Head01_file_1" runat="server" width="812" height="475" />
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
<script src="ODMRSSCN01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
