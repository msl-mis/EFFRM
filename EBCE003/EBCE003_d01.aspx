<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" enableeventvalidation="false" inherits="tw.com.dsc.easyflowDotNet.forms.EBCE003_d01, src.FRM.EBCE003" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>

<asp:Content ID="EBCE003_d01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">        		
		<!--單檔架構 -->
		<script src="../../_Common/JS/jquery-Released.js" type="text/javascript"></script>
		<script src="EBCE003.js" type="text/javascript"></script>
		<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
				<div id="cover" style="WIDTH: 100%;">
						<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">				
								<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
										FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmEBCE003_d01" FrmDefineKeys-BOID="EBCE003_d01"
										BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="252px">
										<!--單頭頁籤-->
										<iewc:tabstrip id="TabStrip1" runat="server" TabDefaultStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);" TabHoverStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);" TabSelectedStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);" CssClass="divToolBar2" >
										<iewc:Tab Text="請款單明細" DefaultStyle="width:100px; height:27px;vertical-align:middle; text-align:center;"
												ID="Tab1"></iewc:Tab>
										</iewc:tabstrip>

										<!--單頭頁籤畫面集合-->
										<!--預設放入一個DIV-->								
										<cc1:Dscpanel id="divheadDefault" style="DISPLAY: block" runat="server" Width="100%" Height="252px" BackColor="Transparent">												
												<div class="TabPage" style="POSITION: relative; HEIGHT: 252px; left: 0px; top: 0px;" >
												<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 100; LEFT: 745px; POSITION: absolute; TOP: 7px" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
												<!--此區間放入各種dsc元件-->
												<cc1:DscTextBox id="resaf03_d01003" title="序號" style="Z-INDEX: 699; LEFT: 155px; POSITION: absolute; TOP: 15px" runat="server" Cellpanding="0" TitleWidth="110px" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="0" cellspacing="0" LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0"><INPUTSTYLE Width="120px" CssClass="Edit20"></INPUTSTYLE><TITLESTYLE Width="100px"></TITLESTYLE><FRMFIELDKEYS FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01003"></FRMFIELDKEYS><Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" /></cc1:DscTextBox>
												<cc1:DscTextBox id="resaf03_d01004" title="請款期數" style="Z-INDEX:698; LEFT: 157px; POSITION: absolute; TOP: 21px" runat="server" LangText="請款期數"  Cellpanding="0" TitleWidth="120px" TxtInput_TabIndex="111" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="0" cellspacing="0" Text="" TitleType="TitleLang01" > <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01004"></FrmFieldKeys> <TitleStyle Width="100px"></TitleStyle> <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle> <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator> </cc1:DscTextBox>
<cc1:DscTextBox id="resaf03_d01005" title="請款名稱" style="Z-INDEX:687; LEFT: 275px; POSITION: absolute; TOP: 20px" runat="server" LangText="請款名稱"  Cellpanding="0" TitleWidth="120px" TxtInput_TabIndex="112" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="0" cellspacing="0" Text="" TitleType="TitleLang01" > <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01005"></FrmFieldKeys> <TitleStyle Width="100px"></TitleStyle> <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle> <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator> </cc1:DscTextBox>
<cc1:DscTextBox id="resaf03_d01006" title="請款金額" style="Z-INDEX:697; LEFT: 157px; POSITION: absolute; TOP: 62px" runat="server" LangText="請款金額"  Cellpanding="0" TitleWidth="120px" TxtInput_TabIndex="113" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="0" cellspacing="0" Text="" TitleType="TitleLang01" > <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01006"></FrmFieldKeys> <TitleStyle Width="100px"></TitleStyle> <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle> <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator> </cc1:DscTextBox>
<cc1:DscDateAssistant2 ID="resaf03_d01007" runat="server" style="POSITION: absolute; left: 383px; top: 47px; z-index: 683;" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif" Title="請款日期" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass="" cellpadding="0" cellspacing="0" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/" DisplayMode="yyyyMMdd" LangText="請款日期" Text="" TimeField="" TitleType="TitleLang01" TitleWidth="120px" TxtInput_TabIndex="114" DateSaveFormat="String"><Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" /><TitleStyle Width="100px" /><InputStyle Width="137px" Height="20px" CssClass="Edit20" /> <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01007"></FrmFieldKeys></cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID="resaf03_d01008" runat="server" style="POSITION: absolute; left: 155px; top: 96px; z-index: 700;" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif" Title="核發日期" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass="" cellpadding="0" cellspacing="0" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/" DisplayMode="yyyyMMdd" LangText="核發日期" Text="" TimeField="" TitleType="TitleLang01" TitleWidth="120px" TxtInput_TabIndex="115" DateSaveFormat="String"><Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" /><TitleStyle Width="100px" /><InputStyle Width="100px" Height="20px" CssClass="Edit20" /> <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01008"></FrmFieldKeys></cc1:DscDateAssistant2>
<cc1:DscDropDownList ID="resaf03_d01009" runat="server" Style="z-index:684; left: 375px;position: absolute; top: 100px" Title="付款方式" DDLInput_TabIndex="116"><Items><asp:ListItem Selected="False" Value="一半即期一半付現">一半即期一半付現</asp:ListItem></Items><InputStyle Height="20px" Width="100px" /><TitleStyle Width="100px" /> <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01009"></FrmFieldKeys><CommentList F0001="Combo" F0002="EBCE003_d01_resaf03_d01009" /></cc1:DscDropDownList>
<cc1:DscTextBox id="resaf03_d01010" title="合約編號" style="Z-INDEX:696; LEFT: 160px; POSITION: absolute; TOP: 132px" runat="server" LangText="合約編號"  Cellpanding="0" TitleWidth="120px" TxtInput_TabIndex="117" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="0" cellspacing="0" Text="" TitleType="TitleLang01" > <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01010"></FrmFieldKeys> <TitleStyle Width="100px"></TitleStyle> <InputStyle Width="100px" Height="38px" CssClass="Edit20"></InputStyle> <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator> </cc1:DscTextBox>
<cc1:DscTextBox id="resaf03_d01011" title="說明" style="Z-INDEX:699; LEFT: 155px; POSITION: absolute; TOP: 182px" runat="server" LangText="說明"  Cellpanding="0" TitleWidth="120px" TxtInput_TabIndex="118" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="0" cellspacing="0" Text="" TitleType="TitleLang01" > <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01011"></FrmFieldKeys> <TitleStyle Width="100px"></TitleStyle> <InputStyle Width="200px" Height="20px" CssClass="Edit20"></InputStyle> <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator> </cc1:DscTextBox>

												</div>
										</cc1:Dscpanel>																																								
										<!--有單身才放-->
										
										<!--單身頁籤起始-->
										
										<!--單身Grid-->
										<!--此區間放入數個單身Grid-->
										
										<cc1:DscPanel id="hdnDisplayInCS" style="DISPLAY: none; Z-INDEX: 116; LEFT: 264px; TOP: 72px"
										runat="server" Width="100%">
										<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%; BACKGROUND-COLOR: transparent; left: 0px; top: 0px;" ></div>
										</cc1:DscPanel>
										<cc1:DscPanel id="hdnDisplayInHTML" style="DISPLAY: none; Z-INDEX: 116; LEFT: 264px; TOP: 72px"
										runat="server">
										<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%; BACKGROUND-COLOR: transparent" >
										<cc1:DscTextBox id="resaf03_d01001" title="DscTextBox:" style="Z-INDEX: 101; LEFT: 245px; POSITION: absolute; TOP: 16px"
														runat="server" Cellpanding="2" TitleWidth="110px" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0">
														<INPUTSTYLE Width="120px"></INPUTSTYLE>
														<TITLESTYLE Width="110px"></TITLESTYLE>
														<FRMFIELDKEYS FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01001"></FRMFIELDKEYS>
                            								<Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
										</cc1:DscTextBox>
										<cc1:DscTextBox id="resaf03_d01002" title="DscTextBox:" style="Z-INDEX: 102; LEFT: 245px; POSITION: absolute; TOP: 49px"
														runat="server" Cellpanding="2" TitleWidth="110px" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0">
														<INPUTSTYLE Width="120px"></INPUTSTYLE>
														<TITLESTYLE Width="110px"></TITLESTYLE>
														<FRMFIELDKEYS FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="resaf03_d01002"></FRMFIELDKEYS>
                            								<Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
										</cc1:DscTextBox>
										</div>
										</cc1:DscPanel>
								</cc1:DscPanel>
								<!--2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↓-->
								<cc1:DscPanel id="hdnDisplayInHTML2" style="DISPLAY: none; Z-INDEX: 116; LEFT: 264px; TOP: 72px"
										runat="server">
										<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%; BACKGROUND-COLOR: transparent" >
                    <cc1:DscTextBox ID="edReceiver" runat="server" ShowTitle="False" Title="" Width="36px">
                        <InputStyle Width="0px" />
                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        <TitleStyle Width="60px" />
                    </cc1:DscTextBox>
										</div>
								</cc1:DscPanel>
								<!--2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↑-->
						</div><!--單檔架構結尾 -->
		</div>
</asp:Content>
