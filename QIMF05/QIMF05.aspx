<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" enableeventvalidation="false" inherits="tw.com.dsc.easyflowDotNet.forms.QIMF05, src.FRM.QIMF05" %>

<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="QIMF05FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->
    <!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
    <div id="cover" style="width: 100%;">
        <div id="createRecord" style="width: 100%; height: 100%" runat="server">
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmQIMF05" FrmDefineKeys-BOID="QIMF05"
                BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="360px">
                <!--單頭頁籤-->
                <iewc:TabStrip ID="TabStrip1" runat="server"
                    TabDefaultStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabHoverStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabSelectedStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);"
                    CssClass="divToolBar2">
                    <iewc:Tab ID='headDefault' Text='單頭頁籤1' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'></iewc:Tab>
                </iewc:TabStrip>
                <!--單頭頁籤畫面集合-->

                <!--單頭頁籤 一-->
                <cc1:DscPanel ID='divheadDefault' Style='display: block' runat='server' Width='100%' Height='360px' BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 360px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummaryHead01' Style='z-index: 100; position: absolute; left: 745px; top: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
                        <!--此區間放入單頭頁籤 一 的各個dsc元件-->

                        <cc1:DscTextBox ID='qimf05001' runat='server' Title='表單代號'
                            Style='display: none; z-index: 101; position: absolute; left: 245px; top: 16px;'
                            TxtInput_TabIndex='0'>
                            <InputStyle Width='120px'></InputStyle>
                            <TitleStyle Width='110px'></TitleStyle>
                            <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05001'></FrmFieldKeys>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf05002' runat='server' Title='表單單號'
                            Style='display: none; z-index: 102; position: absolute; left: 245px; top: 49px;'
                            TxtInput_TabIndex='0'>
                            <InputStyle Width='120px'></InputStyle>
                            <TitleStyle Width='110px'></TitleStyle>
                            <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05002'></FrmFieldKeys>
                        </cc1:DscTextBox>

                        <%--//^_^ 20190401 edit by 06473 Doris 0000153672_38_0001↓--%>
                        <cc1:DscTextBox ID='qimf05023' runat='server' Title='判定'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05023'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf05024' runat='server' Title='複驗判定'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05024'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf05025' runat='server' Title='判定結果'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05025'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf05026' runat='server' Title='圖面1'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05026'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf05027' runat='server' Title='圖面2'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05027'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf05028' runat='server' Title='圖面3'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05028'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscCheckBox ID='qimf05029' runat='server' Text='作廢碼' ShowTitle='False' Style="display: none;"
                            CheckBoxInput_TabIndex='150' Checked='False' CheckedTrueValue='Y' CheckedFalseValue='N'>
                            <InputStyle Width='100px' Height='20px' />
                            <FrmFieldKeys BOID="QIMF05" FieldName="qimf05029" FrmID="FrmQIMF05" />
                        </cc1:DscCheckBox>

                        <%--//^_^ 20191122 edit by 13058 winni DSCBV0972A_38_0001↓--%>
                       <%-- <cc1:DscTextBox ID="qimf05202" runat="server" ShowTitle="False" Style="left: 100px; display: none;" Title="加工序號" TxtInput_TabIndex="140">
                            <ReturnTextBoxStyle Width="120px" />
                            <FrmFieldKeys BOID="QIMF05" FieldName="qimf05202" FrmID="FrmQIMF05" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <TitleStyle Width="100px" />
                            <InputStyle CssClass="Edit20" Height="20px" Width="100px" />
                        </cc1:DscTextBox>--%>
                        <%--//^_^ 20191122 edit by 13058 winni DSCBV0972A_38_0001↑--%>


                        <%--開始畫TABLE--%>
                        <table>
                            <tr>
                                <td></td>
                                <td colspan="6" style="line-height: 30px;" class="OEMCenter">
                                    <cc1:DscLabel ID="lblHeadTab" runat="server" Font-Bold="True" Height="20px"
                                        Style="vertical-align: middle; font-size: 16pt; line-height: 20px" Text="製程移轉檢驗單">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="HeadTabStrip01" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td ></td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf2024" runat="server" Style="vertical-align: middle;" Text="公司代號">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05003" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDropDownList ID='qimf05003' runat='server' Title='公司代號'
                                        DDLInput_TabIndex='10' ShowTitle="False" Style="left: 100px">
                                        <Items>
                                        </Items>
                                        <TitleStyle Width='100px' />
                                        <InputStyle Width='120px' Height='20px' CssClass="Edit20" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05003'></FrmFieldKeys>
                                        <CommentList F0001='Combo' F0002='QIMF05_qimf05003' />
                                    </cc1:DscDropDownList>
                                </td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05005" runat="server" Style="vertical-align: middle;" Text="製程單號">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05005" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder" colspan="3">
                                    <cc1:DscOpenQuery ID="qimf05005" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif" ReturnVisible="True" ShowTitle="False" Style="left: 100px" TextMode="SingleLine" Title="製程單號" TxtInput_TabIndex="20">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Font-Size="X-Small" Height="20px" Width="100px" />
                                        <ReturnTextBoxStyle Width="100px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05005" FrmID="FrmQIMF05" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <%--<td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05031" runat="server" Style="vertical-align: middle;" Text="移出類別">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05031" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder" colspan="3">
                                    <table>
                                        <tr>
                                            <td class="OEMBorder" style="width:150px;">
                                                <cc1:DscDropDownList ID='qimf05031' runat='server' Title='移出類別'
                                                    DDLInput_TabIndex='60' ShowTitle="False" Style="left: 100px">
                                                    <Items>
                                                        <asp:ListItem Value="1">1.生產線別</asp:ListItem>
                                                        <asp:ListItem Value="2">2.加工廠商</asp:ListItem>
                                                        <asp:ListItem Value="3">3.庫別</asp:ListItem>
                                                    </Items>
                                                    <TitleStyle Width='120px' />
                                                    <InputStyle Width='120px' Height='25px' CssClass="Edit20" />
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05031'></FrmFieldKeys>
                                                    <CommentList F0001='Combo' F0002='QIMF05_qimf05031' />
                                                </cc1:DscDropDownList>
                                            </td>
                                            <td class="OEMBorder OEMCenter titleColor">
                                                <cc1:DscLabel ID="lblqimf05032" runat="server" Style="vertical-align: middle;" Text="移轉型態">
                                                    <Comment F0001="FD" F0002="QIMF05" F0003="qimf05032" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder">
                                                <cc1:DscDropDownList ID='qimf05032' runat='server' Title='移轉型態'
                                                    DDLInput_TabIndex='60' ShowTitle="False" Style="left: 100px">
                                                    <Items>
                                                        <asp:ListItem Value="1">1.正常完成</asp:ListItem>
                                                        <asp:ListItem Value="2">2.重工完成</asp:ListItem>
                                                        <asp:ListItem Value="3">3.退回重工</asp:ListItem>
                                                        <asp:ListItem Value="4">4.撥轉</asp:ListItem>
                                                        <asp:ListItem Value="5">5.盤盈損</asp:ListItem>
                                                        <asp:ListItem Value="6">6.投入</asp:ListItem>
                                                    </Items>
                                                    <TitleStyle Width='120px' />
                                                    <InputStyle Width='120px' Height='25px' CssClass="Edit20" />
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05032'></FrmFieldKeys>
                                                    <CommentList F0001='Combo' F0002='QIMF05_qimf05032' />
                                                </cc1:DscDropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>--%>
                            </tr>
                            <tr>
                                <td class="itemStyle"></td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05030" runat="server" Style="vertical-align: middle;" Text="移轉單號">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05030" />
                                    </cc1:DscLabel>
                                </td>
                                <td>
                                    <cc1:DscOpenQuery ID="qimf05030" runat="server" border="0" BtntoInput="False" BtnVisible="True" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass="" cellpadding="2" cellspacing="0" DecimalPointLength="0" Format="Null" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif" LangText="料號" ReturnText="" ReturnVisible="True" ShowTitle="False" Style="left: 100px;" Text="" Title="移轉單號" TitleWidth="100px" TxtInput_TabIndex="30" Wrap="True">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="100px" />
                                        <ReturnTextBoxStyle Width="100px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05030" FrmID="FrmQIMF05" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05006" runat="server" Style="vertical-align: middle;" Text="料號">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05006" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="itemStyle OEMBorder">
                                    <cc1:DscOpenQuery ID="qimf05006" runat="server" border="0" BtntoInput="False" BtnVisible="True" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass="" cellpadding="2" cellspacing="0" DecimalPointLength="0" Format="Null" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif" LangText="料號" ReturnText="" ReturnVisible="True" ShowTitle="False" Style="left: 100px;" Text="" Title="料號" TitleWidth="100px" TxtInput_TabIndex="30" Wrap="True">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="100px" />
                                        <ReturnTextBoxStyle Width="100px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05006" FrmID="FrmQIMF05" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05010" runat="server" Style="vertical-align: middle;" Text="預計數量">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05010" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="auto-style10">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscTextBox ID="qimf05010" runat="server" Title="預計產量" TxtInput_TabIndex="40" ShowTitle="False" Style="left: 100px" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF05" FieldName="qimf05010" FrmID="FrmQIMF05" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td>
                                                <cc1:DscTextBox ID="qimf05011" runat="server" Title="單位" TxtInput_TabIndex="50" ShowTitle="False" Style="left: 100px">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF05" FieldName="qimf05011" FrmID="FrmQIMF05" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                </cc1:DscTextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05008" runat="server" Style="vertical-align: middle;" Text="抽樣方式">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05008" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDropDownList ID='qimf05008' runat='server' Title='抽樣方式'
                                        DDLInput_TabIndex='60' ShowTitle="False" Style="left: 100px">
                                        <Items>
                                        </Items>
                                        <TitleStyle Width='100px' />
                                        <InputStyle Width='100px' Height='25px' CssClass="Edit20" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05008'></FrmFieldKeys>
                                        <CommentList F0001='Combo' F0002='QIMF05_qimf05008' />
                                    </cc1:DscDropDownList>
                                </td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05004" runat="server" Style="vertical-align: middle;" Text="製程代號">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05004" />
                                    </cc1:DscLabel>
                                </td>
                                <td>
                                    <cc1:DscOpenQuery ID="qimf05004" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif"
                                        ReturnVisible="True" ShowTitle="False" Style="left: 100px" TextMode="SingleLine" Title="製程代號" TxtInput_TabIndex="70">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="100px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05004" FrmID="FrmQIMF05" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05012" runat="server" Style="vertical-align: middle;" Text="檢驗日期">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05012" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="auto-style8">
                                    <cc1:DscDateAssistant2 ID="qimf05012" runat="server" BtnVisible="True" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/" DateSaveFormat="String" DisplayMode="yyyyMMdd" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif" ShowTitle="False" Style="left: 100px" Title="檢驗日期" TxtInput_TabIndex="80">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05012" FrmID="FrmQIMF05" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05009" runat="server" Style="vertical-align: middle;" Text="抽樣水準">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05009" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDropDownList ID="qimf05009" runat="server" DDLInput_TabIndex="90" ShowTitle="False" Style="left: 100px" Title="抽樣水準">
                                        <Items>
                                        </Items>
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="150px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05009" FrmID="FrmQIMF05" />
                                        <CommentList F0001="Combo" F0002="QIMF05_qimf05009" />
                                    </cc1:DscDropDownList>
                                </td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05007" runat="server" Style="vertical-align: middle;" Text="線別\廠商代號">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05007" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscOpenQuery ID="qimf05007" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif"
                                        ReturnVisible="True" ShowTitle="False" Style="left: 100px" TextMode="SingleLine" Title="線別\廠商代號" TxtInput_TabIndex="100">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="100px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05007" FrmID="FrmQIMF05" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05013" runat="server" Style="vertical-align: middle;" Text="實際完工日期">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05013" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="auto-style8">
                                    <cc1:DscDateAssistant2 ID="qimf05013" runat="server" BtnVisible="True" DateLan="ChristianEra"
                                        datePagePath="../../_Common/PlatformUtil/Resource/ASP/" DateSaveFormat="String" DisplayMode="yyyyMMdd"
                                        ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif" ShowTitle="False" Style="left: 100px"
                                        Title="實際完工日期" TxtInput_TabIndex="110">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05013" FrmID="FrmQIMF05" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="OEMBorder OEMCenter titleColor" rowspan="2">
                                    <cc1:DscLabel ID="lblqimf05014" runat="server" Style="vertical-align: middle;" Text="備註">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05014" />
                                    </cc1:DscLabel>
                                </td>
                                <td colspan="3" class="OEMBorder" rowspan="2">
                                    <cc1:DscTextBox ID="qimf05014" runat="server" TextMode="MultiLine" Title="備註" TxtInput_TabIndex="120" ShowTitle="False" Style="left: 100px">
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05014" FrmID="FrmQIMF05" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="50px" Width="700px" />
                                    </cc1:DscTextBox>
                                </td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05015" runat="server" Style="vertical-align: middle;" Text="檢驗版本">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05015" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="auto-style8">
                                    <cc1:DscTextBox ID="qimf05015" runat="server" Title="檢驗版本" TxtInput_TabIndex="130" ShowTitle="False" Style="left: 100px">
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05015" FrmID="FrmQIMF05" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="OEMBorder OEMCenter titleColor">
                                    <cc1:DscLabel ID="lblqimf05016" runat="server" Style="vertical-align: middle;" Text="填表人">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="qimf05016" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="auto-style8">
                                    <cc1:DscOpenQuery ID="qimf05016" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif" ReturnVisible="True" ShowTitle="False" TextMode="SingleLine" Title="填表人" TxtInput_TabIndex="140" Style="left: 100px">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF05" FieldName="qimf05016" FrmID="FrmQIMF05" />
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="4" style="text-align: center; background-color: #CCDDFF;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblName1" runat="server" Style="vertical-align: middle;" Text="檢　驗　統　計">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="lblName1" />
                                    </cc1:DscLabel>
                                </td>
                                <td colspan="2" style="text-align: center; background-color: #CCDDFF;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblName2" runat="server" Style="vertical-align: middle;" Text="抽　樣　計　畫">
                                        <Comment F0001="FD" F0002="QIMF05" F0003="lblName2" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="4">
                                    <table style="width: 100%">
                                        <tr>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf05017" runat="server" Style="vertical-align: middle;" Text="抽樣數">
                                                    <Comment F0001="FD" F0002="QIMF05" F0003="qimf05017" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder" style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf05018" runat="server" Style="vertical-align: middle;" Text="驗收數量">
                                                    <Comment F0001="FD" F0002="QIMF05" F0003="qimf05018" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf05019" runat="server" Style="vertical-align: middle;" Text="驗退數量">
                                                    <Comment F0001="FD" F0002="QIMF05" F0003="qimf05019" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf05020" runat="server" Style="vertical-align: middle;" Text="缺點數">
                                                    <Comment F0001="FD" F0002="QIMF05" F0003="qimf05020" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf05021" runat="server" Style="vertical-align: middle;" Text="不良數">
                                                    <Comment F0001="FD" F0002="QIMF05" F0003="qimf05021" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf05022" runat="server" Style="vertical-align: middle;" Text="報廢數量">
                                                    <Comment F0001="FD" F0002="QIMF05" F0003="qimf05022" />
                                                </cc1:DscLabel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="OEMBorder OEMCenter">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <cc1:DscTextBox ID="qimf05017" runat="server" ShowTitle="False" Style="left: 100px" TextAlign="Right" Title="抽樣數" TxtInput_TabIndex="150">
                                                                <ReturnTextBoxStyle Width="120px" />
                                                                <FrmFieldKeys BOID="QIMF05" FieldName="qimf05017" FrmID="FrmQIMF05" />
                                                                <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                                <TitleStyle Width="100px" />
                                                                <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                            </cc1:DscTextBox>
                                                        </td>
                                                        <%--//^_^ 20210323 edit by 06475 lijyun DSCBV0972A_38_0006↓--%>
                                                        <td>
                                                            <cc1:DscTextBox ID="SamplingUnit" runat="server" ShowTitle="False" Style="left: 100px" Title="單位" TxtInput_TabIndex="160">
                                                                <ReturnTextBoxStyle Width="120px" />
                                                                <FrmFieldKeys BOID="QIMF05" FieldName="SamplingUnit" FrmID="FrmQIMF05" />
                                                                <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                                <TitleStyle Width="100px" />
                                                                <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                            </cc1:DscTextBox>
                                                        </td>
                                                        <%--//^_^ 20210323 edit by 06475 lijyun DSCBV0972A_38_0006↑--%>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td class="OEMBorder">
                                                <cc1:DscTextBox ID="qimf05018" runat="server" ShowTitle="False" Style="left: 100px" Title="驗收數量" TxtInput_TabIndex="160" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF05" FieldName="qimf05018" FrmID="FrmQIMF05" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td class="OEMBorder">
                                                <cc1:DscTextBox ID="qimf05019" runat="server" ShowTitle="False" Style="left: 100px" Title="驗退數量" TxtInput_TabIndex="160" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF05" FieldName="qimf05019" FrmID="FrmQIMF05" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td class="OEMBorder">
                                                <cc1:DscTextBox ID="qimf05020" runat="server" ShowTitle="False" Style="left: 100px" Title="缺點數" TxtInput_TabIndex="170" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF05" FieldName="qimf05020" FrmID="FrmQIMF05" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td class="OEMBorder">
                                                <cc1:DscTextBox ID="qimf05021" runat="server" ShowTitle="False" Style="left: 100px" Title="不良數" TxtInput_TabIndex="170" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF05" FieldName="qimf05021" FrmID="FrmQIMF05" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td class="OEMBorder">
                                                <cc1:DscTextBox ID="qimf05022" runat="server" ShowTitle="False" Style="left: 100px" Title="報廢數量" TxtInput_TabIndex="170" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF05" FieldName="qimf05022" FrmID="FrmQIMF05" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="OEMBorder OEMCenter titleColor">
                                                <cc1:DscLabel ID="lblqimf05023" runat="server" Style="vertical-align: middle;" Text="判定">
                                                    <Comment F0001="FD" F0002="QIMF05" F0003="qimf05023" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td colspan="2">
                                                <asp:RadioButton ID="qimf05023_ctrolRadio0" runat="server" Checked="True" GroupName="qimf05023" Style="vertical-align: middle;" TabIndex="180" Text="合格" Value="Y" />
                                                <asp:RadioButton ID="qimf05023_ctrolRadio1" runat="server" GroupName="qimf05023" Style="vertical-align: middle;" TabIndex="190" Text="不合格" Value="X" />
                                            </td>
                                            <td class="OEMBorder OEMCenter titleColor" rowspan="2">
                                                <cc1:DscLabel ID="lblqimf05025" runat="server" Style="vertical-align: middle;" Text="判定結果">
                                                    <Comment F0001="FD" F0002="QIMF05" F0003="qimf05025" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder" colspan="3">
                                                <asp:RadioButton ID="qimf05025_ctrolRadio0" runat="server" Checked="True" GroupName="qimf05025" Style="vertical-align: middle;" TabIndex="220" Text="OK" Value="Y" />
                                            </td>
                                        <tr>
                                            <td class="OEMBorder OEMCenter titleColor">
                                                <cc1:DscLabel ID="lblqimf05024" runat="server" Style="vertical-align: middle;" Text="複驗判定">
                                                    <Comment F0001="FD" F0002="QIMF05" F0003="qimf05024" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder" colspan="2">
                                                <asp:RadioButton ID="qimf05024_ctrolRadio0" runat="server" Checked="True" GroupName="qimf05024" Style="vertical-align: middle;" TabIndex="200" Text="合格" Value="Y" />
                                                <asp:RadioButton ID="qimf05024_ctrolRadio1" runat="server" GroupName="qimf05024" Style="vertical-align: middle;" TabIndex="210" Text="不合格" Value="X" />
                                            </td>
                                            <td class="OEMBorder" colspan="3">
                                                <asp:RadioButton ID="qimf05025_ctrolRadio1" runat="server" Checked="False" GroupName="qimf05025" Style="vertical-align: middle;" TabIndex="230" Text="NG" Value="X" />
                                            </td>
                                        </tr>
                                        
                                    </table>
                                </td>
                                <td class="OEMBorder" style="text-align: center" colspan="2">
                                    <asp:Image ID="imgSamplingPlan" runat="server" Height="100px" Width="350px" />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="6" class="OEMBorder">
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="text-align: center; width: 33%;">
                                                <asp:Image ID="imgqimf05026" runat="server" Height="120px" Width="200px" />
                                            </td>
                                            <td style="width: 20px"></td>
                                            <td style="text-align: center; width: 33%;">
                                                <asp:Image ID="imgqimf05027" runat="server" Height="120px" Width="200px" />
                                            </td>
                                            <td style="width: 20px"></td>
                                            <td style="text-align: center">
                                                <asp:Image ID="imgqimf05028" runat="server" Height="120px" Width="200px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%--<asp:Button ID="btnProduceData" runat="server" Text="產生檢驗資料" TabIndex="120" CssClass="EFbtn" Font-Size="14px" Font-Names="微軟正黑體" Height="30px" Width="150px" />--%>
                                </td>
                                <td colspan="6">

                                    <div id="divDataCheck" runat="server">
                                    </div>

                                </td>
                            </tr>

                            <tr>
                                <td></td>
                                <td colspan="6" id="tbDataCheck" style="height: 100%;"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="6">
                                    <cc1:DscLabel ID="lblMsg" runat="server" Style="vertical-align: middle;" Text="○:合格   X:不合格   △:堪用" Font-Size="16px" ForeColor="Red">
                                        <Comment F0001="FD" F0002="QIMF05_d01" F0003="Title" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                        </table>
                        <%--//^_^ 20190401 edit by 06473 Doris 0000153672_38_0001↑--%>
                    </div>
                </cc1:DscPanel>



                <!--單身Grid畫面-->

                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px; top: 72px" runat="server" Width="100%">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent; left: 0px; top: 0px;"></div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px; top: 72px" runat="server">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent">
                        <cc1:DscTextBox ID="ThrowERP" runat="server" ShowTitle="False" Style="left: 100px" Title="拋轉碼" TxtInput_TabIndex="150">
                            <ReturnTextBoxStyle Width="120px" />
                            <FrmFieldKeys BOID="QIMF05" FieldName="ThrowERP" FrmID="FrmQIMF05" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <TitleStyle Width="100px" />
                            <InputStyle CssClass="Edit20" Height="25px" Width="120px" />
                        </cc1:DscTextBox>
                        <%--//^_^ 20190822 edit by 06475 lijyun DSCBV0972A_38_0001↓--%>
                        <cc1:DscTextBox ID="JSONObject"
                            runat="server"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2"
                            Cellpanding="2"
                            cellspacing="0" LangText="DscTextBox:"
                            Style="display: none; z-index: 102; left: 245px; position: absolute; top: 49px" Title="JSONObject"
                            TitleType="TitleLang01"
                            TitleWidth="110px"
                            TxtInput_TabIndex="0">
                            <InputStyle Width="120px" />
                            <TitleStyle Width="110px" />
                            <FrmFieldKeys BOID="" FieldName="" FrmID="" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <%--//^_^ 20190822 edit by 06475 lijyun DSCBV0972A_38_0001↑--%>
                        <cc1:DscTextBox ID="qimf05033" runat="server" ShowTitle="False" Style="left: 100px; display: none;" Title="單身序號" TxtInput_TabIndex="140">
                            <ReturnTextBoxStyle Width="120px" />
                            <FrmFieldKeys BOID="QIMF05" FieldName="qimf05033" FrmID="FrmQIMF05" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <TitleStyle Width="100px" />
                            <InputStyle CssClass="Edit20" Height="20px" Width="100px" />
                        </cc1:DscTextBox>
                        <cc1:DscDropDownList ID='qimf05031' runat='server' Title='移出類別'
                            DDLInput_TabIndex='60' ShowTitle="False" Style="left: 100px">
                            <Items>
                                <asp:ListItem Value="1">1.生產線別</asp:ListItem>
                                <asp:ListItem Value="2">2.加工廠商</asp:ListItem>
                                <asp:ListItem Value="3">3.庫別</asp:ListItem>
                            </Items>
                            <TitleStyle Width='120px' />
                            <InputStyle Width='120px' Height='25px' CssClass="Edit20" />
                            <ReturnTextBoxStyle Width="120px" />
                            <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05031'></FrmFieldKeys>
                            <CommentList F0001='Combo' F0002='QIMF05_qimf05031' />
                        </cc1:DscDropDownList>
                      
                        <cc1:DscDropDownList ID='qimf05032' runat='server' Title='移轉型態'
                            DDLInput_TabIndex='60' ShowTitle="False" Style="left: 100px">
                            <Items>
                                <asp:ListItem Value="1">1.正常完成</asp:ListItem>
                                <asp:ListItem Value="2">2.重工完成</asp:ListItem>
                                <asp:ListItem Value="3">3.退回重工</asp:ListItem>
                                <asp:ListItem Value="4">4.撥轉</asp:ListItem>
                                <asp:ListItem Value="5">5.盤盈損</asp:ListItem>
                                <asp:ListItem Value="6">6.投入</asp:ListItem>
                            </Items>
                            <TitleStyle Width='120px' />
                            <InputStyle Width='120px' Height='25px' CssClass="Edit20" />
                            <ReturnTextBoxStyle Width="120px" />
                            <FrmFieldKeys FrmID='FrmQIMF05' BOID='QIMF05' FieldName='qimf05032'></FrmFieldKeys>
                            <CommentList F0001='Combo' F0002='QIMF05_qimf05032' />
                        </cc1:DscDropDownList>
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
            <!--2012/12/25:3.5.1.38:hiro:S00-20121031003:3.修正多選開窗onChange事件。↓-->
            <asp:HiddenField ID='hdnOpenQueryPreSetValue' runat='server' Value='' />
            <!--2012/12/25:3.5.1.38:hiro:S00-20121031003:3.修正多選開窗onChange事件。↑-->
            <!--2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↓-->
            <cc1:DscPanel ID="hdnDisplayInHTML2" Style="display: none; z-index: 116; left: 264px; top: 72px" runat="server">
                <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent">
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
    <%--//^_^ 20190401 edit by 06473 Doris 0000153672_38_0001↓--%>
    <link href="../../_Common/OSE/CSS/OEMStyle.css" rel="stylesheet" type="text/css" />
    <link href="../../_Common/OSE/CSS/OEMFormStyle.css" rel="stylesheet" type="text/css" />
    <script src="../../_Common/OSE/JS/jquery.min.js" type="text/javascript"></script>
    <script src="../../_Common/OSE/JS/jquery-ui.min.js" type="text/javascript"></script>
    <link href="../../_Common/OSE/CSS/gridviewScroll.css" rel="stylesheet" type="text/css" />
    <script src="../../_Common/OSE/JS/gridviewScroll.js" type="text/javascript"></script>
    <script src="../../_Common/OSE/JS/OEMUtils.js" type="text/javascript"></script>
    <script src="../../_Common/OSE/JS/OEMJSON2.js" type="text/javascript"></script>
    <script src="../../_Common/OSE/JS/OEMSetControl.js" type="text/javascript"></script>
    <%--//^_^ 20190401 edit by 06473 Doris 0000153672_38_0001↑--%>
    <script src="QIMF05.js?r=202105135648" type="text/javascript"></script>

    <%--//^_^ 20191122 edit by 13058 winni DSCBV0972A_38_0001↓--%>
    <style type="text/css">
        .titleColor {
            background-color: #EFEFEF;
        }

        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            border: 1px solid #CCC;
            white-space: nowrap;
            height: 31px;
        }
        .auto-style8 {
            border: 1px solid #CCC;
            white-space: nowrap;
            width: 352px;
        }
        .auto-style9 {
            border: 1px solid #CCC;
            white-space: nowrap;
            height: 30px;
        }
        .auto-style10 {
            border: 1px solid #CCC;
            white-space: nowrap;
            width: 352px;
            height: 30px;
        }
    </style>
    <%--//^_^ 20191122 edit by 13058 winni DSCBV0972A_38_0001↑--%>
</asp:Content>
