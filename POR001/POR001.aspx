<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" enableeventvalidation="false" inherits="tw.com.dsc.easyflowDotNet.forms.POR001, src.FRM.POR001" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="POR001FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
<!--引用JavaScript-->
<!--2013/01/24:3.5.1.44:hiro:S00-20130109001:雙檔作業的單身，支援組合多選開窗。-->
<script src="../../_Common/JS/EFCommonFunction.js" type="text/javascript"></script>
<script src="POR001.js" type="text/javascript"></script>
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmPOR001" FrmDefineKeys-BOID="POR001"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="540px">
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
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='540px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 540px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; LEFT: 745px; POSITION: absolute; TOP: 7px' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->
                            <cc1:DscTextBox id='ptlma001' title='表單代號' runat='server' style='display: none; Z-INDEX: 101; LEFT: 245px; POSITION: absolute; TOP: 16px'
	                            LangText='表單代號' TitleWidth='110px' TxtInput_TabIndex='0'
	                            Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
	                            <INPUTSTYLE Width='120px'></INPUTSTYLE>
	                            <TITLESTYLE Width='110px'></TITLESTYLE>
	                            <FRMFIELDKEYS FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma001'></FRMFIELDKEYS>
	                            <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                            </cc1:DscTextBox>
                            <cc1:DscTextBox id='ptlma002' title='表單單號' runat='server' style='display: none; Z-INDEX: 102; LEFT: 245px; POSITION: absolute; TOP: 49px'
	                            LangText='表單單號' TitleWidth='110px' TxtInput_TabIndex='0'
	                            Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
	                            <INPUTSTYLE Width='120px'></INPUTSTYLE>
	                            <TITLESTYLE Width='110px'></TITLESTYLE>
	                            <FRMFIELDKEYS FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma002'></FRMFIELDKEYS>
	                            <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                            </cc1:DscTextBox>
                            <!--Portal PK-->
                            <cc1:DscTextBox id='ptlma003' title='Portal PK' style="Z-INDEX:700; LEFT: 30px; POSITION: absolute; TOP: 4px;display:none"
	                            runat='server' LangText='Portal PK'  Cellpanding='0' TitleWidth='0px' TxtInput_TabIndex='106' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='0' cellspacing='0' Text='' ShowTitle='false'>
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma003'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='170px' Height='40px' CssClass='Edit20'></InputStyle>
	                            <Validator ValidatorMsg='' ValidatorExpression='' MsgF0001='' MsgF0002='' ValidatorName=''></Validator>
                            </cc1:DscTextBox>
                            <!--發佈期間-->
                            <cc1:DscLabel ID='label1' runat='server' Style="z-index:697; left: 31px; position: absolute;top: 55px; vertical-align:middle;" Text='發佈期間' Width='60px' Height='35px'></cc1:DscLabel>
                            <cc1:DscDateAssistant2 ID='ptlma004' runat='server' 
	                            style="POSITION: absolute; left: 98px; top: 55px; z-index: 694;" 
	                            BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif' Title='發佈期間' border='0' 
	                            CellNo1CssClass='' CellNo2CssClass='' CellNo3CssClass='' cellpadding='0' cellspacing='0' 
	                            DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	                            DisplayMode='yyyyMMdd' LangText='發佈期間' Text='' TimeField='' TitleWidth='0px' 
	                            TxtInput_TabIndex='101' DateSaveFormat='String' ShowTitle='false'>
	                            <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
	                            <TitleStyle Width='0px' />
	                            <InputStyle Width='175px' Height='35px' CssClass='Edit20' />
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma004'></FrmFieldKeys>
                            </cc1:DscDateAssistant2>
                            <!--~-->
                            <cc1:DscLabel ID='label2' runat='server' Style="z-index:690; left: 303px; position: absolute;top: 65px; vertical-align:middle;" Text='~' Width='10px' Height='35px'></cc1:DscLabel>
                            <cc1:DscDateAssistant2 ID='ptlma005' runat='server' 
	                            style="POSITION: absolute; left: 328px; top: 55px; z-index: 689;" 
	                            BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif' Title='發佈期間' border='0' 
	                            CellNo1CssClass='' CellNo2CssClass='' CellNo3CssClass='' cellpadding='0' cellspacing='0' 
	                            DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	                            DisplayMode='yyyyMMdd' LangText='發佈期間' Text='' TimeField='' TitleWidth='0px' 
	                            TxtInput_TabIndex='102' DateSaveFormat='String' ShowTitle='false'>
	                            <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
	                            <TitleStyle Width='0px' />
	                            <InputStyle Width='175px' Height='35px' CssClass='Edit20' />
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma005'></FrmFieldKeys>
                            </cc1:DscDateAssistant2>
                            <!--標題-->
                            <cc1:DscLabel ID='label3' runat='server' Style="z-index:696; left: 31px; position: absolute;top: 101px; vertical-align:middle;" Text='標題' Width='60px' Height='35px'></cc1:DscLabel>
                            <cc1:DscTextBox id='ptlma006' title='標題' style="Z-INDEX:693; LEFT: 98px; POSITION: absolute; TOP: 101px"
	                            runat='server' LangText='標題'  Cellpanding='0' TitleWidth='0px' TxtInput_TabIndex='103' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='0' cellspacing='0' Text='' ShowTitle='false'>
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma006'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='100px' Height='35px' CssClass='Edit20'></InputStyle>
	                            <Validator ValidatorMsg='' ValidatorExpression='' MsgF0001='' MsgF0002='' ValidatorName=''></Validator>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox id='ptlma007' title='標題' style="Z-INDEX:691; LEFT: 210px; POSITION: absolute; TOP: 101px"
	                            runat='server' LangText='標題'  Cellpanding='0' TitleWidth='0px' TxtInput_TabIndex='104' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='0' cellspacing='0' Text='' ShowTitle='false'>
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma007'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='400px' Height='35px' CssClass='Edit20'></InputStyle>
	                            <Validator ValidatorMsg='' ValidatorExpression='' MsgF0001='' MsgF0002='' ValidatorName=''></Validator>
                            </cc1:DscTextBox>
                            <!--公佈欄內容-->
                            <cc1:DscLabel ID='label4' runat='server' Style="z-index:695; left: 31px; position: absolute;top: 186px; vertical-align:middle;" Text='公佈欄內容' Width='70px' Height='35px'></cc1:DscLabel>
                            <cc1:DscTextBox id='ptlma008' title='公佈欄內容' style="Z-INDEX:698; LEFT: 31px; POSITION: absolute; TOP: 215px"
	                            runat='server' LangText='公佈欄內容'  Cellpanding='0' TitleWidth='0px' TxtInput_TabIndex='105' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='0' cellspacing='0' Text='' TextMode='MultiLine' TitleLocation='_Left' ShowTitle='false'>
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma008'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='585px' Height='268px' CssClass='Edit20'></InputStyle>
	                            <Validator ValidatorMsg='' ValidatorExpression='' MsgF0001='' MsgF0002='' ValidatorName=''></Validator>
                            </cc1:DscTextBox>
                            <cc1:DscLabel ID='label5' runat='server' Style="z-index:695; left: 31px; position: absolute;top: 147px; vertical-align:middle;" Text='閱讀權限' Width='70px' Height='35px'></cc1:DscLabel>
                            <cc1:DscTextBox id='ptlma009' title='ptlma009' style="Z-INDEX:699; LEFT: 98px; POSITION: absolute; TOP: 141px;"
	                            runat='server' LangText='ptlma009'  Cellpanding='0' TitleWidth='0px' TxtInput_TabIndex='112' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='0' cellspacing='0' Text='' ShowTitle='false'>
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma009'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='510px' Height='40px' CssClass='Edit20'></InputStyle>
	                            <Validator ValidatorMsg='' ValidatorExpression='' MsgF0001='' MsgF0002='' ValidatorName=''></Validator>
                            </cc1:DscTextBox>
                            <!--ptlma010至ptlma013為預留欄位↓-->
                            <cc1:DscTextBox id='ptlma010' title='ptlma010' style="Z-INDEX:692; LEFT: 206px; POSITION: absolute; TOP: 450px;display:none"
	                            runat='server' LangText='ptlma010'  Cellpanding='0' TitleWidth='0px' TxtInput_TabIndex='109' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='0' cellspacing='0' Text='' ShowTitle='false'>
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma010'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='170px' Height='40px' CssClass='Edit20'></InputStyle>
	                            <Validator ValidatorMsg='' ValidatorExpression='' MsgF0001='' MsgF0002='' ValidatorName=''></Validator>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox id='ptlma011' title='ptlma011' style="Z-INDEX:688; LEFT: 382px; POSITION: absolute; TOP: 450px;display:none"
	                            runat='server' LangText='ptlma011'  Cellpanding='0' TitleWidth='0px' TxtInput_TabIndex='110' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='0' cellspacing='0' Text='' ShowTitle='false'>
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma011'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='170px' Height='40px' CssClass='Edit20'></InputStyle>
	                            <Validator ValidatorMsg='' ValidatorExpression='' MsgF0001='' MsgF0002='' ValidatorName=''></Validator>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox id='ptlma012' title='ptlma012' style="Z-INDEX:687; LEFT: 556px; POSITION: absolute; TOP: 450px;display:none"
	                            runat='server' LangText='ptlma012'  Cellpanding='0' TitleWidth='0px' TxtInput_TabIndex='111' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='0' cellspacing='0' Text='' ShowTitle='false'>
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma012'></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='170px' Height='40px' CssClass='Edit20'></InputStyle>
	                            <Validator ValidatorMsg='' ValidatorExpression='' MsgF0001='' MsgF0002='' ValidatorName=''></Validator>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox id='ptlma013' title='ptlma013' style="Z-INDEX:686; LEFT: 728px; POSITION: absolute; TOP: 450px;display:none"
	                            runat='server' LangText='ptlma013'  Cellpanding='0' TitleWidth='0px' TxtInput_TabIndex='108' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='0' cellspacing='0' Text='' ShowTitle='false'>
	                            <FrmFieldKeys FrmID='FrmPOR001' BOID='POR001' FieldName='ptlma013' ></FrmFieldKeys>
	                            <TitleStyle Width='100px'></TitleStyle>
	                            <InputStyle Width='170px' Height='40px' CssClass='Edit20'></InputStyle>
	                            <Validator ValidatorMsg='' ValidatorExpression='' MsgF0001='' MsgF0002='' ValidatorName=''></Validator>
                            </cc1:DscTextBox>
                            <!--ptlma009至ptlma013為預留欄位↑-->
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

</asp:Content>
