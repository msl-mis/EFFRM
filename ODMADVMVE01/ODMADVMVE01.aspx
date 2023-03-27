<%@ Page language="c#" CodeFile="ODMADVMVE01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMADVMVE01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMADVMVE01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMADVMVE01" FrmDefineKeys-BOID="ODMADVMVE01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="590px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='590px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 590px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmadvmve01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='odmadvmve01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmadvmve01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='odmadvmve01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='name' runat='server' title='借支者姓名' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 212px; TOP: 123px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='name'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='76px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='dept' runat='server' title='部門' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 115px; TOP: 149px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='applydate' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 568px; top: 150px; z-index: 683;" 
	TxtInput_TabIndex='103' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='80px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='applydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<div style="display:none;">
<cc1:DscTextBox id='deptno' runat='server' title='部門代碼' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 739px; TOP: 211px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='deptno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='81px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='textarea1' runat='server' title='預支內容1' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 58px; TOP: 222px;"
	TxtInput_TabIndex='105' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='353px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea2' runat='server' title='預支內容2' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 58px; TOP: 274px;"
	TxtInput_TabIndex='106' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='textarea2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='353px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea3' runat='server' title='預支內容3' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 58px; TOP: 323px;"
	TxtInput_TabIndex='107' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='textarea3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='353px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea4' runat='server' title='預支內容4' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 58px; TOP: 374px;"
	TxtInput_TabIndex='108' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='textarea4'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='353px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money01' runat='server' title='金額01' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 424px; TOP: 230px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='money01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money02' runat='server' title='金額02' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 424px; TOP: 281px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='money02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money03' runat='server' title='金額03' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 424px; TOP: 330px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='money03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='money04' runat='server' title='金額04' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 424px; TOP: 383px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='money04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='85px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='totalmoney' runat='server' title='總金額' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 424px; TOP: 425px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='totalmoney'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='86px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note01' runat='server' title='備註01' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 521px; TOP: 223px;"
	TxtInput_TabIndex='114' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='note01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note02' runat='server' title='備註02' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 521px; TOP: 274px;"
	TxtInput_TabIndex='115' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='note02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note03' runat='server' title='備註03' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 521px; TOP: 324px;"
	TxtInput_TabIndex='116' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='note03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note04' runat='server' title='備註04' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 521px; TOP: 375px;"
	TxtInput_TabIndex='117' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='note04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='114px' Height='40px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='capital' runat='server' title='大寫' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 112px; TOP: 458px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='capital'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='255px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='checkdate' runat='server' Title='結帳時限' ShowTitle='False'
	style="POSITION: absolute; left: 290px; top: 489px; z-index: 693;" 
	TxtInput_TabIndex='119' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMADVMVE01' BOID='ODMADVMVE01' FieldName='checkdate'></FrmFieldKeys>
</cc1:DscDateAssistant2>

<div style="position:absolute; left:2px; top:5px; z-index:10; width: 651px;">
	<img src="ODMADVMVE.png" id="Head01_file_1" runat="server" width="696" height="555" />
   <br />
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
    <%-- 20230323 Peggy引用千分位js --%>
    <script src="../../_Common/OEM/JS/OEMUtils.js"></script>
<script src="ODMADVMVE01.js?NoCache=202303230008" type="text/javascript"></script>
</asp:Content>
