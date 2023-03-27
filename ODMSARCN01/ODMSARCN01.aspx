<%@ Page language="c#" CodeFile="ODMSARCN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMSARCN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMSARCN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMSARCN01" FrmDefineKeys-BOID="ODMSARCN01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="555px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='555px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 555px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmsarcn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='odmsarcn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmsarcn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='odmsarcn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscDateAssistant2 ID='datetime' runat='server' Title='時間' ShowTitle='False'
	style="POSITION: absolute; left: 28px; top: 175px; z-index: 698;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='75px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='datetime'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 135px; TOP: 175px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='87px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name' runat='server' title='姓名' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 236px; TOP: 175px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='name'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='95px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtemp' runat='server' title='職務' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 344px; TOP: 175px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='txtemp'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='83px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='chagedate' runat='server' Title='異動時間' ShowTitle='False'
	style="POSITION: absolute; left: 441px; top: 175px; z-index: 688;" 
	TxtInput_TabIndex='107' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='chagedate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='chagedept' runat='server' title='異動後部門' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 552px; TOP: 181px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='chagedept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='120px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='chageemp' runat='server' title='異動後職務' ShowTitle='False'
	style="Z-INDEX:681; POSITION: absolute; LEFT: 837px; TOP: 175px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='chageemp'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='124px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='chagereason' runat='server' title='異動原因' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 35px; TOP: 250px;"
	TxtInput_TabIndex='110' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='chagereason'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='900px' Height='132px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='oldsalary' runat='server' title='試用/原薪資' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 139px; TOP: 406px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='oldsalary'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='newsalary' runat='server' title='轉正異動後薪資' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 140px; TOP: 461px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='newsalary'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='oldbouns' runat='server' title='試用/原津貼' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 345px; TOP: 405px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='oldbouns'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='newbouns' runat='server' title='轉正/異動津貼' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 348px; TOP: 460px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='newbouns'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='78px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='oldother' runat='server' title='試用/原 其他' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 550px; TOP: 406px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='oldother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='300px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='newother' runat='server' title='轉正/異動 其他' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 550px; TOP: 457px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='newother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='300px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscTextBox id='autherid' runat='server' title='填表人ID' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 21px; TOP: 9px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='autherid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='84px' Height='24px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscTextBox id='supervisorid' runat='server' title='直屬主管ID' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 20px; TOP: 32px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='supervisorid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='84px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscOpenQuery id='opendept' runat='server' title='異動部門' ShowTitle='False'
	style="Z-INDEX: 685; POSITION: absolute; LEFT: 552px; TOP: 156px;"
	TxtInput_TabIndex='119' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='54px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='opendept'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='deptid' runat='server' title='經理ID' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 706px; TOP: 181px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='deptid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opendeptmag' runat='server' title='經理開窗' ShowTitle='False'
	style="Z-INDEX: 682; POSITION: absolute; LEFT: 706px; TOP: 156px;"
	TxtInput_TabIndex='121' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='47px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='opendeptmag'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='rdemp' runat='server' title='新入職' ShowTitle='False'
	style="display:none;Z-INDEX:682; POSITION: absolute; LEFT: 353px; TOP: 95px;">
	<FrmFieldKeys FrmID='FrmODMSARCN01' BOID='ODMSARCN01' FieldName='rdemp'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rdemp_ctrolRadio0' runat='server' GroupName='rdemp' Text='' Value='0' style='position:absolute;top:95px;left:353px;z-index:682;'/>
<asp:RadioButton ID='rdemp_ctrolRadio1' runat='server' GroupName='rdemp' Text='' Value='1' style='position:absolute;top:121px;left:353px;z-index:682;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMSARCN.png" id="Head01_file_1" runat="server" width="1012" height="520" />
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
<script src="ODMSARCN01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
