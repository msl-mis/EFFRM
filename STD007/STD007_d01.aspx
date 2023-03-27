<%@ page language="c#" masterpagefile="~\src\_Common\AppUtil\EFMasterPage\EFBaseMasterPage.master" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.forms.STD007_d01, src.FRM.STD007" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<asp:Content ID="STD007_d01FormContent" ContentPlaceHolderID="MasterPageContent"
    runat="server">
    <!--單檔架構 -->
    <script src="STD007.js" type="text/javascript"></script>
    <div id="cover" style="overflow: auto; width: 100%;">
        <div id="createRecord" style="width: 98%; height: 100%" runat="server">
            <!--EcPnlMaster區塊 -->
            <cc1:DscPanel ID="ecPnlMaster" runat="server" BorderStyle="None" BorderColor="Transparent"
                BorderWidth="0px" Width="100%" Height="300px" FrmDefineKeys-BOID="STD007_d01"
                FrmDefineKeys-FrmID="FrmSTD007_d01" FrmDefineKeys-FrmType="Query" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'>
                <iewc:TabStrip ID="Tabstrip1" runat="server" TabDefaultStyle="font-family:#ffffe0;font-size:9pt;color:white;width:80;height:21;text-align:center;background-image:url(../../_common/pic/newcrm/tp_b1.png);"
                    TabHoverStyle="background-image:url(../../_common/pic/newcrm/tp_b2.png);color:black;text-align:center;"
                    TabSelectedStyle="background-image:url(../../_common/pic/newcrm/tp_y.png);color:black;text-align:center;">
                    <iewc:Tab Text="請購明細" DefaultImageUrl="../../_common/pic/icon/dg_edit.gif" DefaultStyle="text-align:center;width:120px;"
                        ID="Tab1"></iewc:Tab>
                </iewc:TabStrip>
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%"
                    Height="200px" BackColor="Transparent">
                    <div class="TabPage" style="position: relative; height: 100%; left: 0px; top: 0px;">
                        <table style="width:100%" class ="STD_table">
                            <tr>
                                <td colspan="2" align="center" style="height: 26px" class ="STD_titleTd">
                                <asp:Label ID="title" runat="server" Font-Bold="True" Font-Size="Medium" Text="請購明細" CssClass="STD_title"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class ="STD_td">
                                    <cc1:DscTextBox ID="efstj003" Title="序號" runat="server" LangText="序號" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="0"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys BOID="STD007_d01" FieldName="efstj003" FrmID="FrmSTD007_d01" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class ="STD_td">
                                    <cc1:DscTextBox ID="efstj007" Title="數量" runat="server" LangText="數量" Cellpanding="2" TitleWidth="100px" TxtInput_TabIndex="0"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys BOID="STD007_d01" FieldName="efstj007" FrmID="FrmSTD007_d01" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <Validator MsgF0001="PSMSG" MsgF0002="VSG002" ValidatorExpression="(\d{0,})[\.]?(\d{0,})"
                                            ValidatorMsg="" ValidatorName="簡單數字" />
                                        <TitleStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class ="STD_td">
                                    <cc1:DscTextBox ID="efstj004" Title="物品名稱" runat="server" LangText="物品名稱" Cellpanding="2" TitleWidth="100px"
                                        TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2"
                                        cellspacing="0" Text="" TitleType="TitleLang01">
                                        <TitleStyle Width="120px" />
                                        <FrmFieldKeys BOID="STD007_d01" FieldName="efstj004" FrmID="FrmSTD007_d01" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class ="STD_td">
                                    <cc1:DscTextBox ID="efstj008" Title="單價" runat="server" LangText="單價" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="0"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys BOID="STD007_d01" FieldName="efstj008" FrmID="FrmSTD007_d01" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <Validator MsgF0001="PSMSG" MsgF0002="VSG002" ValidatorExpression="(\d{0,})[\.]?(\d{0,})"
                                            ValidatorMsg="" ValidatorName="簡單數字" />
                                        <TitleStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class ="STD_td">
                                    <cc1:DscTextBox ID="efstj005" Title="規格" runat="server" LangText="規格" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="0"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys BOID="STD007_d01" FieldName="efstj005" FrmID="FrmSTD007_d01" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <TitleStyle Width="120px" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class ="STD_td">
                                    <cc1:DscTextBox ID="efstj009" Title="金額" runat="server" LangText="金額" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="0"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        Text="" TitleType="TitleLang01" InputEnabled="False">
                                        <FrmFieldKeys BOID="STD007_d01" FieldName="efstj009" FrmID="FrmSTD007_d01" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <Validator MsgF0001="PSMSG" MsgF0002="VSG002" ValidatorExpression="(\d{0,})[\.]?(\d{0,})"
                                            ValidatorMsg="" ValidatorName="簡單數字" />
                                        <TitleStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class ="STD_td">
                                    <cc1:DscTextBox ID="efstj006" Title="單位" runat="server" LangText="單位" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="0"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys BOID="STD007_d01" FieldName="efstj006" FrmID="FrmSTD007_d01" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <TitleStyle Width="120px" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class ="STD_td">
                                    <cc1:DscDateAssistant2 ID="efstj010" runat="server" border="0" BtnVisible="True"
                                        CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass="" cellpadding="2" cellspacing="0"
                                        DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                        DateSaveFormat="String" DisplayMode="yyyyMMdd" ImgSrc="../../_Common/pic/icon/calender.gif"
                                        LangText="需求日期"
                                        Text="" TimeField="" Title="需求日期" TitleType="TitleLang01" TitleWidth="120px"
                                        TxtInput_TabIndex="0">
                                        <FrmFieldKeys BOID="STD007_d01" FieldName="efstj010" FrmID="FrmSTD007_d01" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                        </table>
                        <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 101; left: 452px;
                            position: absolute; top: 135px" runat="server" ShowSummary="False" ShowMessageBox="True">
                        </asp:ValidationSummary>
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server" Width="100%">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent;
                        left: 0px; top: 0px;">
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent">
                        <cc1:DscTextBox ID="efstj001" Title="DscTextBox:" Style="z-index: 101; left: 245px;
                            position: absolute; top: 16px" runat="server" Cellpanding="2" TitleWidth="110px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0" Text="">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD007_d01" BOID="STD007_d01" FieldName="efstj001"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efstj002" Title="DscTextBox:" Style="z-index: 102; left: 245px;
                            position: absolute; top: 49px" runat="server" Cellpanding="2" TitleWidth="110px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0" Text="">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD007_d01" BOID="STD007_d01" FieldName="efstj002"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
        </div>
    </div>
</asp:Content>
