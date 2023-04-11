<%@ Page language="c#" CodeFile="ODMDUTEST_d01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMDUTEST_d01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
@RegisterTag
<asp:Content ID="ODMDUTEST_d01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMDUTEST_d01" FrmDefineKeys-BOID="ODMDUTEST_d01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="@divHeadHeightpx">
					<!--單頭頁籤-->
					<iewc:TabStrip id="TabStrip1" runat="server" 
						TabDefaultStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);" 
						TabHoverStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);" 
						TabSelectedStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);" 
						CssClass="divToolBar2" ><table><tr><td height='5'></td></tr></table>
					<!--單身頁籤-->
					<iewc:TabStrip id='TabStrip2' runat='server' CssClass='divToolBar2'
						TabDefaultStyle='background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);'
						TabHoverStyle='background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);'
						TabSelectedStyle='background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);'>
						<iewc:Tab ID="bodyDefault" Text="單身頁籤1" DefaultStyle="width:100px;height:27px;vertical-align:middle;text-align:center;"></iewc:Tab>
					</iewc:TabStrip>

					</iewc:TabStrip>
					<!--單頭頁籤畫面集合-->

					<!--單身Grid 一 的各個dsc元件-->
					<div id='divbodyDefault' runat='server' class='TabPage' style='DISPLAY: block; OVERFLOW: hidden; WIDTH: 100%; BACKGROUND-REPEAT: repeat;'>
						<cc1:DscPanel ID='ecPnlDetail1' runat='server' FrmDefineKeys-BOID='ODMDUTEST_d01' FrmDefineKeys-FrmID='FrmODMDUTEST_d01' FrmDefineKeys-FrmType='Query'
							BorderStyle='None' BorderColor='Transparent' BorderWidth='0px'
							IniHTML="<div style='OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%;' ms_positioning='GridLayout'></div>"
							Width='100%' Height='0px'>
							<cc1:DscPanel ID='divDetail1Default' runat='server' FrmDefineKeys-BOID='ODMDUTEST_d01' FrmDefineKeys-FrmID='FrmODMDUTEST_d01' FrmDefineKeys-FrmType='Query'
								BorderStyle='None' BorderColor='Transparent' BorderWidth='0px'
								IniHTML="<div style='OVERFLOW: auto; WIDTH: 98%; POSITION: relative; HEIGHT: 100%;' ms_positioning='GridLayout'></div>"
								Width='100%' Height='168px' style='position:relative;'>
<cc1:DscTextBox id='odmdutestd01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMDUTEST_d01' BOID='ODMDUTEST_d01' FieldName='odmdutestd01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmdutestd01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMDUTEST_d01' BOID='ODMDUTEST_d01' FieldName='odmdutestd01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='odmdutestd01003' runat='server' title='序號'
	style='display: none; Z-INDEX: 700; POSITION: absolute; LEFT: 245px; TOP: 82px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px' CssClass='Edit20'></INPUTSTYLE>
	<TITLESTYLE Width='100px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMDUTEST_d01' BOID='ODMDUTEST_d01' FieldName='odmdutestd01003'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscOpenQuery id='newopenquery1' runat='server' title='人員代號' ShowTitle='True'
	style="Z-INDEX: 698; POSITION: absolute; LEFT: 9px; TOP: 74px;"
	TxtInput_TabIndex='105' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMDUTEST_d01' BOID='ODMDUTEST_d01' FieldName='newopenquery1'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='newopenquery2' runat='server' title='部門' ShowTitle='True'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 8px; TOP: 42px;"
	TxtInput_TabIndex='105' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='28px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMDUTEST_d01' BOID='ODMDUTEST_d01' FieldName='newopenquery2'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='text1' runat='server' title='金額'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 9px; TOP: 93px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMDUTEST_d01' BOID='ODMDUTEST_d01' FieldName='text1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='dept1' runat='server' title='dept1' ShowTitle='True'
	style="Z-INDEX: 694; POSITION: absolute; LEFT: 123px; TOP: 44px;"
	TxtInput_TabIndex='108' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='96px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMDUTEST_d01' BOID='ODMDUTEST_d01' FieldName='dept1'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscOpenQuery id='newopenquery3' runat='server' title='部門下員工開窗' ShowTitle='True'
	style="Z-INDEX: 693; POSITION: absolute; LEFT: 123px; TOP: 72px;"
	TxtInput_TabIndex='110' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='99px' Height='24px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMDUTEST_d01' BOID='ODMDUTEST_d01' FieldName='newopenquery3'></FrmFieldKeys>
</cc1:DscOpenQuery>

							</cc1:DscPanel>
							<uc1:gridusercontrol id='GridUserControl1' runat='server'></uc1:gridusercontrol>
						</cc1:DscPanel>
					</div>


					
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
@UpdatePanel
<!--引用JavaScript-->
<script src="ODMDUTEST_d01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
