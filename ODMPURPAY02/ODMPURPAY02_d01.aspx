<%@ Page language="c#" CodeFile="ODMPURPAY02_d01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMPURPAY02_d01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
@RegisterTag
<asp:Content ID="ODMPURPAY02_d01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMPURPAY02_d01" FrmDefineKeys-BOID="ODMPURPAY02_d01"
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
						<cc1:DscPanel ID='ecPnlDetail1' runat='server' FrmDefineKeys-BOID='ODMPURPAY02_d01' FrmDefineKeys-FrmID='FrmODMPURPAY02_d01' FrmDefineKeys-FrmType='Query'
							BorderStyle='None' BorderColor='Transparent' BorderWidth='0px'
							IniHTML="<div style='OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%;' ms_positioning='GridLayout'></div>"
							Width='100%' Height='0px'>
							<cc1:DscPanel ID='divDetail1Default' runat='server' FrmDefineKeys-BOID='ODMPURPAY02_d01' FrmDefineKeys-FrmID='FrmODMPURPAY02_d01' FrmDefineKeys-FrmType='Query'
								BorderStyle='None' BorderColor='Transparent' BorderWidth='0px'
								IniHTML="<div style='OVERFLOW: auto; WIDTH: 98%; POSITION: relative; HEIGHT: 100%;' ms_positioning='GridLayout'></div>"
								Width='894px' Height='152px' style='position:relative;'>
<cc1:DscTextBox id='odmpurpay02b1001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='odmpurpay02b1001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmpurpay02b1002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='odmpurpay02b1002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='odmpurpay02b1003' runat='server' title='序號'
	style='display: none; Z-INDEX: 700; POSITION: absolute; LEFT: 245px; TOP: 82px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px' CssClass='Edit20'></INPUTSTYLE>
	<TITLESTYLE Width='100px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='odmpurpay02b1003'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='lblno' runat='server' Style="z-index:698; position: absolute; left: 37px; top: 13px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='單號' Width='40px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblnob' runat='server' Style="z-index:697; position: absolute; left: 37px; top: 46px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='品號' Width='39px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblpdname' runat='server' Style="z-index:696; position: absolute; left: 37px; top: 77px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='品名' Width='39px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblprice' runat='server' Style="z-index:671; position: absolute; left: 381px; top: 13px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='單價' Width='35px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblpurprice' runat='server' Style="z-index:665; position: absolute; left: 509px; top: 13px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='採購金額' Width='70px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblqry' runat='server' Style="z-index:679; position: absolute; left: 235px; top: 13px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='數量' Width='37px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblspeci' runat='server' Style="z-index:680; position: absolute; left: 234px; top: 46px; vertical-align:middle;font-family:'Arial';font-size:12pt;" Text='規格' Width='40px' Height='22px'></cc1:DscLabel>
<cc1:DscOpenQuery id='querypurtc' runat='server' title='採購單號' ShowTitle='False'
	style="Z-INDEX: 691; POSITION: absolute; LEFT: 74px; TOP: 11px;"
	TxtInput_TabIndex='114' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='130px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='querypurtc'></FrmFieldKeys>
</cc1:DscOpenQuery>
<div style="display:none;">
<cc1:DscTextBox id='td004' runat='server' title='採購單號' ShowTitle='False'
	style="Z-INDEX:645; POSITION: absolute; LEFT: 745px; TOP: 48px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='td004'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='93px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='td006' runat='server' title='規格' ShowTitle='False'
	style="Z-INDEX:673; POSITION: absolute; LEFT: 270px; TOP: 45px;"
	TxtInput_TabIndex='116' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='td006'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='450px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='td008' runat='server' title='數量' ShowTitle='False'
	style="Z-INDEX:674; POSITION: absolute; LEFT: 269px; TOP: 12px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='td008'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='td010' runat='server' title='單價' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 413px; TOP: 12px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='td010'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='td011' runat='server' title='採購金額' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 576px; TOP: 12px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='td011'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purnob' runat='server' title='品號' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 74px; TOP: 45px;"
	TxtInput_TabIndex='150'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='purnob'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='118px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='purnoname' runat='server' title='品名' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 74px; TOP: 76px;"
	TxtInput_TabIndex='151'>
	<FrmFieldKeys FrmID='FrmODMPURPAY02_d01' BOID='ODMPURPAY02_d01' FieldName='purnoname'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='118px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

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
<script src="ODMPURPAY02_d01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
