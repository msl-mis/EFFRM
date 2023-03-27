<%@ Page language="c#" CodeFile="ODMACEPCN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMACEPCN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMACEPCN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMACEPCN01" FrmDefineKeys-BOID="ODMACEPCN01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="661px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='661px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 661px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmacepcn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='odmacepcn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmacepcn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='odmacepcn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='txtidno' runat='server' title='訂單號碼' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 127px; TOP: 106px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='txtidno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='buyqty' runat='server' title='購入數量' ShowTitle='False'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 374px; TOP: 106px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='buyqty'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='buydate' runat='server' Title='購入日期' ShowTitle='False'
	style="POSITION: absolute; left: 608px; top: 105px; z-index: 684;" 
	TxtInput_TabIndex='105' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='buydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='acceptdated' runat='server' Title='驗收日期' ShowTitle='False'
	style="POSITION: absolute; left: 569px; top: 69px; z-index: 687;" 
	TxtInput_TabIndex='106' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='90px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='acceptdated'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtdept' runat='server' title='申請部門' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 127px; TOP: 167px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='txtdept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 374px; TOP: 160px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='audit' runat='server' title='審核' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 608px; TOP: 160px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='audit'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='usedept' runat='server' title='使用部門' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 127px; TOP: 237px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='usedept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='relatename' runat='server' title='相關類別名稱' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 374px; TOP: 230px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='relatename'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='qualified' runat='server' title='本廠編號' ShowTitle='False'
	style="Z-INDEX:686; POSITION: absolute; LEFT: 608px; TOP: 230px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='qualified'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='contect' runat='server' title='配件名稱數量' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 126px; TOP: 284px;"
	TxtInput_TabIndex='113' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='contect'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='520px' Height='49px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscOpenQuery id='opendetp' runat='server' title='使用部門' ShowTitle='False'
	style="Z-INDEX: 693; POSITION: absolute; LEFT: 127px; TOP: 210px;"
	TxtInput_TabIndex='114' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='55px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='opendetp'></FrmFieldKeys>
</cc1:DscOpenQuery>
<div style="display:none;">
<cc1:DscTextBox id='superid' runat='server' title='填表人直屬主管' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 8px; TOP: 3px;"
	TxtInput_TabIndex='115'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='superid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='109px' Height='27px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<div style="display:none;">
<cc1:DscTextBox id='authorid' runat='server' title='填表人ID' ShowTitle='False'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 9px; TOP: 33px;"
	TxtInput_TabIndex='116'>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='authorid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='103px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscOpenQuery id='opensection' runat='server' title='課別開窗' ShowTitle='False'
	style="Z-INDEX: 692; POSITION: absolute; LEFT: 127px; TOP: 140px;"
	TxtInput_TabIndex='117' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='opensection'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscTextBox id='kind' runat='server' title='生產設備' ShowTitle='False'
	style="display:none;Z-INDEX:698; POSITION: absolute; LEFT: 63px; TOP: 70px;">
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='kind'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='kind_ctrolRadio0' runat='server' GroupName='kind' Text='' Value='0' style='position:absolute;top:70px;left:63px;z-index:698;'/>
<asp:RadioButton ID='kind_ctrolRadio1' runat='server' GroupName='kind' Text='' Value='1' style='position:absolute;top:70px;left:148px;z-index:698;'/>
<div style="display:none;">
<cc1:DscTextBox id='rditem' runat='server' title='設備' ShowTitle='False'
	style="display:none;Z-INDEX:698; POSITION: absolute; LEFT: 537px; TOP: 4px;">
	<FrmFieldKeys FrmID='FrmODMACEPCN01' BOID='ODMACEPCN01' FieldName='rditem'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rditem_ctrolRadio0' runat='server' GroupName='rditem' Text='' Value='0' style='position:absolute;top:4px;left:537px;z-index:698;'/>
<asp:RadioButton ID='rditem_ctrolRadio1' runat='server' GroupName='rditem' Text='' Value='1' style='position:absolute;top:4px;left:567px;z-index:698;'/>
<asp:RadioButton ID='rditem_ctrolRadio2' runat='server' GroupName='rditem' Text='' Value='2' style='position:absolute;top:4px;left:598px;z-index:698;'/>
</div>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMACEPCN01.png" id="Head01_file_1" runat="server" width="751" height="626" />
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
<script src="ODMACEPCN01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
