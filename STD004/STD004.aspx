<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.forms.STD004, src.FRM.STD004" %>

<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<asp:Content ID="STD004FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->
    <script src="STD004.js" type="text/javascript"></script>

    <div id="cover">
        <div id="createRecord" style="width: 98%; overflow: hidden" runat="server">
            <!--EcPnlMaster區塊 -->
            <cc1:DscPanel ID="ecPnlMaster" runat="server" BorderStyle="None" BorderColor="Transparent"
                BorderWidth="0px" FrmDefineKeys-BOID="STD004" FrmDefineKeys-FrmID="FrmSTD004"
                FrmDefineKeys-FrmType="Query" IniHTML='&#10;<div style="WIDTH: 110%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'>
                <cc1:DscPanel ID="divheadDefault" Style="display: block; width: 100%" runat="server"
                    BackColor="Transparent" Height="350px">
                    <div class="TabPage" style="position: relative; height: 102%; width: 100%; left: 0px;
                        top: 0px;">
                        <table style="width: 100%; height: 100%;" class="STD_table">
                            <tr>
                                <!--2010/05/20,hiro,C01-20100520001,電子表單統一標題格式,修正css設計之格線與標題藍色定體，未生效↓-->
                                <!--td colspan="2" align="center" class="STD_titleTd"-->
                                <td colspan="2" align="center" class="Tilteline">
                                    <!--2010/05/20,hiro,C01-20100520001,電子表單統一標題格式,修正css設計之格線與標題藍色定體，未生效↑-->
                                    <asp:Label ID="title" runat="server" Font-Bold="True" Font-Size="small" ForeColor="Blue"
                                        Text="出 差 申 請 單" Width="120px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%;" class="STD_td">
                                    <cc1:DscOpenQuery ID="efstf003" Title="出差人員" runat="server" LangText="出差人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" cellpadding="2" cellspacing="0" TxtInput_TabIndex="0">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <FrmFieldKeys FrmID="FrmSTD004" BOID="STD004" FieldName="efstf003"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                                <td style="width: 50%;" class="STD_td">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="efstf004" Title="代理人員" runat="server" Cellpanding="2" TitleWidth="120px"
                                        BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" cellpadding="2" cellspacing="0" LangText="代理人員"
                                        ReturnText="" Text="" TxtInput_TabIndex="0">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <FrmFieldKeys FrmID="FrmSTD004" BOID="STD004" FieldName="efstf004"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="efstf005" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="起始時間" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                        DisplayMode="yyyyMMddHHmm" LangText="起始時間" Text="" TimeField="" TitleWidth="120px"
                                        TxtInput_TabIndex="0" DateSaveFormat="String">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle Width="120px" CssClass="Edit20" />
                                        <FrmFieldKeys BOID="STD004" FieldName="efstf005" FrmID="FrmSTD004" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="efstf006" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="截止時間" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                        DisplayMode="yyyyMMddHHmm" LangText="截止時間" Text="" TimeField="" TitleWidth="120px"
                                        TxtInput_TabIndex="0" DateSaveFormat="String">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle Width="120px" CssClass="Edit20" />
                                        <FrmFieldKeys BOID="STD004" FieldName="efstf006" FrmID="FrmSTD004" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscTextBox ID="efstf007" Title="出差天數" runat="server" LangText="出差天數" Cellpanding="2"
                                                    TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                                    cellpadding="2" cellspacing="0" Text="">
                                                    <FrmFieldKeys FrmID="FrmSTD004" BOID="STD004" FieldName="efstf007"></FrmFieldKeys>
                                                    <TitleStyle Width="120px"></TitleStyle>
                                                    <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                                    <Validator ValidatorMsg="" ValidatorExpression="(\d{0,})[\.]?(\d{0,})" MsgF0001="PSMSG"
                                                        MsgF0002="VSG002" ValidatorName="簡單數字"></Validator>
                                                </cc1:DscTextBox>
                                            </td>
                                            <td>
                                                <!--2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↓-->
                                                <cc1:DscCheckBox ID="efstf014" runat="server" Checked="False" CheckedTrueValue="Y"
                                                    CheckedFalseValue="N" ShowTitle="False" Text="自行輸入出差天數、時數">
                                                    <InputStyle Height="20px" Width="133px" />
                                                    <TitleStyle Width="0px" />
                                                    <FrmFieldKeys FrmID="FrmSTD004" BOID="STD004" FieldName="efstf014"></FrmFieldKeys>
                                                </cc1:DscCheckBox>
                                                <!--2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↑-->
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID="efstf008" Title="出差時數" runat="server" LangText="請假時數" Cellpanding="2"
                                        TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                        cellpadding="2" cellspacing="0" Text="">
                                        <FrmFieldKeys FrmID="FrmSTD004" BOID="STD004" FieldName="efstf008"></FrmFieldKeys>
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="(\d{0,})[\.]?(\d{0,})" MsgF0001="PSMSG"
                                            MsgF0002="VSG002" ValidatorName="簡單數字"></Validator>
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%;" class="STD_td">
                                    <cc1:DscTextBox ID="efstf009" runat="server" Title="出差地點" TitleWidth="120px">
                                        <FrmFieldKeys BOID="STD004" FieldName="efstf009" FrmID="FrmSTD004" />
                                        <InputStyle Width="120px" />
                                        <TitleStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%;" class="STD_td">
                                    <cc1:DscTextBox ID="efstf010" runat="server" Title="交通工具" TitleWidth="120px">
                                        <FrmFieldKeys BOID="STD004" FieldName="efstf010" FrmID="FrmSTD004" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <TitleStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID="efstf011" Title="暫借款" runat="server" LangText="暫借款" TitleWidth="120px"
                                        TxtInput_TabIndex="0" CellNo1CssClass="" CellNo2CssClass="" Text="">
                                        <FrmFieldKeys BOID="STD004" FieldName="efstf011" FrmID="FrmSTD004" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <Validator MsgF0001="PSMSG" MsgF0002="VSG002" ValidatorExpression="(\d{0,})[\.]?(\d{0,})"
                                            ValidatorMsg="" ValidatorName="簡單數字" />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="efstf012" Title="同行人員" runat="server" Cellpanding="2" TitleWidth="120px"
                                        BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/group.gif"
                                        ReturnVisible="True" border="0" cellpadding="2" cellspacing="0" LangText="代理人員"
                                        TxtInput_TabIndex="0" TextMode="MultiLine" TitleTextVerticalAlign="Top">
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Height="50px" Width="510px" />
                                        <FrmFieldKeys BOID="STD004" FieldName="efstf012" FrmID="FrmSTD004" />
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="efstf013" runat="server" Title="說明" TitleWidth="630px" border="0"
                                        CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="说明"
                                        Text="" TitleType="TitleLang01" TxtInput_TabIndex="0" Height="82px" TextMode="MultiLine"
                                        Width="581px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle CssClass="Edit20" Width="510px" Height="80px"></InputStyle>
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmSTD004" BOID="STD004" FieldName="efstf013"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <!--2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↓-->
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <div id="DivNoteList" style="color: red; padding-left: 60px;">
                                        <cc1:DscLabel ID="lblMSGNotes" runat="server" Text="注意事項：">
                                        </cc1:DscLabel>
                                        <cc1:DscLabel ID="lblMSG01" runat="server" Text="1.出差日期、時間不在上班日期、時間範圍內。2.勾選自行輸入出差天數、時數。則請自行輸入出差天數、出差時數及其他必填項目。">
                                        </cc1:DscLabel>
                                    </div>
                                </td>
                            </tr>
                            <!--2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↑-->
                        </table>
                        <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 109; left: 465px;
                            position: absolute; top: 247px" runat="server" ShowSummary="False" ShowMessageBox="True">
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
                        <cc1:DscTextBox ID="edReceiver" runat="server" ShowTitle="False" Style="z-index: 107;
                            left: 259px; position: absolute; top: 196px" Title="" Width="36px">
                            <InputStyle Width="0px" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <TitleStyle Width="60px" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efstf001" Title="DscTextBox:" Style="z-index: 101; left: 245px;
                            position: absolute; top: 16px" runat="server" Cellpanding="2" TitleWidth="110px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TxtInput_TabIndex="0" Text="">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD004" BOID="STD004" FieldName="efstf001"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efstf002" Title="DscTextBox:" Style="z-index: 102; left: 245px;
                            position: absolute; top: 49px" runat="server" Cellpanding="2" TitleWidth="110px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TxtInput_TabIndex="0" Text="">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD004" BOID="STD004" FieldName="efstf002"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <asp:HiddenField ID="hiddenLanguageType" runat="server" />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </cc1:DscPanel>
            </cc1:DscPanel>
        </div>
    </div>
</asp:Content>
