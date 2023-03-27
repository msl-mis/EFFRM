<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" validaterequest="false" inherits="tw.com.dsc.easyflowDotNet.forms.STD007, src.FRM.STD007" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<asp:Content ID="STD007FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->

    <script src="STD007.js" type="text/javascript"></script>

    <div id="cover" style="overflow: auto; width: 100%;">
        <div id="createRecord" style="width: 98%; height: 100%" runat="server">
            <!--EcPnlMaster區塊 -->
            <cc1:DscPanel ID="ecPnlMaster" runat="server" BorderStyle="None" BorderColor="Transparent"
                BorderWidth="0px" Width="100%" Height="350px" FrmDefineKeys-BOID="STD007" FrmDefineKeys-FrmID="FrmSTD007"
                FrmDefineKeys-FrmType="Query" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'>
                <iewc:TabStrip ID="Tabstrip1" runat="server" TabDefaultStyle="font-family:#ffffe0;font-size:9pt;color:white;width:80;height:21;text-align:center;"
                    TabSelectedStyle="background-image:url(../../_common/pic/newcrm/tp_y.png);color:black;text-align:center;">
                    <iewc:Tab Text="雜項請購單" DefaultImageUrl="../../_common/pic/icon/dg_edit.gif" DefaultStyle="text-align:center;width:120px;"
                        ID="Tab1"></iewc:Tab>
                </iewc:TabStrip>
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%"
                    Height="180px" BackColor="Transparent">
                    <div class="TabPage" style="position: relative; height: 100%; left: 0px; top: 0px;">
                        <cc1:DscTextBox ID="efsti001" Title="DscTextBox:" Style="z-index: 101; left: 109px;
                            display: none; position: absolute; top: 24px" runat="server" Cellpanding="2"
                            TitleWidth="0px" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2"
                            cellspacing="0" LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0"
                            Text="">
                            <InputStyle Width="50px"></InputStyle>
                            <TitleStyle Width="50px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD007" BOID="STD007" FieldName="efsti001"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efsti002" Title="DscTextBox:" Style="z-index: 102; left: 123px;
                            display: none; position: absolute; top: 0px" runat="server" Cellpanding="2" TitleWidth="0px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0" Text="">
                            <InputStyle Width="0px"></InputStyle>
                            <TitleStyle Width="0px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD007" BOID="STD007" FieldName="efsti002"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <table style="width: 100%" class="STD_table">
                            <tr>
								<!--2010/05/20,hiro,C01-20100520001,電子表單統一標題格式,修正css設計之格線與標題藍色定體，未生效↓-->
								<!--td align="center" class="STD_titleTd"-->
								<td align="center" class="Tilteline">
								<!--2010/05/20,hiro,C01-20100520001,電子表單統一標題格式,修正css設計之格線與標題藍色定體，未生效↑-->
                                    <asp:Label ID="title" runat="server" Font-Bold="True" Font-Size="small" ForeColor="Blue" Text="雜項請購單"
                                        CssClass="STD_title"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="STD_td">
                                    <cc1:DscOpenQuery ID="efsti003" Title="申請人員" runat="server" LangText="申請人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="~/src/_Common/PIC/ICON/39.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="" TitleType="TitleLang01"
                                        TxtInput_TabIndex="0" Height="26px">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmSTD007" BOID="STD007" FieldName="efsti003"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td class="STD_td">
                                    <cc1:DscTextBox ID="efsti004" Title="總金額" runat="server" LangText="總金額" Cellpanding="2"
                                        TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                        cellpadding="2" cellspacing="0" Text="" TitleType="TitleLang01" InputEnabled="False">
                                        <FrmFieldKeys BOID="STD007" FieldName="efsti004" FrmID="FrmSTD007" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <Validator MsgF0001="PSMSG" MsgF0002="VSG002" ValidatorExpression="(\d{0,})[\.]?(\d{0,})"
                                            ValidatorMsg="" ValidatorName="簡單數字" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="STD_td">
                                    <cc1:DscOpenQuery ID="efsti005" runat="server" Title="說明" TitleWidth="630px" border="0"
                                        CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="说明"
                                        Text="" TitleType="TitleLang01" TxtInput_TabIndex="0" Height="30px" TextMode="MultiLine"
                                        Width="630px" BtnVisible="True" ImgSrc="../../_common/pic/icon/disscusion.gif">
                                        <InputStyle Width="510px" CssClass="Edit20" Height="50px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmSTD007" BOID="STD007" FieldName="efsti005"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                        </table>
                        <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 102; left: 451px;
                            position: absolute; top: 76px" runat="server" ShowSummary="False" ShowMessageBox="True"
                            Height="31px" Width="113px"></asp:ValidationSummary>
                    </div>
                </cc1:DscPanel>
                <!--單身頁籤-->
                <iewc:TabStrip ID="TabStrip2" runat="server" TabDefaultStyle="font-family:#ffffe0;font-size:9pt;color:white;width:150;height:21;text-align:center;background-image:url(../../_common/pic/newcrm/tp_b1.png);"
                    TabHoverStyle="background-image:url(../../_common/pic/newcrm/tp_b2.png);color:black;text-align:center;"
                    TabSelectedStyle="background-image:url(../../_common/pic/newcrm/tp_y.png);color:black;text-align:center;"
                    BackColor="#B9CCEA">
                    <iewc:Tab Text="單身資料" DefaultImageUrl="../../_common/pic/icon/dg_edit.gif" DefaultStyle="text-align:center;width:170px;"
                        ID="bodyDefault"></iewc:Tab>
                </iewc:TabStrip>
                <!--第一頁單身DIV-->
                <div class="TabPage" id="divbodyDefault" style="display: block; overflow: hidden;
                    width: 100%; background-repeat: repeat" runat="server">
                    <cc1:DscPanel ID="ecPnlDetail1" runat="server" FrmDefineKeys-BOID="STD007_d01" FrmDefineKeys-FrmID="FrmSTD007_d01"
                        FrmDefineKeys-FrmType="Query" BorderStyle="None" BorderColor="Transparent" BorderWidth="0px"
                        IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                        Width="100%" Height="0px">
                        <cc1:DscPanel ID="divDetail1Default" runat="server" Width="100%" Height="140px" BorderStyle="None"
                            BorderColor="Transparent" BorderWidth="0px" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 98%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                            FrmDefineKeys-BOID="STD007_d01" FrmDefineKeys-FrmID="FrmSTD007_d01" FrmDefineKeys-FrmType="Query">
                            <table style="width: 100%" class="STD_table">
                                <%--
                                <tr>
                                    <td colspan="2" align="center" style="height: 26px" class="STD_titleTd">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="請購明細"
                                            CssClass="STD_title"></asp:Label>
                                    </td>
                                </tr>
                                 --%>
                                <tr>
                                    <td style="width: 50%" class="STD_td">
                                        <cc1:DscTextBox ID="efstj001" Title="DscTextBox:" Style="z-index: 101; left: -8px;
                                            display: none; position: absolute; top: 16px" runat="server" Cellpanding="2"
                                            TitleWidth="50px" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2"
                                            cellspacing="0" LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0"
                                            Text="000">
                                            <InputStyle Width="50px"></InputStyle>
                                            <TitleStyle Width="50px"></TitleStyle>
                                            <FrmFieldKeys FrmID="FrmSTD007_d01" BOID="STD007_d01" FieldName="efstj001"></FrmFieldKeys>
                                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        </cc1:DscTextBox>
                                        <cc1:DscTextBox ID="efstj002" Title="DscTextBox:" Style="z-index: 102; left: -8px;
                                            display: none; position: absolute; top: 49px" runat="server" Cellpanding="2"
                                            TitleWidth="0px" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2"
                                            cellspacing="0" LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0"
                                            Text="111">
                                            <InputStyle Width="50px"></InputStyle>
                                            <TitleStyle Width="50px"></TitleStyle>
                                            <FrmFieldKeys FrmID="FrmSTD007_d01" BOID="STD007_d01" FieldName="efstj002"></FrmFieldKeys>
                                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        </cc1:DscTextBox>
                                        <cc1:DscTextBox ID="efstj003" Title="序號" runat="server" LangText="序號" Cellpanding="2"
                                            TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                            cellpadding="2" cellspacing="0" Text="" TitleType="TitleLang01">
                                            <FrmFieldKeys BOID="STD007_d01" FieldName="efstj003" FrmID="FrmSTD007_d01" />
                                            <InputStyle CssClass="Edit20" Width="120px" />
                                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                            <TitleStyle Width="120px" />
                                        </cc1:DscTextBox>
                                    </td>
                                    <td style="width: 50%" class="STD_td">
                                        <cc1:DscTextBox ID="efstj007" Title="數量" runat="server" LangText="數量" Cellpanding="2"
                                            TitleWidth="100px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                            cellpadding="2" cellspacing="0" Text="" TitleType="TitleLang01">
                                            <FrmFieldKeys BOID="STD007_d01" FieldName="efstj007" FrmID="FrmSTD007_d01" />
                                            <InputStyle CssClass="Edit20" Width="120px" />
                                            <Validator MsgF0001="PSMSG" MsgF0002="VSG002" ValidatorExpression="(\d{0,})[\.]?(\d{0,})"
                                                ValidatorMsg="" ValidatorName="簡單數字" />
                                            <TitleStyle Width="120px" />
                                        </cc1:DscTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%" class="STD_td">
                                        <cc1:DscTextBox ID="efstj004" Title="物品名稱" runat="server" LangText="物品名稱" Cellpanding="2"
                                            TitleWidth="100px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                            cellpadding="2" cellspacing="0" Text="" TitleType="TitleLang01">
                                            <TitleStyle Width="120px" />
                                            <FrmFieldKeys BOID="STD007_d01" FieldName="efstj004" FrmID="FrmSTD007_d01" />
                                            <InputStyle CssClass="Edit20" Width="120px" />
                                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        </cc1:DscTextBox>
                                    </td>
                                    <td style="width: 50%" class="STD_td">
                                        <cc1:DscTextBox ID="efstj008" Title="單價" runat="server" LangText="單價" Cellpanding="2"
                                            TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                            cellpadding="2" cellspacing="0" Text="" TitleType="TitleLang01">
                                            <FrmFieldKeys BOID="STD007_d01" FieldName="efstj008" FrmID="FrmSTD007_d01" />
                                            <InputStyle CssClass="Edit20" Width="120px" />
                                            <Validator MsgF0001="PSMSG" MsgF0002="VSG002" ValidatorExpression="(\d{0,})[\.]?(\d{0,})"
                                                ValidatorMsg="" ValidatorName="簡單數字" />
                                            <TitleStyle Width="120px" />
                                        </cc1:DscTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%" class="STD_td">
                                        <cc1:DscTextBox ID="efstj005" Title="規格" runat="server" LangText="規格" Cellpanding="2"
                                            TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                            cellpadding="2" cellspacing="0" Text="" TitleType="TitleLang01">
                                            <FrmFieldKeys BOID="STD007_d01" FieldName="efstj005" FrmID="FrmSTD007_d01" />
                                            <InputStyle CssClass="Edit20" Width="120px" />
                                            <TitleStyle Width="120px" />
                                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        </cc1:DscTextBox>
                                    </td>
                                    <td style="width: 50%" class="STD_td">
                                        <cc1:DscTextBox ID="efstj009" Title="金額" runat="server" LangText="金額" Cellpanding="2"
                                            TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                            cellpadding="2" cellspacing="0" Text="" TitleType="TitleLang01" InputEnabled="False">
                                            <FrmFieldKeys BOID="STD007_d01" FieldName="efstj009" FrmID="FrmSTD007_d01" />
                                            <InputStyle CssClass="Edit20" Width="120px" />
                                            <Validator MsgF0001="PSMSG" MsgF0002="VSG002" ValidatorExpression="(\d{0,})[\.]?(\d{0,})"
                                                ValidatorMsg="" ValidatorName="簡單數字" />
                                            <TitleStyle Width="120px" />
                                        </cc1:DscTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%" class="STD_td">
                                        <cc1:DscTextBox ID="efstj006" Title="單位" runat="server" LangText="單位" Cellpanding="2"
                                            TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                            cellpadding="2" cellspacing="0" Text="" TitleType="TitleLang01">
                                            <FrmFieldKeys BOID="STD007_d01" FieldName="efstj006" FrmID="FrmSTD007_d01" />
                                            <InputStyle CssClass="Edit20" Width="120px" />
                                            <TitleStyle Width="120px" />
                                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        </cc1:DscTextBox>
                                    </td>
                                    <td style="width: 50%" class="STD_td">
                                        <cc1:DscDateAssistant2 ID="efstj010" runat="server" border="0" BtnVisible="True"
                                            CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass="" cellpadding="2" cellspacing="0"
                                            DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                            DateSaveFormat="String" DisplayMode="yyyyMMdd" ImgSrc="../../_Common/pic/icon/calender.gif"
                                            LangText="需求日期" Text="" TimeField="" Title="需求日期" TitleType="TitleLang01" TitleWidth="120px"
                                            TxtInput_TabIndex="0">
                                            <FrmFieldKeys BOID="STD007_d01" FieldName="efstj010" FrmID="FrmSTD007_d01" />
                                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                            <TitleStyle Width="120px" />
                                            <InputStyle CssClass="Edit20" Width="120px" />
                                        </cc1:DscDateAssistant2>
                                    </td>
                                </tr>
                            </table>
                            <asp:ValidationSummary ID="ValidationSummary2" Style="z-index: 101; left: 452px;
                                position: absolute; top: 135px" runat="server" ShowSummary="False" ShowMessageBox="True">
                            </asp:ValidationSummary>
                        </cc1:DscPanel>
                        <uc1:gridUserControl ID="GridUserControl1" runat="server"></uc1:gridUserControl>
                    </cc1:DscPanel>
                </div>
                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server" Width="100%">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent;
                        left: 0px; top: 0px;">
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent">
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
        </div>
    </div>
    <asp:UpdatePanel ID="DetailUpdatePanel" UpdateMode="Conditional" runat="server">
        <ContentTemplate>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="BtnDetailSave" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="BtnDetailAdd" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="BtnDetailDel" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="BtnDetailExit" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
