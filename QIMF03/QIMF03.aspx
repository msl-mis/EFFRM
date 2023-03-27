<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" enableeventvalidation="false" inherits="tw.com.dsc.easyflowDotNet.forms.QIMF03, src.FRM.QIMF03" %>

<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="QIMF03FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->
    <!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
    <div id="cover" style="width: 100%;">
        <div id="createRecord" style="width: 100%; height: 100%" runat="server">
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmQIMF03" FrmDefineKeys-BOID="QIMF03"
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

                        <cc1:DscTextBox ID='qimf03001' runat='server' Title='表單代號'
                            Style='display: none; z-index: 101; position: absolute; left: 245px; top: 16px;'
                            TxtInput_TabIndex='0'>
                            <InputStyle Width='120px'></InputStyle>
                            <TitleStyle Width='110px'></TitleStyle>
                            <FrmFieldKeys FrmID='FrmQIMF03' BOID='QIMF03' FieldName='qimf03001'></FrmFieldKeys>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf03002' runat='server' Title='表單單號'
                            Style='display: none; z-index: 102; position: absolute; left: 245px; top: 49px;'
                            TxtInput_TabIndex='0'>
                            <InputStyle Width='120px'></InputStyle>
                            <TitleStyle Width='110px'></TitleStyle>
                            <FrmFieldKeys FrmID='FrmQIMF03' BOID='QIMF03' FieldName='qimf03002'></FrmFieldKeys>
                        </cc1:DscTextBox>

                        <%--//^_^ 20190401 edit by 06473 Doris 0000153672_38_0001↓--%>
                        <cc1:DscTextBox ID='qimf03021' runat='server' Title='判定'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF03' BOID='QIMF03' FieldName='qimf03021'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf03022' runat='server' Title='複驗判定'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF03' BOID='QIMF03' FieldName='qimf03022'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf03023' runat='server' Title='判定結果'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF03' BOID='QIMF03' FieldName='qimf03023'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf03024' runat='server' Title='圖面1'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF03' BOID='QIMF03' FieldName='qimf03024'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf03025' runat='server' Title='圖面2'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF03' BOID='QIMF03' FieldName='qimf03025'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf03026' runat='server' Title='圖面3'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF03' BOID='QIMF03' FieldName='qimf03026'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscCheckBox ID='qimf03027' runat='server' Text='作廢碼' ShowTitle='False' Style="display: none;"
                            CheckBoxInput_TabIndex='150' Checked='False' CheckedTrueValue='Y' CheckedFalseValue='N'>
                            <InputStyle Width='100px' Height='20px' />
                            <FrmFieldKeys BOID="QIMF03" FieldName="qimf03027" FrmID="FrmQIMF03" />
                        </cc1:DscCheckBox>

                        <%--開始畫TABLE--%>
                        <table>
                            <tr>
                                <td></td>
                                <td colspan="8" style="text-align: center" class="">
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width: 33%">&nbsp;</td>
                                            <td class="OEMCenter" style="width: 33%; line-height: 30px;">
                                                <cc1:DscLabel ID="lblHeadTab" runat="server" Font-Bold="True" Height="20px" Style="vertical-align: middle; font-size: 16pt; line-height: 20px" Text="進貨檢驗單">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="HeadTabStrip01" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMRight" style="width: 33%">&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf2024" runat="server" Style="vertical-align: middle;" Text="公司別">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03003" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDropDownList ID='qimf03003' runat='server' Title='公司別'
                                        DDLInput_TabIndex='101' ShowTitle="False" Style="left: 100px">
                                        <Items>
                                        </Items>
                                        <TitleStyle Width='100px' />
                                        <InputStyle Width='120px' Height='20px' CssClass="Edit20" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys FrmID='FrmQIMF03' BOID='QIMF03' FieldName='qimf03003'></FrmFieldKeys>
                                        <CommentList F0001='Combo' F0002='QIMF03_qimf03003' />
                                    </cc1:DscDropDownList>

                                </td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf03028" runat="server" Style="vertical-align: middle;" Text="單身序號">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03028" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder " colspan="5">
                                    <cc1:DscTextBox ID="qimf03028" runat="server" ShowTitle="False" Style="left: 100px" Title="抽樣水準" TxtInput_TabIndex="140">
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF03" FieldName="qimf03028" FrmID="FrmQIMF03" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                    <cc1:DscLabel ID="lblqimf03005" runat="server" Style="vertical-align: middle;" Text="銷貨單號">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03005" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscOpenQuery ID="qimf03005" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif" ReturnVisible="True" ShowTitle="False" Style="left: 100px" TextMode="SingleLine" Title="銷貨單號" TxtInput_TabIndex="100">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Font-Size="X-Small" Height="20px" Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF03" FieldName="qimf03005" FrmID="FrmQIMF03" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                    <cc1:DscLabel ID="lblqimf03006" runat="server" Style="vertical-align: middle;" Text="料號">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03006" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder " style="width: 250px">
                                    <cc1:DscOpenQuery ID="qimf03006" runat="server" border="0" BtntoInput="False" BtnVisible="True" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass="" cellpadding="2" cellspacing="0" DecimalPointLength="0" Format="Null" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif" LangText="料號" ReturnText="" ReturnVisible="True" ShowTitle="False" Style="left: 100px;" Text="" Title="料號" TitleWidth="100px" TxtInput_TabIndex="110" Wrap="True">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF03" FieldName="qimf03006" FrmID="FrmQIMF03" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                    <cc1:DscLabel ID="lblqimf03004" runat="server" Style="vertical-align: middle;" Text="庫別">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03004" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">

                                    <cc1:DscTextBox ID="qimf03004" runat="server" Title="庫別" TxtInput_TabIndex="150" ShowTitle="False" Style="left: 100px">
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF03" FieldName="qimf03004" FrmID="FrmQIMF03" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                                <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                    <cc1:DscLabel ID="LBLqimf03007" runat="server" Style="vertical-align: middle;" Text="客戶名稱">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03007" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder ">
                                    <cc1:DscOpenQuery ID="qimf03007" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif" ReturnVisible="True" ShowTitle="False" Style="left: 100px" TextMode="SingleLine" Title="客戶名稱" TxtInput_TabIndex="120">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="100px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF03" FieldName="qimf03007" FrmID="FrmQIMF03" />
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf03008" runat="server" Style="vertical-align: middle;" Text="抽樣方式">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03008" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDropDownList ID='qimf03008' runat='server' Title='抽樣方式'
                                        DDLInput_TabIndex='101' ShowTitle="False" Style="left: 100px">
                                        <Items>
                                        </Items>
                                        <TitleStyle Width='100px' />
                                        <InputStyle Width='100px' Height='20px' CssClass="Edit20" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys FrmID='FrmQIMF03' BOID='QIMF03' FieldName='qimf03008'></FrmFieldKeys>
                                        <CommentList F0001='Combo' F0002='QIMF03_qimf03008' />
                                    </cc1:DscDropDownList>
                                </td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf03009" runat="server" Style="vertical-align: middle;" Text="抽樣水準">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03009" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDropDownList ID="qimf03009" runat="server" DDLInput_TabIndex="101" ShowTitle="False" Style="left: 100px" Title="抽樣水準">
                                        <Items>
                                        </Items>
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="150px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF03" FieldName="qimf03009" FrmID="FrmQIMF03" />
                                        <CommentList F0001="Combo" F0002="QIMF03_qimf03009" />
                                    </cc1:DscDropDownList>
                                </td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf03010" runat="server" Style="vertical-align: middle;" Text="數量">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03010" />
                                    </cc1:DscLabel>
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscTextBox ID="qimf03010" runat="server" Title="數量" TxtInput_TabIndex="150" ShowTitle="False" Style="left: 100px" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF03" FieldName="qimf03010" FrmID="FrmQIMF03" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td>
                                                <cc1:DscTextBox ID="qimf03011" runat="server" Title="單位" TxtInput_TabIndex="160" ShowTitle="False" Style="left: 100px">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF03" FieldName="qimf03011" FrmID="FrmQIMF03" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                                <cc1:DscLabel ID="lblqimf03012" runat="server" Style="vertical-align: middle;" Text="檢驗日期">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="qimf03012" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td>
                                                <cc1:DscDateAssistant2 ID="qimf03012" runat="server" BtnVisible="True" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/" DateSaveFormat="String" DisplayMode="yyyyMMdd" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif" ShowTitle="False" Style="left: 100px" Title="檢驗日期" TxtInput_TabIndex="170">
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF03" FieldName="qimf03012" FrmID="FrmQIMF03" />
                                                </cc1:DscDateAssistant2>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lbllblqimf03013" runat="server" Style="vertical-align: middle;" Text="出貨日期">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03013" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDateAssistant2 ID="qimf03013" runat="server" BtnVisible="True" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/" DateSaveFormat="String" DisplayMode="yyyyMMdd" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif" ShowTitle="False" Style="left: 100px" Title="出貨日期" TxtInput_TabIndex="180">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF03" FieldName="qimf03013" FrmID="FrmQIMF03" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder " rowspan="2">
                                    <cc1:DscLabel ID="lblqimf03014" runat="server" Style="vertical-align: middle;" Text="備註">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03014" />
                                    </cc1:DscLabel>
                                </td>
                                <td colspan="5" class="OEMBorder" rowspan="2">
                                    <cc1:DscTextBox ID="qimf03014" runat="server" TextMode="MultiLine" Title="備註" TxtInput_TabIndex="190" ShowTitle="False" Style="left: 100px">
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF03" FieldName="qimf03014" FrmID="FrmQIMF03" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="50px" Width="750px" />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf03015" runat="server" Style="vertical-align: middle;" Text="檢驗版本">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03015" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscTextBox ID="qimf03015" runat="server" Title="檢驗版本" TxtInput_TabIndex="200" ShowTitle="False" Style="left: 100px">
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF03" FieldName="qimf03015" FrmID="FrmQIMF03" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf03016" runat="server" Style="vertical-align: middle;" Text="填表人">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="qimf03016" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscOpenQuery ID="qimf03016" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif" ReturnVisible="True" ShowTitle="False" TextMode="SingleLine" Title="填表人" TxtInput_TabIndex="210" Style="left: 100px">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF03" FieldName="qimf03016" FrmID="FrmQIMF03" />
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="5" style="text-align: center; background-color: #CCDDFF;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblName1" runat="server" Style="vertical-align: middle;" Text="檢　驗　統　計">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="lblName1" />
                                    </cc1:DscLabel>
                                </td>
                                <td colspan="3" style="text-align: center; background-color: #CCDDFF;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblName2" runat="server" Style="vertical-align: middle;" Text="抽　樣　計　畫">
                                        <Comment F0001="FD" F0002="QIMF03" F0003="lblName2" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="5" class="OEMBorder ">
                                    <table style="width: 100%">
                                        <tr>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf03017" runat="server" Style="vertical-align: middle;" Text="抽樣數">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="qimf03017" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf03018" runat="server" Style="vertical-align: middle;" Text="驗收數量">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="qimf03018" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf03019" runat="server" Style="vertical-align: middle;" Text="驗退數量">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="qimf03019" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf03030" runat="server" Style="vertical-align: middle;" Text="報廢數">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="qimf03030" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf03020" runat="server" Style="vertical-align: middle;" Text="缺點數">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="qimf03020" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf03029" runat="server" Style="vertical-align: middle;" Text="不良數">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="qimf03029" />
                                                </cc1:DscLabel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="OEMBorder ">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <cc1:DscTextBox ID="qimf03017" runat="server" ShowTitle="False" Style="left: 100px" TextAlign="Right" Title="抽樣數" TxtInput_TabIndex="220">
                                                                <ReturnTextBoxStyle Width="120px" />
                                                                <FrmFieldKeys BOID="QIMF03" FieldName="qimf03017" FrmID="FrmQIMF03" />
                                                                <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                                <TitleStyle Width="100px" />
                                                                <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                            </cc1:DscTextBox>
                                                        </td>

                                                        <%--//^_^ 20210323 edit by 06475 lijyun DSCBV0972A_38_0006↓--%>
                                                        <td>
                                                            <cc1:DscTextBox ID="SamplingUnit" runat="server" ShowTitle="False" Style="left: 100px" Title="單位" TxtInput_TabIndex="160">
                                                                <ReturnTextBoxStyle Width="120px" />
                                                                <FrmFieldKeys BOID="QIMF03" FieldName="SamplingUnit" FrmID="FrmQIMF03" />
                                                                <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                                <TitleStyle Width="100px" />
                                                                <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                            </cc1:DscTextBox>
                                                        </td>
                                                        <%--//^_^ 20210323 edit by 06475 lijyun DSCBV0972A_38_0006↑--%>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td class="OEMBorder ">
                                                <cc1:DscTextBox ID="qimf03018" runat="server" ShowTitle="False" Style="left: 100px" Title="嚴重缺點" TxtInput_TabIndex="230" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF03" FieldName="qimf03018" FrmID="FrmQIMF03" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td class="OEMBorder ">
                                                <cc1:DscTextBox ID="qimf03019" runat="server" ShowTitle="False" Style="left: 100px" Title="主要缺點(MA)" TxtInput_TabIndex="240" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF03" FieldName="qimf03019" FrmID="FrmQIMF03" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td class="OEMBorder ">
                                                <cc1:DscTextBox ID="qimf03030" runat="server" ShowTitle="False" Style="left: 100px" Title="報廢數" TxtInput_TabIndex="250" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF03" FieldName="qimf03030" FrmID="FrmQIMF03" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td class="OEMBorder ">
                                                <cc1:DscTextBox ID="qimf03020" runat="server" ShowTitle="False" Style="left: 100px" Title="次要缺點(MI)" TxtInput_TabIndex="250" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF03" FieldName="qimf03020" FrmID="FrmQIMF03" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td class="OEMBorder ">
                                                <cc1:DscTextBox ID="qimf03029" runat="server" ShowTitle="False" Style="left: 100px" Title="次要缺點(MI)" TxtInput_TabIndex="250" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF03" FieldName="qimf03029" FrmID="FrmQIMF03" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf03021" runat="server" Style="vertical-align: middle;" Text="判定">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="qimf03021" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " colspan="2">
                                                <asp:RadioButton ID="qimf03021_ctrolRadio0" runat="server" Checked="True" GroupName="qimf03021" Style="vertical-align: middle;" TabIndex="260" Text="合格" Value="Y" />
                                                <asp:RadioButton ID="qimf03021_ctrolRadio1" runat="server" GroupName="qimf03021" Style="vertical-align: middle;" TabIndex="270" Text="不合格" Value="X" />
                                            </td>
                                            <td class="OEMBorder " rowspan="2" style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf03023" runat="server" Style="vertical-align: middle;" Text="判定結果">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="qimf03023" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " colspan="2">
                                                <asp:RadioButton ID="qimf03023_ctrolRadio0" runat="server" Checked="True" GroupName="qimf03023" Style="vertical-align: middle;" TabIndex="280" Text="OK" Value="Y" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                                <cc1:DscLabel ID="lblqimf03022" runat="server" Style="vertical-align: middle;" Text="複驗判定">
                                                    <Comment F0001="FD" F0002="QIMF03" F0003="qimf03022" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder " colspan="2">
                                                <asp:RadioButton ID="qimf03022_ctrolRadio0" runat="server" Checked="True" GroupName="qimf03022" Style="vertical-align: middle;" TabIndex="290" Text="合格" Value="Y" />
                                                <asp:RadioButton ID="qimf03022_ctrolRadio1" runat="server" GroupName="qimf03022" Style="vertical-align: middle;" TabIndex="300" Text="不合格" Value="X" />
                                            </td>
                                            <td class="OEMBorder " colspan="2">
                                                <asp:RadioButton ID="qimf03023_ctrolRadio1" runat="server" Checked="False" GroupName="qimf03023" Style="vertical-align: middle;" TabIndex="310" Text="NG" Value="X" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="OEMBorder " colspan="3" style="text-align: center">
                                    <asp:Image ID="imgSamplingPlan" runat="server" Height="100px" Width="350px" />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="8" class="OEMBorder">
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="text-align: center; width: 33%;">
                                                <asp:Image ID="imgqimf03024" runat="server" Height="120px" Width="200px" />
                                            </td>
                                            <td style="width: 20px"></td>
                                            <td style="text-align: center; width: 33%;">
                                                <asp:Image ID="imgqimf03025" runat="server" Height="120px" Width="200px" />
                                            </td>
                                            <td style="width: 20px"></td>
                                            <td style="text-align: center">
                                                <asp:Image ID="imgqimf03026" runat="server" Height="120px" Width="200px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%--<asp:Button ID="btnProduceData" runat="server" Text="產生檢驗資料" TabIndex="120" CssClass="EFbtn" Font-Size="14px" Font-Names="微軟正黑體" Height="30px" Width="150px" />--%>
                                </td>
                                <td colspan="8">

                                    <div id="divDataCheck" runat="server">
                                    </div>

                                </td>
                            </tr>

                            <tr>
                                <td></td>
                                <td colspan="8" id="tbDataCheck" style="height: 100%;"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="8">
                                    <cc1:DscLabel ID="lblMsg" runat="server" Style="vertical-align: middle;" Text="○:合格   X:不合格   △:堪用" Font-Size="16px" ForeColor="Red">
                                        <Comment F0001="FD" F0002="QIMF03_d01" F0003="Title" />
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
                        <%--//^_^ 20190822 edit by 06475 lijyun DSCBV0972A_38_0001↓--%>
                        <cc1:DscTextBox ID="ThrowERP" runat="server" ShowTitle="False" Style="left: 100px" Title="ERP單號" TxtInput_TabIndex="150">
                            <ReturnTextBoxStyle Width="120px" />
                            <FrmFieldKeys BOID="QIMF03" FieldName="ThrowERP" FrmID="FrmQIMF03" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <TitleStyle Width="100px" />
                            <InputStyle CssClass="Edit20" Height="25px" Width="120px" />
                        </cc1:DscTextBox>
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
    <link href="../../_Common/OSE/CSS/OEMStyle.css" rel="stylesheet" />
    <link href="../../_Common/OSE/CSS/OEMFormStyle.css" rel="stylesheet" />
    <script src="../../_Common/OSE/JS/jquery.min.js"></script>
    <script src="../../_Common/OSE/JS/jquery-ui.min.js"></script>
    <link href="../../_Common/OSE/CSS/gridviewScroll.css" rel="stylesheet" />
    <script src="../../_Common/OSE/JS/gridviewScroll.js"></script>
    <script src="../../_Common/OSE/JS/OEMUtils.js"></script>
    <script src="../../_Common/OSE/JS/OEMJSON2.js"></script>
    <script src="../../_Common/OSE/JS/OEMSetControl.js"></script>
    <%--//^_^ 20190401 edit by 06473 Doris 0000153672_38_0001↑--%>
    <script src="QIMF03.js?r=20210323" type="text/javascript"></script>
</asp:Content>
