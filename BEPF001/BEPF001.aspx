<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" enableeventvalidation="false" inherits="tw.com.dsc.easyflowDotNet.forms.BEPF001, src.FRM.BEPF001" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="BEPF001FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
<!--引用JavaScript-->
<script src="BEPF001.js" type="text/javascript"></script>
	<!--單檔架構 -->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmBEPF001" FrmDefineKeys-BOID="BEPF001"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="435px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='300px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 300px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->
                            <cc1:DscTextBox id='bepta001' runat='server' title='表單單別'
	                            style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	                            TxtInput_TabIndex='0'>
	                            <INPUTSTYLE Width='120px'></INPUTSTYLE>
	                            <TITLESTYLE Width='110px'></TITLESTYLE>
	                            <FRMFIELDKEYS FrmID='FrmBEPF001' BOID='BEPF001' FieldName='bepta001'></FRMFIELDKEYS>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox id='bepta002' runat='server' title='表單單號'
	                            style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	                            TxtInput_TabIndex='0'>
	                            <INPUTSTYLE Width='120px'></INPUTSTYLE>
	                            <TITLESTYLE Width='110px'></TITLESTYLE>
	                            <FRMFIELDKEYS FrmID='FrmBEPF001' BOID='BEPF001' FieldName='bepta002'></FRMFIELDKEYS>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox id='bepta003' runat='server' title='事件名稱'
	                            style="Z-INDEX:700; POSITION: absolute; LEFT: 64px; TOP: 20px;"
	                            TxtInput_TabIndex='101'>
	                            <FrmFieldKeys FrmID='FrmBEPF001' BOID='BEPF001' FieldName='bepta003'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='500px' Height='20px' CssClass='Edit20'></InputStyle>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox id='bepta004' runat='server' title='事件描述'
	                            style="Z-INDEX:699; POSITION: absolute; LEFT: 64px; TOP: 50px;"
	                            TxtInput_TabIndex='102' TextMode='MultiLine'>
	                            <FrmFieldKeys FrmID='FrmBEPF001' BOID='BEPF001' FieldName='bepta004'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='500px' Height='150px' CssClass='Edit20'></InputStyle>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox id='bepta005' runat='server' title='原因'
	                            style="Z-INDEX:698; POSITION: absolute; LEFT: 64px; TOP: 210px;"
	                            TxtInput_TabIndex='103' TextMode='MultiLine'>
	                            <FrmFieldKeys FrmID='FrmBEPF001' BOID='BEPF001' FieldName='bepta005'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='500px' Height='100px' CssClass='Edit20'></InputStyle>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox id='bepta006' runat='server' title='處理結果'
	                            style="Z-INDEX:697; POSITION: absolute; LEFT: 64px; TOP: 320px;"
	                            TxtInput_TabIndex='104' TextMode='MultiLine'>
	                            <FrmFieldKeys FrmID='FrmBEPF001' BOID='BEPF001' FieldName='bepta006'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='500px' Height='100px' CssClass='Edit20'></InputStyle>
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
				<asp:HiddenField ID='hdnOpenQueryPreSetValue' runat='server' Value='' />
				<cc1:DscPanel id="hdnDisplayInHTML2" style="DISPLAY: none; Z-INDEX: 116; LEFT: 264px; TOP: 72px" runat="server">
					<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%; BACKGROUND-COLOR: transparent">
						<cc1:DscTextBox ID="edReceiver" runat="server" ShowTitle="False" Title="" Width="36px">
							<InputStyle Width="0px" />
							<Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
							<TitleStyle Width="60px" />
						</cc1:DscTextBox>
					</div>
				</cc1:DscPanel>
			</div>
		</div>
</asp:Content>
