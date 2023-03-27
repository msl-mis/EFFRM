<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.forms.STD012, src.FRM.STD012" %>

<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<asp:Content ID="STD012FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->

    <script src="STD012.js" type="text/javascript"></script>

    <div id="cover" style="overflow: auto; width: 100%;">
        <div id="createRecord" style="width: 98%; height: 100%" runat="server">
            <!--EcPnlMaster區塊 -->
            <cc1:DscPanel ID="ecPnlMaster" runat="server" BorderStyle="None" BorderColor="Transparent"
                BorderWidth="0px" Width="100%" Height="250px" FrmDefineKeys-BOID="STD012" FrmDefineKeys-FrmID="FrmSTD012"
                FrmDefineKeys-FrmType="Query" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'>

                </iewc:TabStrip>
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%"
                    Height="280px" BackColor="Transparent">
                    <div class="TabPage" style="position: relative; height: 100%; left: 0px; top: 0px;">
                        <table style="width:100%; height:100%;" class ="STD_table">
                            <tr>
								<!--2010/05/20,hiro,C01-20100520001,電子表單統一標題格式,修正css設計之格線與標題藍色定體，未生效↓-->
								<!--td align="center" class="STD_titleTd"-->
								<td align="center" class="Tilteline">
								<!--2010/05/20,hiro,C01-20100520001,電子表單統一標題格式,修正css設計之格線與標題藍色定體，未生效↑-->
                                    <asp:Label ID="title" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Blue" Text="簽 呈"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 23px" class ="STD_td">
                                    <cc1:DscOpenQuery ID="efstr003" Title="發文者" runat="server" LangText="發文者" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" 
                                        cellpadding="2" cellspacing="0" TxtInput_TabIndex="0">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <FrmFieldKeys FrmID="FrmSTD012" BOID="STD012" FieldName="efstr003"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td class ="STD_td">
                                    <cc1:DscDropDownList ID="efstr004" Title="緊急度" runat="server" LangText="緊急度" Cellpanding="2"
                                        InputEnabled="True" TitleWidth="120px" SelectedIndex="0" AutoPostBack="False"
                                        AddAttributes="" border="0" cellpadding="2" cellspacing="0" DDLInput_TabIndex="0">
                                        <FrmFieldKeys BOID="STD012" FieldName="efstr004" FrmID="FrmSTD012" />
                                        <Items>
                                            <asp:ListItem Selected="True" Value="0">低</asp:ListItem>
                                            <asp:ListItem Value="1">普通</asp:ListItem>
                                            <asp:ListItem Value="2">高</asp:ListItem>
                                        </Items>
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <CommentList F0001="Combo" F0002="STD012_efstr004" />
                                        <TitleStyle Width="120px" />
                                    </cc1:DscDropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class ="STD_td">
                                    <cc1:DscDropDownList ID="efstr005" Title="重要性" runat="server" LangText="重要性" Cellpanding="2"
                                        InputEnabled="True" TitleWidth="120px" SelectedIndex="1" AutoPostBack="False"
                                        AddAttributes="" border="0" cellpadding="2" cellspacing="0" DDLInput_TabIndex="0">
                                        <FrmFieldKeys BOID="STD012" FieldName="efstr005" FrmID="FrmSTD012" />
                                        <Items>
                                            <asp:ListItem Value="0">低</asp:ListItem>
                                            <asp:ListItem Selected="True" Value="1">普通</asp:ListItem>
                                            <asp:ListItem Value="2">高</asp:ListItem>
                                        </Items>
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <CommentList F0001="Combo" F0002="STD012_efstr005" />
                                        <TitleStyle Width="120px" />
                                    </cc1:DscDropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class ="STD_td">
                                    <cc1:DscDropDownList ID="efstr006" Title="敏感度" runat="server" LangText="敏感度" Cellpanding="2"
                                        InputEnabled="True" TitleWidth="120px" SelectedIndex="0" AutoPostBack="False"
                                        AddAttributes="" border="0" cellpadding="2" cellspacing="0" DDLInput_TabIndex="0">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmSTD012" BOID="STD012" FieldName="efstr006"></FrmFieldKeys>
                                        <Items>
                                            <asp:ListItem Selected="True" Value="0">普通</asp:ListItem>
                                            <asp:ListItem Value="1">個人</asp:ListItem>
                                            <asp:ListItem Value="2">私密</asp:ListItem>
                                            <asp:ListItem Value="3">機密</asp:ListItem>
                                        </Items>
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <CommentList F0001="Combo" F0002="STD012_efstr006" />
                                    </cc1:DscDropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class ="STD_td">
                                    <cc1:DscTextBox ID="efstr007" Title="簽呈主旨" runat="server" LangText="簽呈主旨" Cellpanding="2"
                                        TitleWidth="120px" TxtInput_TabIndex="0" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                        cellpadding="2" cellspacing="0" Text="" TitleTextVerticalAlign="Top">
                                        <FrmFieldKeys BOID="STD012" FieldName="efstr007" FrmID="FrmSTD012" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="510px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class ="STD_td">
                                    <cc1:DscTextBox ID="efstr008" runat="server" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                        cellpadding="2" cellspacing="0" LangText="說明" Text="" TextMode="MultiLine" Title="說明"
                                        TitleWidth="120px" TxtInput_TabIndex="0" TitleTextVerticalAlign="Top">
                                        <FrmFieldKeys BOID="STD012" FieldName="efstr008" FrmID="FrmSTD012" />
                                        <InputStyle CssClass="Edit20" Height="80px" Width="510px" />
                                        <TitleStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class ="STD_td">
                                    <cc1:DscTextBox ID="efstr009" Title="辦法" runat="server" Cellpanding="2" TitleWidth="120px"
                                        TextMode="MultiLine" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2"
                                        cellspacing="0" LangText="辦法" Text="" TxtInput_TabIndex="0" TitleTextVerticalAlign="Top">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <FrmFieldKeys FrmID="FrmSTD012" BOID="STD012" FieldName="efstr009"></FrmFieldKeys>
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 107; left: 457px;
                            position: absolute; top: 38px" runat="server" ShowSummary="False" ShowMessageBox="True"
                            Width="112px"></asp:ValidationSummary>
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
                        <cc1:DscTextBox ID="efstr001" Title="表單名稱" Style="z-index: 101; left: 245px; position: absolute;
                            top: 16px" runat="server" Cellpanding="2" TitleWidth="110px" border="0" CellNo1CssClass=""
                            CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="DscTextBox:" TxtInput_TabIndex="0"
                            Text="">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD012" BOID="STD012" FieldName="efstr001"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efstr002" Title="單號" Style="z-index: 102; left: 245px; position: absolute;
                            top: 49px" runat="server" Cellpanding="2" TitleWidth="110px" border="0" CellNo1CssClass=""
                            CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="DscTextBox:" TxtInput_TabIndex="0"
                            Text="">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmSTD012" BOID="STD012" FieldName="efstr002"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
        </div>
    </div>
</asp:Content>
