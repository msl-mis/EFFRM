<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" enableeventvalidation="false" inherits="tw.com.dsc.easyflowDotNet.forms.QIMF01, src.FRM.QIMF01" %>

<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="QIMF01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->
    <!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
    <div id="cover" style="width: 100%;">
        <div id="createRecord" style="width: 100%; height: 100%" runat="server">
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmQIMF01" FrmDefineKeys-BOID="QIMF01"
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

                        <cc1:DscTextBox ID='qimf01001' runat='server' Title='表單代號'
                            Style='display: none; z-index: 101; position: absolute; left: 245px; top: 16px;'
                            TxtInput_TabIndex='0'>
                            <InputStyle Width='120px'></InputStyle>
                            <TitleStyle Width='110px'></TitleStyle>
                            <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01001'></FrmFieldKeys>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf01002' runat='server' Title='表單單號'
                            Style='display: none; z-index: 102; position: absolute; left: 245px; top: 49px;'
                            TxtInput_TabIndex='0'>
                            <InputStyle Width='120px'></InputStyle>
                            <TitleStyle Width='110px'></TitleStyle>
                            <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01002'></FrmFieldKeys>
                        </cc1:DscTextBox>

                        <%--//^_^ 20190401 edit by 06473 Doris 0000153672_38_0001↓--%>
                        <cc1:DscTextBox ID='qimf01021' runat='server' Title='判定'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01021'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf01022' runat='server' Title='複驗判定'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01022'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf01023' runat='server' Title='判定結果'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01023'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf01024' runat='server' Title='圖面1'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01024'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf01025' runat='server' Title='圖面2'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01025'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='qimf01026' runat='server' Title='圖面3'
                            Style="display: none;"
                            TxtInput_TabIndex='119'>
                            <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01026'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='200px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscCheckBox ID='qimf01027' runat='server' Text='作廢碼' ShowTitle='False' Style="display: none;"
                            CheckBoxInput_TabIndex='150' Checked='False' CheckedTrueValue='Y' CheckedFalseValue='N'>
                            <InputStyle Width='100px' Height='20px' />
                            <FrmFieldKeys BOID="QIMF01" FieldName="qimf01027" FrmID="FrmQIMF01" />
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
                                                <cc1:DscLabel ID="lblHeadTab" runat="server" Font-Bold="True" Height="20px" Style="vertical-align: middle; font-size: 16pt; line-height: 20px" Text="出貨檢驗單">
                                                    <Comment F0001="FD" F0002="QIMF01" F0003="HeadTabStrip01" />
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
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01003" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDropDownList ID='qimf01003' runat='server' Title='公司別'
                                        DDLInput_TabIndex='101' ShowTitle="False" Style="left: 100px">
                                        <Items>
                                        </Items>
                                        <TitleStyle Width='100px' />
                                        <InputStyle Width='120px' Height='20px' CssClass="Edit20" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01003'></FrmFieldKeys>
                                        <CommentList F0001='Combo' F0002='QIMF01_qimf01003' />
                                    </cc1:DscDropDownList>

                                </td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf01028" runat="server" Style="vertical-align: middle;" Text="單身序號">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01028" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder " colspan="5">
                                    <cc1:DscTextBox ID="qimf01028" runat="server" ShowTitle="False" Style="left: 100px" Title="抽樣水準" TxtInput_TabIndex="140">
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF01" FieldName="qimf01028" FrmID="FrmQIMF01" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                    <cc1:DscLabel ID="lblqimf01005" runat="server" Style="vertical-align: middle;" Text="銷貨單號">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01005" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscOpenQuery ID="qimf01005" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif" ReturnVisible="True" ShowTitle="False" Style="left: 100px" TextMode="SingleLine" Title="銷貨單號" TxtInput_TabIndex="100">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Font-Size="X-Small" Height="20px" Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF01" FieldName="qimf01005" FrmID="FrmQIMF01" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                    <cc1:DscLabel ID="lblqimf01006" runat="server" Style="vertical-align: middle;" Text="料號">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01006" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder " style="width: 250px">
                                    <cc1:DscOpenQuery ID="qimf01006" runat="server" border="0" BtntoInput="False" BtnVisible="True" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass="" cellpadding="2" cellspacing="0" DecimalPointLength="0" Format="Null" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif" LangText="料號" ReturnText="" ReturnVisible="True" ShowTitle="False" Style="left: 100px;" Text="" Title="料號" TitleWidth="100px" TxtInput_TabIndex="110" Wrap="True">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF01" FieldName="qimf01006" FrmID="FrmQIMF01" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                    <cc1:DscLabel ID="lblqimf01004" runat="server" Style="vertical-align: middle;" Text="成品分類">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01004" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">

                                    <cc1:DscTextBox ID="qimf01004" runat="server" Title="庫別" TxtInput_TabIndex="150" ShowTitle="False" Style="left: 100px">
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF01" FieldName="qimf01004" FrmID="FrmQIMF01" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                                <td class="OEMBorder " style="background-color: #EFEFEF; text-align: center;">
                                    <cc1:DscLabel ID="LBLqimf01007" runat="server" Style="vertical-align: middle;" Text="客戶名稱">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01007" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder ">
                                    <cc1:DscOpenQuery ID="qimf01007" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif" ReturnVisible="True" ShowTitle="False" Style="left: 100px" TextMode="SingleLine" Title="客戶名稱" TxtInput_TabIndex="120">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="100px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF01" FieldName="qimf01007" FrmID="FrmQIMF01" />
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf01008" runat="server" Style="vertical-align: middle;" Text="抽樣方式">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01008" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDropDownList ID='qimf01008' runat='server' Title='抽樣方式'
                                        DDLInput_TabIndex='101' ShowTitle="False" Style="left: 100px">
                                        <Items>
                                        </Items>
                                        <TitleStyle Width='100px' />
                                        <InputStyle Width='100px' Height='20px' CssClass="Edit20" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01008'></FrmFieldKeys>
                                        <CommentList F0001='Combo' F0002='QIMF01_qimf01008' />
                                    </cc1:DscDropDownList>
                                </td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf01009" runat="server" Style="vertical-align: middle;" Text="抽樣水準">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01009" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDropDownList ID='qimf01009' runat='server' Title='抽樣水準'
                                        DDLInput_TabIndex='101' ShowTitle="False" Style="left: 100px">
                                        <Items>
                                        </Items>
                                        <TitleStyle Width='100px' />
                                        <InputStyle Width='150px' Height='20px' CssClass="Edit20" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys FrmID='FrmQIMF01' BOID='QIMF01' FieldName='qimf01009'></FrmFieldKeys>
                                        <CommentList F0001='Combo' F0002='QIMF01_qimf01009' />
                                    </cc1:DscDropDownList>

                                </td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf01010" runat="server" Style="vertical-align: middle;" Text="數量">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01010" />
                                    </cc1:DscLabel>
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscTextBox ID="qimf01010" runat="server" Title="數量" TxtInput_TabIndex="150" ShowTitle="False" Style="left: 100px" TextAlign="Right">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF01" FieldName="qimf01010" FrmID="FrmQIMF01" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td>
                                                <cc1:DscTextBox ID="qimf01011" runat="server" Title="單位" TxtInput_TabIndex="160" ShowTitle="False" Style="left: 100px">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF01" FieldName="qimf01011" FrmID="FrmQIMF01" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                                <cc1:DscLabel ID="lblqimf01012" runat="server" Style="vertical-align: middle;" Text="檢驗日期">
                                                    <Comment F0001="FD" F0002="QIMF01" F0003="qimf01012" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td>
                                                <cc1:DscDateAssistant2 ID="qimf01012" runat="server" BtnVisible="True" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/" DateSaveFormat="String" DisplayMode="yyyyMMdd" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif" ShowTitle="False" Style="left: 100px" Title="檢驗日期" TxtInput_TabIndex="170">
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF01" FieldName="qimf01012" FrmID="FrmQIMF01" />
                                                </cc1:DscDateAssistant2>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lbllblqimf01013" runat="server" Style="vertical-align: middle;" Text="出貨日期">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01013" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscDateAssistant2 ID="qimf01013" runat="server" BtnVisible="True" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/" DateSaveFormat="String" DisplayMode="yyyyMMdd" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif" ShowTitle="False" Style="left: 100px" Title="出貨日期" TxtInput_TabIndex="180">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF01" FieldName="qimf01013" FrmID="FrmQIMF01" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder " rowspan="2">
                                    <cc1:DscLabel ID="lblqimf01014" runat="server" Style="vertical-align: middle;" Text="備註">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01014" />
                                    </cc1:DscLabel>
                                </td>
                                <td colspan="5" class="OEMBorder" rowspan="2">
                                    <cc1:DscTextBox ID="qimf01014" runat="server" TextMode="MultiLine" Title="備註" TxtInput_TabIndex="190" ShowTitle="False" Style="left: 100px">
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF01" FieldName="qimf01014" FrmID="FrmQIMF01" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="50px" Width="750px" />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf01015" runat="server" Style="vertical-align: middle;" Text="檢驗版本">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01015" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscTextBox ID="qimf01015" runat="server" Title="檢驗版本" TxtInput_TabIndex="200" ShowTitle="False" Style="left: 100px">
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF01" FieldName="qimf01015" FrmID="FrmQIMF01" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblqimf01016" runat="server" Style="vertical-align: middle;" Text="填表人">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="qimf01016" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="OEMBorder">
                                    <cc1:DscOpenQuery ID="qimf01016" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif" ReturnVisible="True" ShowTitle="False" TextMode="SingleLine" Title="填表人" TxtInput_TabIndex="210" Style="left: 100px">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="100px" />
                                        <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <FrmFieldKeys BOID="QIMF01" FieldName="qimf01016" FrmID="FrmQIMF01" />
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="5" style="text-align: center; background-color: #CCDDFF;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblName1" runat="server" Style="vertical-align: middle;" Text="檢　驗　統　計">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="lblName1" />
                                    </cc1:DscLabel>
                                </td>
                                <td colspan="3" style="text-align: center; background-color: #CCDDFF;" class="OEMBorder ">
                                    <cc1:DscLabel ID="lblName2" runat="server" Style="vertical-align: middle;" Text="抽　樣　計　畫">
                                        <Comment F0001="FD" F0002="QIMF01" F0003="lblName2" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td colspan="5" class="OEMBorder ">

                                    <table style="width: 100%">
                                        <tr>
                                            <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                                <cc1:DscLabel ID="lblqimf01017" runat="server" Style="vertical-align: middle;" Text="抽樣數">
                                                    <Comment F0001="FD" F0002="QIMF01" F0003="qimf01017" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                                <cc1:DscLabel ID="lblqimf01018" runat="server" Style="vertical-align: middle;" Text="嚴重缺點">
                                                    <Comment F0001="FD" F0002="QIMF01" F0003="qimf01018" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                                <cc1:DscLabel ID="lblqimf01019" runat="server" Style="vertical-align: middle;" Text="主要缺點">
                                                    <Comment F0001="FD" F0002="QIMF01" F0003="qimf01019" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                                <cc1:DscLabel ID="lblqimf01020" runat="server" Style="vertical-align: middle;" Text="次要缺點">
                                                    <Comment F0001="FD" F0002="QIMF01" F0003="qimf01020" />
                                                </cc1:DscLabel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: center" class="OEMBorder OEMCenter">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <cc1:DscTextBox ID="qimf01017" runat="server" ShowTitle="False" Style="left: 100px" TextAlign="Right" Title="抽樣數" TxtInput_TabIndex="220">
                                                                <ReturnTextBoxStyle Width="120px" />
                                                                <FrmFieldKeys BOID="QIMF01" FieldName="qimf01017" FrmID="FrmQIMF01" />
                                                                <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                                <TitleStyle Width="100px" />
                                                                <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                            </cc1:DscTextBox>
                                                        </td>
                                                        <%--//^_^ 20210319 edit by 07277 yujie DSCBV0972A_38_0006↓--%>
                                                        <td>
                                                            <cc1:DscTextBox ID="SamplingUnit" runat="server" Title="抽樣單位" TxtInput_TabIndex="150" ShowTitle="False">
                                                                <ReturnTextBoxStyle Width="120px" />
                                                                <FrmFieldKeys BOID="QIMF01" FieldName="SamplingUnit" FrmID="FrmQIMF01" />
                                                                <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                                <TitleStyle Width="100px" />
                                                                <InputStyle CssClass="Edit20" Height="20px" Width="50px" />
                                                            </cc1:DscTextBox>
                                                        </td>
                                                        <%--//^_^ 20210319 edit by 07277 yujie DSCBV0972A_38_0006↑--%>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="text-align: center" class="OEMBorder ">
                                                <cc1:DscTextBox ID="qimf01018" runat="server" ShowTitle="False" Style="left: 100px" TextAlign="Right" Title="嚴重缺點" TxtInput_TabIndex="230">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF01" FieldName="qimf01018" FrmID="FrmQIMF01" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td style="text-align: center" class="OEMBorder ">
                                                <cc1:DscTextBox ID="qimf01019" runat="server" ShowTitle="False" Style="left: 100px" TextAlign="Right" Title="主要缺點(MA)" TxtInput_TabIndex="240">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF01" FieldName="qimf01019" FrmID="FrmQIMF01" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                            <td style="text-align: center" class="OEMBorder ">
                                                <cc1:DscTextBox ID="qimf01020" runat="server" ShowTitle="False" Style="left: 100px" TextAlign="Right" Title="報廢數" TxtInput_TabIndex="250">
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <FrmFieldKeys BOID="QIMF01" FieldName="qimf01020" FrmID="FrmQIMF01" />
                                                    <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                    <TitleStyle Width="100px" />
                                                    <InputStyle CssClass="Edit20" Height="20px" Width="80px" />
                                                </cc1:DscTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                                <cc1:DscLabel ID="lblqimf01021" runat="server" Style="vertical-align: middle;" Text="判定">
                                                    <Comment F0001="FD" F0002="QIMF01" F0003="qimf01021" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder ">
                                                <asp:RadioButton ID="qimf01021_ctrolRadio0" runat="server" Checked="True" GroupName="qimf01021" Style="vertical-align: middle;" TabIndex="260" Text="合格" Value="Y" />
                                                <asp:RadioButton ID="qimf01021_ctrolRadio1" runat="server" GroupName="qimf01021" Style="vertical-align: middle;" TabIndex="270" Text="不合格" Value="X" />
                                            </td>
                                            <td rowspan="2" style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                                <cc1:DscLabel ID="lblqimf01023" runat="server" Style="vertical-align: middle;" Text="判定結果">
                                                    <Comment F0001="FD" F0002="QIMF01" F0003="qimf01023" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder ">
                                                <asp:RadioButton ID="qimf01023_ctrolRadio0" runat="server" Checked="True" GroupName="qimf01023" Style="vertical-align: middle;" TabIndex="280" Text="OK" Value="Y" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="background-color: #EFEFEF; text-align: center;" class="OEMBorder ">
                                                <cc1:DscLabel ID="lblqimf01022" runat="server" Style="vertical-align: middle;" Text="複驗判定">
                                                    <Comment F0001="FD" F0002="QIMF01" F0003="qimf01022" />
                                                </cc1:DscLabel>
                                            </td>
                                            <td class="OEMBorder ">
                                                <asp:RadioButton ID="qimf01022_ctrolRadio0" runat="server" Checked="True" GroupName="qimf01022" Style="vertical-align: middle;" TabIndex="290" Text="合格" Value="Y" />
                                                <asp:RadioButton ID="qimf01022_ctrolRadio1" runat="server" GroupName="qimf01022" Style="vertical-align: middle;" TabIndex="300" Text="不合格" Value="X" />
                                            </td>
                                            <td class="OEMBorder ">
                                                <asp:RadioButton ID="qimf01023_ctrolRadio1" runat="server" Checked="False" GroupName="qimf01023" Style="vertical-align: middle;" TabIndex="310" Text="NG" Value="X" />
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
                                                <asp:Image ID="imgqimf01024" runat="server" Height="120px" Width="200px" />
                                            </td>
                                            <td style="width: 20px"></td>
                                            <td style="text-align: center; width: 33%;">
                                                <asp:Image ID="imgqimf01025" runat="server" Height="120px" Width="200px" />
                                            </td>
                                            <td style="width: 20px"></td>
                                            <td style="text-align: center">
                                                <asp:Image ID="imgqimf01026" runat="server" Height="120px" Width="200px" />
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
                                        <Comment F0001="FD" F0002="QIMF01_d01" F0003="Title" />
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
                        <%--//^_^ 20191205 edit by 06475 lijyun DSCBV0972A_38_0001↓--%>
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
                        <%--//^_^ 20191205 edit by 06475 lijyun DSCBV0972A_38_0001↑--%>
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
    <script src="QIMF01.js" type="text/javascript"></script>
</asp:Content>
