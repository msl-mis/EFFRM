<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.forms.STD003, src.FRM.STD003" %>

<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<asp:Content ID="STD003FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->
    <script src="STD003.js?NoCache=20211220151619" type="text/javascript"></script>
    <div id="cover" style="overflow: auto; width: 100%;">
        <div id="createRecord" style="width: 98%; height: 100%" runat="server">
            <!--EcPnlMaster區塊 -->
            <cc1:DscPanel ID="ecPnlMaster" runat="server" BorderStyle="None" BorderColor="Transparent"
                BorderWidth="0px" Width="100%" Height="250px" FrmDefineKeys-BOID="STD003" FrmDefineKeys-FrmID="FrmSTD003"
                FrmDefineKeys-FrmType="Query" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'>
                </iewc:TabStrip>
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%"
                    Height="240px" BackColor="Transparent">
                    <div class="TabPage" style="position: relative; height: 102%; left: 0px; top: 0px;">
                        <table style="width: 100%">
                            <tr>
                                <td colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="title" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Blue"
                                        Text="加 班 申 請 單"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="efste003" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        Title="加班人員">
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmSTD003" BOID="STD003" FieldName="efste003"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%; height: 23px;" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="efste004" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="起始時間" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmSTD003" BOID="STD003" FieldName="efste004"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%; height: 23px;" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="efste005" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="截止時間" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        TitleType="TitleLang01" DateLan="ChristianEra">
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmSTD003" BOID="STD003" FieldName="efste005"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="efste008" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="歸屬日" DisplayMode="yyyyMMdd" DateLan="ChristianEra">
                                        <TitleStyle Width="120px" />
                                        <InputStyle Width="120px" />
                                        <FrmFieldKeys BOID="STD003" FieldName="efste008" FrmID="FrmSTD003" />
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscTextBox ID="efste006" runat="server" Title="加班時總數" border="0"
                                                    cellpadding="2" cellspacing="0"
                                                    TitleType="TitleLang01" TxtInput_TabIndex="0">
                                                    <InputStyle CssClass="Edit20" Width="120px" />
                                                    <Validator MsgF0001="PSMSG" MsgF0002="VSG002" ValidatorExpression="(\d{0,})[\.]?(\d{0,})"
                                                        ValidatorMsg="" ValidatorName="簡單數字" />
                                                    <TitleStyle Width="120px" />
                                                    <FrmFieldKeys FrmID="FrmSTD003" BOID="STD003" FieldName="efste006"></FrmFieldKeys>
                                                </cc1:DscTextBox>
                                            </td>
                                            <td>
                                                <!--edit by elvis 2013/01/02 Start-->
                                                <cc1:DscCheckBox ID="efste009" runat="server" Checked="False" CheckedTrueValue="Y"
                                                    CheckedFalseValue="N" ShowTitle="False" Text="自行輸入加班總時數" Style="z-index: 699;
                                                    left: 250px; top: 125px">
                                                    <InputStyle Height="20px" Width="133px" />
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <TitleStyle Width="0px" />
                                                    <FrmFieldKeys FrmID="FrmSTD003" BOID="STD003" FieldName="efste009"></FrmFieldKeys>
                                                </cc1:DscCheckBox>
                                                <!--edit by elvis 2013/01/02 End-->
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="efste007" runat="server" Title="說明" border="0"
                                        cellpadding="2" cellspacing="0"
                                        TitleType="TitleLang01" TextMode="MultiLine" Width="510px" Height="40px"
                                        BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmSTD003" BOID="STD003" FieldName="efste007"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <!--edit by elvis 2013/01/02 Start-->
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <div id="DivNoteList" style="color: red; padding-left: 60px;">
                                        <cc1:DscLabel ID="lblMSGNotes" runat="server" Text="注意事項：">
                                        </cc1:DscLabel>
                                        <cc1:DscLabel ID="lblMSG01" runat="server" 
                                            Text="1.加班日期、時間不在上班日期、時間範圍內。2.勾選自行輸入加班總時數。則請自行輸入加班總時數及其他必填項目。">
                                        </cc1:DscLabel>
                                    </div>
                                </td>
                            </tr>
                            <!--edit by elvis 2013/01/02 End-->
                        </table>
                        <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 105; left: 622px;
                            position: absolute; top: 141px" runat="server" ShowSummary="False" ShowMessageBox="True">
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
                        <cc1:DscTextBox ID="efste001" Title="表單代號" Style="z-index: 101; left: 32px; position: absolute;
                            top: 15px" runat="server" Cellpanding="2" border="0" CellNo1CssClass=""
                            cellpadding="2" cellspacing="0" TitleType="TitleLang01"
                            TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD003" BOID="STD003" FieldName="efste001"></FrmFieldKeys>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efste002" Title="表單單號" Style="z-index: 102; left: 32px; position: absolute;
                            top: 50px" runat="server" Cellpanding="2" border="0" CellNo1CssClass=""
                            cellpadding="2" cellspacing="0" TitleType="TitleLang01"
                            TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD003" BOID="STD003" FieldName="efste002"></FrmFieldKeys>
                        </cc1:DscTextBox>
                        &nbsp;
                        <input id="Hidden1" style="z-index: 103; left: 288px; position: absolute; top: 18px"
                            type="hidden" runat="server">
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
        </div>
    </div>
</asp:Content>
