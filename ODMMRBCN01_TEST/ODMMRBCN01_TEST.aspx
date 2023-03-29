<%@ Page language="c#" CodeFile="ODMMRBCN01_TEST.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMMRBCN01_TEST" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMMRBCN01_TESTFormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMMRBCN01_TEST" FrmDefineKeys-BOID="ODMMRBCN01_TEST"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="604px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='604px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 604px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmmrbcntest01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='odmmrbcntest01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmmrbcntest01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='odmmrbcntest01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='dept' runat='server' title='申請部門' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 89px; TOP: 78px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 297px; TOP: 78px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='name'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtno' runat='server' title='編號' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 454px; TOP: 112px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='txtno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtordno' runat='server' title='訂單號碼' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 197px; TOP: 150px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='txtordno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='145px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpdname' runat='server' title='產品名稱' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 197px; TOP: 186px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='txtpdname'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='145px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpdno' runat='server' title='產品編號' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 454px; TOP: 150px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='txtpdno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpdqty' runat='server' title='產品數量' ShowTitle='False'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 454px; TOP: 186px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='txtpdqty'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtreason' runat='server' title='問題原因' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 86px; TOP: 228px;"
	TxtInput_TabIndex='110' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='txtreason'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='500px' Height='110px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='condate' runat='server' Title='會議日期' ShowTitle='False'
	style="POSITION: absolute; left: 495px; top: 78px; z-index: 681;" 
	TxtInput_TabIndex='111' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='89px' Height='24px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='condate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<div style="display:none;">
<cc1:DscTextBox id='superid' runat='server' title='填表人直屬主管' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 13px; TOP: 44px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='superid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='105px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='director01' runat='server' title='品保主管' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 90px; TOP: 353px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='director01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='78px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='director02' runat='server' title='工程主管' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 91px; TOP: 391px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='director02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='73px' Height='24px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='checkbox1' runat='server' Text='checkbox1' ShowTitle='False'
	Style="z-index:691; position: absolute; left: 186px; top: 474px;"
	CheckBoxInput_TabIndex='125'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='checkbox1'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox2' runat='server' Text='checkbox2' ShowTitle='False'
	Style="z-index:688; position: absolute; left: 272px; top: 475px;"
	CheckBoxInput_TabIndex='126'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='checkbox2'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox3' runat='server' Text='checkbox3' ShowTitle='False'
	Style="z-index:686; position: absolute; left: 349px; top: 477px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='25px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='checkbox3'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox4' runat='server' Text='checkbox4' ShowTitle='False'
	Style="z-index:682; position: absolute; left: 461px; top: 474px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='22px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='checkbox4'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='checkbox5' runat='server' Text='checkbox5' ShowTitle='False'
	Style="z-index:680; position: absolute; left: 536px; top: 472px;"
	CheckBoxInput_TabIndex='129'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='25px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='checkbox5'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='director03' runat='server' title='director03' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 87px; TOP: 469px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='director03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='23px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='rditem' runat='server' title='原材料' ShowTitle='False'
	style="display:none;Z-INDEX:697; POSITION: absolute; LEFT: 90px; TOP: 120px;">
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='rditem'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rditem_ctrolRadio0' runat='server' GroupName='rditem' Text='' Value='0' style='position:absolute;top:120px;left:90px;z-index:697;'/>
<asp:RadioButton ID='rditem_ctrolRadio1' runat='server' GroupName='rditem' Text='' Value='1' style='position:absolute;top:120px;left:183px;z-index:697;'/>
<asp:RadioButton ID='rditem_ctrolRadio2' runat='server' GroupName='rditem' Text='' Value='2' style='position:absolute;top:120px;left:261px;z-index:697;'/>
<cc1:DscTextBox id='super1' runat='server' title='退貨' ShowTitle='False'
	style="display:none;Z-INDEX:697; POSITION: absolute; LEFT: 192px; TOP: 363px;">
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='super1'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='super1_ctrolRadio0' runat='server' GroupName='super1' Text='' Value='0' style='position:absolute;top:363px;left:192px;z-index:697;'/>
<asp:RadioButton ID='super1_ctrolRadio1' runat='server' GroupName='super1' Text='' Value='1' style='position:absolute;top:363px;left:278px;z-index:697;'/>
<asp:RadioButton ID='super1_ctrolRadio2' runat='server' GroupName='super1' Text='' Value='2' style='position:absolute;top:363px;left:358px;z-index:697;'/>
<asp:RadioButton ID='super1_ctrolRadio3' runat='server' GroupName='super1' Text='' Value='3' style='position:absolute;top:363px;left:471px;z-index:697;'/>
<asp:RadioButton ID='super1_ctrolRadio4' runat='server' GroupName='super1' Text='' Value='4' style='position:absolute;top:363px;left:543px;z-index:697;'/>
<cc1:DscTextBox id='super2' runat='server' title='退貨' ShowTitle='False'
	style="display:none;Z-INDEX:697; POSITION: absolute; LEFT: 191px; TOP: 401px;">
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST' BOID='ODMMRBCN01_TEST' FieldName='super2'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='super2_ctrolRadio0' runat='server' GroupName='super2' Text='' Value='0' style='position:absolute;top:401px;left:191px;z-index:697;'/>
<asp:RadioButton ID='super2_ctrolRadio1' runat='server' GroupName='super2' Text='' Value='1' style='position:absolute;top:401px;left:277px;z-index:697;'/>
<asp:RadioButton ID='super2_ctrolRadio2' runat='server' GroupName='super2' Text='' Value='2' style='position:absolute;top:401px;left:360px;z-index:697;'/>
<asp:RadioButton ID='super2_ctrolRadio3' runat='server' GroupName='super2' Text='' Value='3' style='position:absolute;top:401px;left:472px;z-index:697;'/>
<asp:RadioButton ID='super2_ctrolRadio4' runat='server' GroupName='super2' Text='' Value='4' style='position:absolute;top:401px;left:542px;z-index:697;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="ODMMRBTEST.png" id="Head01_file_1" runat="server" width="623" height="569" />
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
<script src="ODMMRBCN01_TEST.js?NoCache=202303220004" type="text/javascript"></script>
</asp:Content>
