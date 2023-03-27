<%@ Page language="c#" CodeFile="ODMSGNCN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMSGNCN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMSGNCN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMSGNCN01" FrmDefineKeys-BOID="ODMSGNCN01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="603px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='603px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 603px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmsgncn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMSGNCN01' BOID='ODMSGNCN01' FieldName='odmsgncn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmsgncn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMSGNCN01' BOID='ODMSGNCN01' FieldName='odmsgncn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='txtmain' runat='server' title='主旨' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 103px; TOP: 157px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMSGNCN01' BOID='ODMSGNCN01' FieldName='txtmain'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='560px' Height='27px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='textarea1' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 103px; TOP: 198px;"
	TxtInput_TabIndex='104' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMSGNCN01' BOID='ODMSGNCN01' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='560px' Height='330px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 95px; TOP: 92px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMSGNCN01' BOID='ODMSGNCN01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 556px; top: 92px; z-index: 694;" 
	TxtInput_TabIndex='106' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='95px' Height='21px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMSGNCN01' BOID='ODMSGNCN01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='text2' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 576px; TOP: 125px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMSGNCN01' BOID='ODMSGNCN01' FieldName='text2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscOpenQuery id='empl1' runat='server' title='填表人ID' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 18px; TOP: 6px;"
	TxtInput_TabIndex='108' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='123px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMSGNCN01' BOID='ODMSGNCN01' FieldName='empl1'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscOpenQuery id='empl2' runat='server' title='填表人直屬主管' ShowTitle='False'
	style="Z-INDEX: 699; POSITION: absolute; LEFT: 20px; TOP: 34px;"
	TxtInput_TabIndex='109' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='93px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMSGNCN01' BOID='ODMSGNCN01' FieldName='empl2'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscTextBox id='cate' runat='server' title='人事' ShowTitle='False'
	style="display:none;Z-INDEX:695; POSITION: absolute; LEFT: 124px; TOP: 128px;">
	<FrmFieldKeys FrmID='FrmODMSGNCN01' BOID='ODMSGNCN01' FieldName='cate'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='cate_ctrolRadio0' runat='server' GroupName='cate' Text='' Value='0' style='position:absolute;top:128px;left:124px;z-index:695;'/>
<asp:RadioButton ID='cate_ctrolRadio1' runat='server' GroupName='cate' Text='' Value='1' style='position:absolute;top:128px;left:189px;z-index:695;'/>
<asp:RadioButton ID='cate_ctrolRadio2' runat='server' GroupName='cate' Text='' Value='2' style='position:absolute;top:128px;left:256px;z-index:695;'/>
<asp:RadioButton ID='cate_ctrolRadio3' runat='server' GroupName='cate' Text='' Value='3' style='position:absolute;top:128px;left:520px;z-index:695;'/>
<asp:RadioButton ID='cate_ctrolRadio4' runat='server' GroupName='cate' Text='' Value='4' style='position:absolute;top:128px;left:354px;z-index:695;'/>
<asp:RadioButton ID='cate_ctrolRadio5' runat='server' GroupName='cate' Text='' Value='5' style='position:absolute;top:128px;left:428px;z-index:695;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="SGNCN_EF_1014(加獎懲).png" id="Head01_file_1" runat="server" width="702" height="568" />
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
<script src="ODMSGNCN01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
