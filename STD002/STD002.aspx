<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.forms.STD002, src.FRM.STD002" %>

<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<asp:Content ID="STD002FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->

    <script src="STD002.js" type="text/javascript"></script>

    <div id="cover" style="overflow: auto; width: 100%;">
        <div id="createRecord" style="width: 98%; height: 100%" runat="server">
            <!--EcPnlMaster區塊 -->
            <cc1:DscPanel ID="ecPnlMaster" runat="server" BorderStyle="None" BorderColor="Transparent"
                BorderWidth="0px" Width="100%" Height="250px" FrmDefineKeys-BOID="STD002" FrmDefineKeys-FrmID="FrmSTD002"
                FrmDefineKeys-FrmType="Query" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'>
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%"
                    Height="260px" BackColor="Transparent">
                    <div class="TabPage" style="position: relative; height: 100%">
                        <table style="width: 100%">
                            <tr>
                                <td id="test" colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="title" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Blue"
                                        Text="請 假 單"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="efstc003" Title="請假人" runat="server" LangText="請假人" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmSTD002" BOID="STD002" FieldName="efstc003"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="efstc004" Title="代理人" runat="server" Cellpanding="2" TitleWidth="120px"
                                        BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" LangText="代理人" ReturnText="" Text="" TxtInput_TabIndex="0">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmSTD002" BOID="STD002" FieldName="efstc004"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDropDownList ID="efstc005" Title="假別" runat="server" LangText="假別" Cellpanding="2"
                                        InputEnabled="True" TitleWidth="120px" SelectedIndex="0" AutoPostBack="False"
                                        AddAttributes="" border="0" cellpadding="2" cellspacing="0" DDLInput_TabIndex="0">
                                        <CommentList F0001="Combo" F0002="STD002"></CommentList>
                                        <FrmFieldKeys FrmID="FrmSTD002" BOID="STD002" FieldName="efstc005"></FrmFieldKeys>
                                        <InputStyle Width="120px" CssClass="Edit20" Height="20px"></InputStyle>
                                        <TitleStyle Width="120px"></TitleStyle>
                                    </cc1:DscDropDownList>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="efstc006" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="起始時間" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                        DisplayMode="yyyyMMddHHmm" LangText="起始時間" Text="" TimeField="" TitleWidth="120px"
                                        TxtInput_TabIndex="0" DateSaveFormat="String">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <InputStyle Width="120px" CssClass="Edit20" />
                                        <FrmFieldKeys BOID="STD002" FieldName="efstc006" FrmID="FrmSTD002" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="efstc007" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="截止時間" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                        DisplayMode="yyyyMMddHHmm" LangText="截止時間" Text="" TimeField="" TitleWidth="120px"
                                        TxtInput_TabIndex="0" DateSaveFormat="String">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle Width="120px" CssClass="Edit20" />
                                        <FrmFieldKeys BOID="STD002" FieldName="efstc007" FrmID="FrmSTD002" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscTextBox ID="efstc008" Title="請假天數" runat="server" LangText="請假天數" Cellpanding="2"
                                                    TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                                    cellpadding="2" cellspacing="0" Text="">
                                                    <InputStyle Width="120px" CssClass="Edit20" />
                                                    <Validator ValidatorExpression="(\d{0,})[\.]?(\d{0,})" ValidatorMsg="" ValidatorName="簡單數字"
                                                        MsgF0001="PSMSG" MsgF0002="VSG002" />
                                                    <TitleStyle Width="120px" />
                                                    <FrmFieldKeys BOID="STD002" FieldName="efstc008" FrmID="FrmSTD002" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td>
                                                <cc1:DscCheckBox ID="efstc012" runat="server" Checked="False" CheckedTrueValue="Y"
                                                    CheckedFalseValue="N" ShowTitle="False" Text="自行輸入請假天數、時數" Style="z-index: 699;
                                                    left: 250px; top: 125px">
                                                    <InputStyle Height="20px" Width="133px" />
                                                    <TitleStyle Width="0px" />
                                                    <FrmFieldKeys FrmID="FrmSTD002" BOID="STD002" FieldName="efstc012"></FrmFieldKeys>
                                                </cc1:DscCheckBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID="efstc009" Title="請假時數" runat="server" LangText="請假時數" Cellpanding="2"
                                        TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                        cellpadding="2" cellspacing="0" Text="">
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <Validator ValidatorExpression="(\d{0,})[\.]?(\d{0,})" ValidatorMsg="" ValidatorName="簡單數字"
                                            MsgF0001="PSMSG" MsgF0002="VSG002" />
                                        <TitleStyle Width="120px" />
                                        <FrmFieldKeys BOID="STD002" FieldName="efstc009" FrmID="FrmSTD002" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <cc1:DscTextBox ID="efstc011" runat="server" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                        cellpadding="2" Cellpanding="2" cellspacing="0" LangText="查詢年份" Text="" Title="查詢年份"
                                        TitleWidth="120px" TxtInput_TabIndex="0">
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <Validator MsgF0001="PSMSG" MsgF0002="VSG002" ValidatorExpression="(\d{0,})[\.]?(\d{0,})"
                                            ValidatorMsg="" ValidatorName="簡單數字" />
                                        <TitleStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="STD_td" colspan="2">
                                    <input id="btnQuery" runat="server" align="middle" class="EFbtn" style="width: 500px;"
                                        type="button" value="查 詢 請 假 總 數" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="efstc010" runat="server" Title="备注" TitleWidth="100px" border="0"
                                        CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="说明"
                                        Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="630px" Height="40px"
                                        BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmSTD002" BOID="STD002" FieldName="efstc010"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <!--2013/01/02:elvis:3.5.1.3:S00-20121029013:修改為可自行輸入天數、時數↓-->
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <div id="DivNoteList" style="color: red; padding-left: 60px;">
                                        <cc1:DscLabel ID="lblMSGNotes" runat="server" Text="注意事項：">
                                        </cc1:DscLabel>
                                        <cc1:DscLabel ID="lblMSG01" runat="server" Text="1.請假日期、時間不在上班日期、時間範圍內。2.勾選自行輸入請假天數、時數。則請自行輸入請假天數、時數及其他必填項目。">
                                        </cc1:DscLabel>
                                    </div>
                                </td>
                            </tr>
                            <!--2013/01/02:elvis:3.5.1.3:S00-20121029013:修改為可自行輸入天數、時數↑-->
                        </table>
                        <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 108; left: 691px;
                            position: absolute; top: 83px" runat="server" ShowSummary="False" ShowMessageBox="True">
                        </asp:ValidationSummary>
                        <cc1:DscLabel ID="DscLabel1" runat="server" Style="z-index: 111; left: 0px; position: absolute;
                            top: 16px" Text="">
                        </cc1:DscLabel>
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server" Width="100%">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent;
                        left: 0px; top: 0px;">
                        &nbsp;
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent">
                        <cc1:DscTextBox ID="efstc001" Title="DscTextBox:" Style="z-index: 101; left: 245px;
                            position: absolute; top: 16px" runat="server" Cellpanding="2" TitleWidth="110px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD002" BOID="STD002" FieldName="efstc001"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efstc002" Title="DscTextBox:" Style="z-index: 102; left: 245px;
                            position: absolute; top: 49px" runat="server" Cellpanding="2" TitleWidth="110px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD002" BOID="STD002" FieldName="efstc002"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        &nbsp;&nbsp;
                        <asp:HiddenField ID="hiddenLanguageType" runat="server" />
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
        </div>
    </div>
</asp:Content>
