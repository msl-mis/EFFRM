<%@ Page language="c#" CodeFile="ODMULLBCN01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMULLBCN01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMULLBCN01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMULLBCN01" FrmDefineKeys-BOID="ODMULLBCN01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="400px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='400px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 400px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmullbcn01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='odmullbcn01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmullbcn01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='odmullbcn01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='label1' runat='server' Style="z-index:688; position: absolute; left: 324px; top: 148px; vertical-align:middle;" Text='按產量收費/1000FT' Width='120px' Height='32px'></cc1:DscLabel>
<cc1:DscOpenQuery id='open_idname' runat='server' title='材料名' ShowTitle='True'
	style="Z-INDEX: 694; POSITION: absolute; LEFT: 50px; TOP: 61px;"
	TxtInput_TabIndex='101' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/data.gif'
	ReturnVisible='True'>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='214px' Height='26px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='open_idname'></FrmFieldKeys>
</cc1:DscOpenQuery>
<cc1:DscDropDownList ID='prd_category' runat='server' Title='產品類別'
	Style="z-index:686; position: absolute; left: 418px; top: 62px;"
	DDLInput_TabIndex='102'>
	<Items>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='110px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='prd_category'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMULLBCN01_prd_category' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='factory' runat='server' Title='廠別'
	Style="z-index:681; position: absolute; left: 584px; top: 62px;"
	DDLInput_TabIndex='103'>
	<Items>
		<asp:ListItem Selected='False' Value='CN'>CN</asp:ListItem>
		<asp:ListItem Selected='False' Value='VN'>VN</asp:ListItem>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='67px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='factory'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMULLBCN01_factory' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='label_type' runat='server' Title='類別種類'
	Style="z-index:698; position: absolute; left: 46px; top: 107px;"
	DDLInput_TabIndex='104'>
	<Items>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='211px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='label_type'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMULLBCN01_label_type' />
</cc1:DscDropDownList>
<cc1:DscDropDownList ID='class' runat='server' Title='分類'
	Style="z-index:689; position: absolute; left: 303px; top: 107px;"
	DDLInput_TabIndex='105'>
	<Items>
	</Items>
	<TitleStyle Width='100px' />
	<InputStyle Width='72px' Height='22px' />
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='class'></FrmFieldKeys>
	<CommentList F0001='Combo' F0002='ODMULLBCN01_class' />
</cc1:DscDropDownList>
<cc1:DscTextBox id='invoice_no' runat='server' title='invoice_no'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 429px; TOP: 103px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='invoice_no'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='102px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='invoice_date' runat='server' Title='invoice_date'
	style="POSITION: absolute; left: 585px; top: 105px; z-index: 680;" 
	TxtInput_TabIndex='107'
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<TitleStyle Width='100px' />
	<InputStyle Width='114px' Height='28px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='invoice_date'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='length' runat='server' title='線長長度'
	style="Z-INDEX:697; POSITION: absolute; LEFT: 48px; TOP: 146px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='length'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='65px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='quantity' runat='server' title='購買卷數'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 202px; TOP: 147px;"
	TxtInput_TabIndex='109'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='quantity'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='74px' Height='27px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='fees_yield' runat='server' title='按產量收費'
	style="Z-INDEX:683; POSITION: absolute; LEFT: 451px; TOP: 146px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='fees_yield'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='130px' Height='28px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='fees_pcs' runat='server' title='標籤印刷費'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 602px; TOP: 147px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='fees_pcs'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='123px' Height='32px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='fees_1000pcs' runat='server' title='標籤印刷費pcs'
	style="Z-INDEX:695; POSITION: absolute; LEFT: 49px; TOP: 198px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='fees_1000pcs'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='92px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='fees_handling' runat='server' title='手續快遞費'
	style="Z-INDEX:691; POSITION: absolute; LEFT: 217px; TOP: 196px;"
	TxtInput_TabIndex='113'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='fees_handling'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='137px' Height='26px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='fees_service' runat='server' title='標誌服務費pc'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 427px; TOP: 193px;"
	TxtInput_TabIndex='114'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='fees_service'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='106px' Height='27px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='note' runat='server' title='備註'
	style="Z-INDEX:696; POSITION: absolute; LEFT: 48px; TOP: 298px;"
	TxtInput_TabIndex='115' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='note'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='330px' Height='52px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<hr ID='linecontrol1' Style="border-color:black;border-top-style:dashed;border-left-style:none;border-right-style:none;border-bottom-style:none;border-width:1pt;height:1px;z-index:700;position: absolute; top:223px; left:41px; width:719px;">
<cc1:DscTextBox id='q1' runat='server' title='箱貼數量1'
	style="Z-INDEX:699; POSITION: absolute; LEFT: 45px; TOP: 251px;"
	TxtInput_TabIndex='117'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='q1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='r1' runat='server' title='購買比例1'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 177px; TOP: 251px;"
	TxtInput_TabIndex='118'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='r1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='q2' runat='server' title='箱貼數量2'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 274px; TOP: 251px;"
	TxtInput_TabIndex='119'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='q2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='r2' runat='server' title='購買比例2'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 399px; TOP: 251px;"
	TxtInput_TabIndex='120'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='r2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='q3' runat='server' title='箱貼數量3'
	style="Z-INDEX:682; POSITION: absolute; LEFT: 508px; TOP: 251px;"
	TxtInput_TabIndex='121'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='q3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='r3' runat='server' title='購買比例3'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 604px; TOP: 251px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMULLBCN01' BOID='ODMULLBCN01' FieldName='r3'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='69px' Height='25px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>

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
<script src="ODMULLBCN01.js?NoCache=202207291705" type="text/javascript"></script>
</asp:Content>
