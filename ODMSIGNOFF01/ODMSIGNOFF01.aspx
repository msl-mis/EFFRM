<%@ Page language="c#" CodeFile="ODMSIGNOFF01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMSIGNOFF01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMSIGNOFF01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMSIGNOFF01" FrmDefineKeys-BOID="ODMSIGNOFF01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="826px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='826px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 826px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmsignoff01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='odmsignoff01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmsignoff01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='odmsignoff01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='category' runat='server' Style="z-index:696; position: absolute; left: 65px; top: 83px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='類別' Width='55px' Height='26px'></cc1:DscLabel>
<cc1:DscLabel ID='comp' runat='server' Style="z-index:698; position: absolute; left: 57px; top: 118px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='公司別' Width='55px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='contact' runat='server' Style="z-index:697; position: absolute; left: 65px; top: 191px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='說明' Width='42px' Height='24px'></cc1:DscLabel>
<cc1:DscLabel ID='label1' runat='server' Style="z-index:688; position: absolute; left: 153px; top: 80px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='人事' Width='48px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label10' runat='server' Style="z-index:677; position: absolute; left: 547px; top: 46px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='申請日期：' Width='85px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label11' runat='server' Style="z-index:679; position: absolute; left: 499px; top: 80px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='其他 -' Width='51px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label12' runat='server' Style="z-index:680; position: absolute; left: 413px; top: 80px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='獎金' Width='51px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label2' runat='server' Style="z-index:686; position: absolute; left: 230px; top: 80px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='費用' Width='39px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label3' runat='server' Style="z-index:684; position: absolute; left: 312px; top: 80px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='規定辦法' Width='70px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label4' runat='server' Style="z-index:687; position: absolute; left: 153px; top: 118px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='木子' Width='38px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label5' runat='server' Style="z-index:685; position: absolute; left: 230px; top: 118px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='冠志' Width='35px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label6' runat='server' Style="z-index:683; position: absolute; left: 313px; top: 118px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='MVE' Width='35px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label7' runat='server' Style="z-index:681; position: absolute; left: 391px; top: 118px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='冠志電子商務' Width='100px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label8' runat='server' Style="z-index:678; position: absolute; left: 526px; top: 118px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='ALL WELL' Width='80px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='label9' runat='server' Style="z-index:699; position: absolute; left: 52px; top: 48px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='申請人：' Width='75px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='main' runat='server' Style="z-index:695; position: absolute; left: 65px; top: 154px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;font-weight:bold;" Text='主旨' Width='48px' Height='24px'></cc1:DscLabel>
<cc1:DscLabel ID='title' runat='server' Style="z-index:682; position: absolute; left: 315px; top: 15px; vertical-align:middle;font-family:'微軟正黑體';font-size:20pt;font-weight:bold;" Text='簽呈報告書' Width='140px' Height='36px'></cc1:DscLabel>
<cc1:DscTextBox id='text1' runat='server' title='text1' ShowTitle='False'
	style="Z-INDEX:693; POSITION: absolute; LEFT: 125px; TOP: 149px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='text1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='550px' Height='27px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='textarea1' runat='server' title='textarea1' ShowTitle='False'
	style="Z-INDEX:692; POSITION: absolute; LEFT: 125px; TOP: 189px;"
	TxtInput_TabIndex='104' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='textarea1'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='550px' Height='550px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='username' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:694; POSITION: absolute; LEFT: 111px; TOP: 46px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='username'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
	style="POSITION: absolute; left: 623px; top: 45px; z-index: 675;" 
	TxtInput_TabIndex='106' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='95px' Height='21px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='text2' runat='server' title='其他' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 542px; TOP: 80px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='text2'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='70px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<div style="display:none;">
<cc1:DscOpenQuery id='empl1' runat='server' title='填表人ID' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 0px; TOP: 6px;"
	TxtInput_TabIndex='108' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='123px' Height='23px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='empl1'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<div style="display:none;">
<cc1:DscOpenQuery id='empl2' runat='server' title='填表人直屬主管' ShowTitle='False'
	style="Z-INDEX: 689; POSITION: absolute; LEFT: 136px; TOP: 7px;"
	TxtInput_TabIndex='109' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='93px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='empl2'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscTextBox id='cate' runat='server' title='人事' ShowTitle='False'
	style="display:none;Z-INDEX:690; POSITION: absolute; LEFT: 131px; TOP: 82px;">
	<FrmFieldKeys FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='cate'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='cate_ctrolRadio0' runat='server' GroupName='cate' Text='' Value='0' style='position:absolute;top:82px;left:131px;z-index:690;'/>
<asp:RadioButton ID='cate_ctrolRadio1' runat='server' GroupName='cate' Text='' Value='1' style='position:absolute;top:82px;left:205px;z-index:690;'/>
<asp:RadioButton ID='cate_ctrolRadio2' runat='server' GroupName='cate' Text='' Value='2' style='position:absolute;top:82px;left:290px;z-index:690;'/>
<asp:RadioButton ID='cate_ctrolRadio3' runat='server' GroupName='cate' Text='' Value='3' style='position:absolute;top:82px;left:477px;z-index:690;'/>
<asp:RadioButton ID='cate_ctrolRadio4' runat='server' GroupName='cate' Text='' Value='4' style='position:absolute;top:82px;left:391px;z-index:690;'/>
<cc1:DscTextBox id='rdcomp' runat='server' title='木子' ShowTitle='False'
	style="display:none;Z-INDEX:690; POSITION: absolute; LEFT: 131px; TOP: 120px;">
	<FrmFieldKeys FrmID='FrmODMSIGNOFF01' BOID='ODMSIGNOFF01' FieldName='rdcomp'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rdcomp_ctrolRadio0' runat='server' GroupName='rdcomp' Text='' Value='0' style='position:absolute;top:120px;left:131px;z-index:690;'/>
<asp:RadioButton ID='rdcomp_ctrolRadio1' runat='server' GroupName='rdcomp' Text='' Value='1' style='position:absolute;top:120px;left:205px;z-index:690;'/>
<asp:RadioButton ID='rdcomp_ctrolRadio2' runat='server' GroupName='rdcomp' Text='' Value='2' style='position:absolute;top:120px;left:290px;z-index:690;'/>
<asp:RadioButton ID='rdcomp_ctrolRadio3' runat='server' GroupName='rdcomp' Text='' Value='3' style='position:absolute;top:120px;left:368px;z-index:690;'/>
<asp:RadioButton ID='rdcomp_ctrolRadio4' runat='server' GroupName='rdcomp' Text='' Value='4' style='position:absolute;top:120px;left:500px;z-index:690;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="signoff.jpg" id="Head01_file_1" runat="server" width="785" height="791" />
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
<script src="ODMSIGNOFF01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
