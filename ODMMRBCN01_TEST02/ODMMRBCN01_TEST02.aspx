<%@ Page language="c#" CodeFile="ODMMRBCN01_TEST02.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMMRBCN01_TEST02" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMMRBCN01_TEST02FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMMRBCN01_TEST02" FrmDefineKeys-BOID="ODMMRBCN01_TEST02"
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

<cc1:DscTextBox id='odmmrbcntest02001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='odmmrbcntest02001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmmrbcntest02002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='odmmrbcntest02002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscTextBox id='dept' runat='server' title='申請部門' ShowTitle='False'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 89px; TOP: 78px;"
	TxtInput_TabIndex='101'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='dept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='90px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='name' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 297px; TOP: 78px;"
	TxtInput_TabIndex='102'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='name'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtno' runat='server' title='編號' ShowTitle='False'
	style="Z-INDEX:675; POSITION: absolute; LEFT: 454px; TOP: 112px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='txtno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtordno' runat='server' title='訂單號碼' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 197px; TOP: 150px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='txtordno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='145px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpdname' runat='server' title='產品名稱' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 197px; TOP: 186px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='txtpdname'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='145px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpdno' runat='server' title='產品編號' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 454px; TOP: 150px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='txtpdno'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtpdqty' runat='server' title='產品數量' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 454px; TOP: 186px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='txtpdqty'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtreason' runat='server' title='問題原因' ShowTitle='False'
	style="Z-INDEX:698; POSITION: absolute; LEFT: 86px; TOP: 228px;"
	TxtInput_TabIndex='110' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='txtreason'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='500px' Height='110px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='condate' runat='server' Title='會議日期' ShowTitle='False'
	style="POSITION: absolute; left: 495px; top: 78px; z-index: 669;" 
	TxtInput_TabIndex='111' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='89px' Height='24px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='condate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<div style="display:none;">
<cc1:DscTextBox id='superid' runat='server' title='填表人直屬主管' ShowTitle='False'
	style="Z-INDEX:700; POSITION: absolute; LEFT: 13px; TOP: 44px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='superid'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='105px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
</div>
<cc1:DscTextBox id='director01' runat='server' title='品保主管' ShowTitle='False'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 91px; TOP: 353px;"
	TxtInput_TabIndex='123'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='director01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='director02' runat='server' title='工程主管' ShowTitle='False'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 91px; TOP: 393px;"
	TxtInput_TabIndex='124'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='director02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chk01_1' runat='server' Text='退貨' ShowTitle='False'
	Style="z-index:692; position: absolute; left: 186px; top: 359px;"
	CheckBoxInput_TabIndex='125'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='17px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk01_1'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk01_2' runat='server' Text='可用' ShowTitle='False'
	Style="z-index:683; position: absolute; left: 274px; top: 359px;"
	CheckBoxInput_TabIndex='126'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk01_2'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk02_2' runat='server' Text='可用' ShowTitle='False'
	Style="z-index:684; position: absolute; left: 274px; top: 400px;"
	CheckBoxInput_TabIndex='126'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk02_2'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk03_2' runat='server' Text='可用' ShowTitle='False'
	Style="z-index:685; position: absolute; left: 274px; top: 438px;"
	CheckBoxInput_TabIndex='126'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk03_2'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk04_2' runat='server' Text='可用' ShowTitle='False'
	Style="z-index:686; position: absolute; left: 274px; top: 477px;"
	CheckBoxInput_TabIndex='126'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='21px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk04_2'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk01_3' runat='server' Text='翻工/揀用' ShowTitle='False'
	Style="z-index:681; position: absolute; left: 354px; top: 359px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='25px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk01_3'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk02_3' runat='server' Text='翻工/揀用' ShowTitle='False'
	Style="z-index:680; position: absolute; left: 354px; top: 400px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='25px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk02_3'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk03_3' runat='server' Text='翻工/揀用' ShowTitle='False'
	Style="z-index:679; position: absolute; left: 354px; top: 438px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='25px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk03_3'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk04_3' runat='server' Text='翻工/揀用' ShowTitle='False'
	Style="z-index:678; position: absolute; left: 354px; top: 477px;"
	CheckBoxInput_TabIndex='127'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='25px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk04_3'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk01_4' runat='server' Text='特采' ShowTitle='False'
	Style="z-index:671; position: absolute; left: 466px; top: 360px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='22px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk01_4'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk02_4' runat='server' Text='特采' ShowTitle='False'
	Style="z-index:672; position: absolute; left: 466px; top: 400px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='22px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk02_4'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk03_4' runat='server' Text='特采' ShowTitle='False'
	Style="z-index:673; position: absolute; left: 466px; top: 438px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='22px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk03_4'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk04_4' runat='server' Text='特采' ShowTitle='False'
	Style="z-index:674; position: absolute; left: 466px; top: 477px;"
	CheckBoxInput_TabIndex='128'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='22px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk04_4'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk01_5' runat='server' Text='報廢' ShowTitle='False'
	Style="z-index:668; position: absolute; left: 538px; top: 359px;"
	CheckBoxInput_TabIndex='129'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='25px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk01_5'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk02_5' runat='server' Text='報廢' ShowTitle='False'
	Style="z-index:667; position: absolute; left: 538px; top: 400px;"
	CheckBoxInput_TabIndex='129'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='25px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk02_5'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk03_5' runat='server' Text='報廢' ShowTitle='False'
	Style="z-index:666; position: absolute; left: 538px; top: 438px;"
	CheckBoxInput_TabIndex='129'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='25px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk03_5'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk04_5' runat='server' Text='報廢' ShowTitle='False'
	Style="z-index:665; position: absolute; left: 538px; top: 477px;"
	CheckBoxInput_TabIndex='129'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='25px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk04_5'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='director03' runat='server' title='市場主管' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 91px; TOP: 433px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='director03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscCheckBox ID='chk02_1' runat='server' Text='退貨' ShowTitle='False'
	Style="z-index:691; position: absolute; left: 186px; top: 400px;"
	CheckBoxInput_TabIndex='131'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk02_1'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk03_1' runat='server' Text='退貨' ShowTitle='False'
	Style="z-index:690; position: absolute; left: 186px; top: 438px;"
	CheckBoxInput_TabIndex='131'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk03_1'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscCheckBox ID='chk04_1' runat='server' Text='退貨' ShowTitle='False'
	Style="z-index:689; position: absolute; left: 186px; top: 477px;"
	CheckBoxInput_TabIndex='131'
	Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
	<InputStyle Width='18px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='chk04_1'></FrmFieldKeys>
</cc1:DscCheckBox>
<cc1:DscTextBox id='testnum' runat='server' title='測試欄位' ShowTitle='False'
	style="Z-INDEX:670; POSITION: absolute; LEFT: 487px; TOP: 46px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='testnum'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='100px' Height='24px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='director04' runat='server' title='生產經理' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 91px; TOP: 471px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='director04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='80px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='rditem' runat='server' title='原材料' ShowTitle='False'
	style="display:none;Z-INDEX:693; POSITION: absolute; LEFT: 89px; TOP: 120px;">
	<FrmFieldKeys FrmID='FrmODMMRBCN01_TEST02' BOID='ODMMRBCN01_TEST02' FieldName='rditem'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rditem_ctrolRadio0' runat='server' GroupName='rditem' Text='' Value='0' style='position:absolute;top:120px;left:89px;z-index:693;'/>
<asp:RadioButton ID='rditem_ctrolRadio1' runat='server' GroupName='rditem' Text='' Value='1' style='position:absolute;top:120px;left:184px;z-index:693;'/>
<asp:RadioButton ID='rditem_ctrolRadio2' runat='server' GroupName='rditem' Text='' Value='2' style='position:absolute;top:120px;left:261px;z-index:693;'/>

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
<script src="ODMMRBCN01_TEST02.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
