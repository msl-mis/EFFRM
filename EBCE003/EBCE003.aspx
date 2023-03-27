<%@ page language="c#" validaterequest="false" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" enableeventvalidation="false" inherits="tw.com.dsc.easyflowDotNet.forms.EBCE003, src.FRM.EBCE003" %>

<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<asp:Content ID="EBCE003FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->

    <script src="EBCE003.js" type="text/javascript"></script>

    <!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
    <div id="cover" style="width: 100%;">
        <div id="createRecord" style="width: 100%; height: 100%" runat="server">
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmEBCE003" FrmDefineKeys-BOID="EBCE003"
                BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="365px">
                <!--單頭頁籤-->
                <iewc:TabStrip ID="TabStrip1" runat="server" TabDefaultStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabHoverStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabSelectedStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);"
                    CssClass="divToolBar2">
                    <iewc:Tab Text="請款單" DefaultStyle="width:100px; height:27px;vertical-align:middle; text-align:center;"
                        ID="Tab1"></iewc:Tab>
                </iewc:TabStrip>
                <!--單頭頁籤畫面集合-->
                <!--預設放入一個DIV-->
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%"
                    Height="200px" BackColor="Transparent">
                    <div class="" style="position: relative; height: 200px; left: 0px; top: 0px;">
                        <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 100; left: 745px; position: absolute; top: 7px"
                            runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                        <!--此區間放入各種dsc元件-->
                        <cc1:DscTextBox ID="ebctk001" Title="DscTextBox:" Style="display: none; z-index: 101; left: 245px; top: 16px"
                            runat="server" Cellpanding="2" TitleWidth="110px" border="0"
                            CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="DscTextBox:"
                            TitleType="TitleLang01" TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk001"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="ebctk002" Title="DscTextBox:" Style="display: none; z-index: 102; left: 245px; top: 49px"
                            runat="server" Cellpanding="2" TitleWidth="110px" border="0"
                            CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="DscTextBox:"
                            TitleType="TitleLang01" TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk002"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="hdnMan" runat="server" border="0" CellNo1CssClass="" CellNo2CssClass=""
                            cellpadding="2" Cellpanding="2" cellspacing="0" LangText="DscTextBox:" Style="display: none; z-index: 102; left: 31px; top: 447px"
                            Title="MAN標準群組:" TitleType="TitleLang01"
                            TitleWidth="110px" TxtInput_TabIndex="88">
                            <InputStyle Width="120px" />
                            <TitleStyle Width="110px" />
                            <FrmFieldKeys BOID="" FieldName="" FrmID="" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <ReturnTextBoxStyle Width="120px" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="hdnebcmb004" runat="server" border="0" CellNo1CssClass="" CellNo2CssClass=""
                            cellpadding="2" Cellpanding="2" cellspacing="0" LangText="DscTextBox:" Style="z-index: 102; left: 318px; top: 444px; display: none;"
                            Title="登入ID" TitleType="TitleLang01" TitleWidth="110px"
                            TxtInput_TabIndex="0">
                            <InputStyle Width="120px" />
                            <TitleStyle Width="110px" />
                            <FrmFieldKeys BOID="" FieldName="" FrmID="" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <ReturnTextBoxStyle Width="120px" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="hdnebcmb005" runat="server" border="0" CellNo1CssClass="" CellNo2CssClass=""
                            cellpadding="2" Cellpanding="2" cellspacing="0" LangText="DscTextBox:" Style="z-index: 102; left: 570px; top: 444px; display: none;"
                            Title="登入名稱" TitleType="TitleLang01" TitleWidth="110px"
                            TxtInput_TabIndex="0">
                            <InputStyle Width="120px" />
                            <TitleStyle Width="110px" />
                            <FrmFieldKeys BOID="" FieldName="" FrmID="" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <ReturnTextBoxStyle Width="120px" />
                        </cc1:DscTextBox>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 100px">
                                    <cc1:DscOpenQuery ID="ebctk003" Title="專案名稱" Style="z-index: 689; left: 185px; top: 84px"
                                        runat="server" TxtInput_TabIndex="101" ReturnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif"
                                        Text2Visible="True" RetuenVisible="True" BtnVisible="True" TitleWidth="120px"
                                        ShowTitle="True" InputEnabled="True" TitleLocation="_Left" TextMode="SingleLine"
                                        Cellpanding="2">
                                        <TitleStyle Width="150px"></TitleStyle>
                                        <InputStyle Width="100px" Height="20px" CssClass="Edit20" BackColor="White"></InputStyle>
                                        <Validator ValidatorName="" MsgF0002="" MsgF0001="" ValidatorExpression="" ValidatorMsg=""></Validator>
                                        <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk003"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td style="width: 100px">
                                    <cc1:DscTextBox ID="ebctk009" Title="專案幣別" Style="z-index: 685; left: 432px; top: 86px"
                                        runat="server" LangText="專案幣別" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="102"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0" Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk009"></FrmFieldKeys>
                                        <TitleStyle Width="150px"></TitleStyle>
                                        <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <cc1:DscOpenQuery ID="ebctk012" Title="專案負責人" Style="z-index: 689; left: 185px; top: 84px"
                                        runat="server" TxtInput_TabIndex="101" ReturnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif"
                                        Text2Visible="True" RetuenVisible="True" BtnVisible="True" TitleWidth="120px"
                                        ShowTitle="True" InputEnabled="True" TitleLocation="_Left" TextMode="SingleLine"
                                        Cellpanding="2">
                                        <FrmFieldKeys BOID="EBCE003" FieldName="ebctk012" FrmID="FrmEBCE003" />
                                        <TitleStyle Width="150px" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <InputStyle BackColor="White" CssClass="Edit20" Height="20px" Width="100px" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td style="width: 100px"></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <cc1:DscOpenQuery ID="ebctk013" runat="server" BtnVisible="True" Cellpanding="2"
                                        ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif" InputEnabled="True"
                                        RetuenVisible="True" ReturnVisible="True" ShowTitle="True" Style="z-index: 694; left: 100px; top: 140px"
                                        Text2Visible="True" TextMode="SingleLine" Title="參與人員"
                                        TitleLocation="_Left" TitleWidth="120px" TxtInput_TabIndex="103">
                                        <FrmFieldKeys BOID="EBCE003" FieldName="ebctk013" FrmID="FrmEBCE003" />
                                        <TitleStyle Width="150px" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <InputStyle BackColor="White" CssClass="Edit20" Height="20px" Width="412px" />
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <cc1:DscTextBox ID="ebctk004" Title="施工地點" Style="z-index: 688; left: 185px; top: 111px"
                                        runat="server" LangText="施工地點" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="103"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0" Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk004"></FrmFieldKeys>
                                        <TitleStyle Width="150px"></TitleStyle>
                                        <InputStyle Width="250px" Height="20px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <cc1:DscOpenQuery ID="ebctk006" Title="廠商名稱" Style="z-index: 691; left: 183px; top: 174px"
                                        runat="server" TxtInput_TabIndex="105" ReturnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif"
                                        Text2Visible="True" RetuenVisible="True" BtnVisible="True" TitleWidth="120px"
                                        ShowTitle="True" InputEnabled="True" TitleLocation="_Left" TextMode="SingleLine"
                                        Cellpanding="2">
                                        <TitleStyle Width="150px"></TitleStyle>
                                        <InputStyle Width="100px" Height="20px" CssClass="Edit20" BackColor="White"></InputStyle>
                                        <Validator ValidatorName="" MsgF0002="" MsgF0001="" ValidatorExpression="" ValidatorMsg=""></Validator>
                                        <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk006"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td style="width: 100px"></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <cc1:DscTextBox ID="ebctk007" Title="廠商聯絡人" Style="z-index: 694; left: 182px; top: 207px"
                                        runat="server" LangText="廠商聯絡人" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="107"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0" Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk007"></FrmFieldKeys>
                                        <TitleStyle Width="150px"></TitleStyle>
                                        <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 100px">
                                    <cc1:DscTextBox ID="ebctk008" Title="聯絡電話" Style="z-index: 686; left: 346px; top: 204px"
                                        runat="server" LangText="聯絡電話" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="108"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0" Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk008"></FrmFieldKeys>
                                        <TitleStyle Width="150px"></TitleStyle>
                                        <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <%-- 2016/05/11:3.6.6.5:wayne:S00-20160314002:新增廠商費用請款窗口資訊 Start --%>
                            <tr>
                                <td style="width: 100px;">
                                    <cc1:DscTextBox ID="askMoneyPerson" runat="server" Title="費用請款人">
                                        <TitleStyle Width="150px"></TitleStyle>
                                        <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle>
                                    </cc1:DscTextBox>
                                </td>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscTextBox ID="askMoneyPhone" runat="server" Title="請款人電話">
                                                    <TitleStyle Width="150px"></TitleStyle>
                                                    <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle>
                                                </cc1:DscTextBox>
                                            </td>
                                            <td>
                                                <cc1:DscTextBox ID="askMoneyExt" runat="server" Title="請款人分機">
                                                    <TitleStyle Width="150px"></TitleStyle>
                                                    <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle>
                                                </cc1:DscTextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <%-- 2016/05/11:3.6.6.5:wayne:S00-20160314002:新增廠商費用請款窗口資訊 End --%>
                            <tr>
                                <td style="width: 100px">
                                    <cc1:DscOpenQuery ID="ebctk005" Title="承包工種(工程小項)" Style="z-index: 690; left: 184px; top: 141px"
                                        runat="server" TxtInput_TabIndex="104" ReturnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif"
                                        Text2Visible="True" RetuenVisible="True" BtnVisible="True" TitleWidth="120px"
                                        ShowTitle="True" InputEnabled="True" TitleLocation="_Left" TextMode="SingleLine"
                                        Cellpanding="2">
                                        <TitleStyle Width="150px"></TitleStyle>
                                        <InputStyle Width="100px" Height="20px" CssClass="Edit20" BackColor="White"></InputStyle>
                                        <Validator ValidatorName="" MsgF0002="" MsgF0001="" ValidatorExpression="" ValidatorMsg=""></Validator>
                                        <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk005"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscOpenQuery>
                                </td>
                                <td style="width: 100px">&nbsp;&nbsp;
                                </td>
                            </tr>


                            <tr>
                                <td style="width: 100px; height: 20px">
                                    <cc1:DscTextBox ID="ebctk010" Title="承包總價" Style="z-index: 693; left: 182px; top: 236px"
                                        runat="server" LangText="承包總價" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="109"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0" Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk010"></FrmFieldKeys>
                                        <TitleStyle Width="150px"></TitleStyle>
                                        <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 100px; height: 20px">
                                    <%-- 2016/04/27:3.6.6.5:wayne:S00-20160314013:新增已付款金額及未付款金額 Start --%>
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscTextBox ID="paid" Title="已付款金額" runat="server">
                                                    <TitleStyle Width="150px"></TitleStyle>
                                                    <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle>
                                                </cc1:DscTextBox>
                                            </td>
                                            <td>
                                                <cc1:DscTextBox ID="notPaid" Title="未付款金額" runat="server">
                                                    <TitleStyle Width="150px"></TitleStyle>
                                                    <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle>
                                                </cc1:DscTextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    <%-- 2016/04/27:3.6.6.5:wayne:S00-20160314013:新增已付款金額及未付款金額 End --%>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <cc1:DscTextBox ID="ebctk011" Title="說明" Style="z-index: 692; left: 182px; top: 269px"
                                        runat="server" LangText="說明" Cellpanding="2" TitleWidth="120px" TxtInput_TabIndex="110"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0" Text="" TitleType="TitleLang01">
                                        <FrmFieldKeys FrmID="FrmEBCE003" BOID="EBCE003" FieldName="ebctk011"></FrmFieldKeys>
                                        <TitleStyle Width="150px"></TitleStyle>
                                        <InputStyle Width="250px" Height="21px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--有單身才放-->
                <table>
                    <tr>
                        <td height="5"></td>
                    </tr>
                </table>
                <!--單身頁籤起始-->
                <iewc:TabStrip ID="Tabstrip2" runat="server" BackColor="#B9CCEA" TabDefaultStyle="font-family:#ffffe0;font-size:9pt;color:white;width:150;height:21;text-align:center;background-image:url(../../_common/pic/newcrm/tp_b1.png);"
                    TabHoverStyle="background-image:url(../../_common/pic/newcrm/tp_b2.png);color:black;text-align:center;"
                    TabSelectedStyle="background-image:url(../../_common/pic/newcrm/tp_y.png);color:black;text-align:center;">
                    <iewc:Tab Text="單身資料" DefaultImageUrl="../../_common/pic/icon/dg_edit.gif" DefaultStyle="text-align:center;width:170px;"
                        ID="bodyDefault"></iewc:Tab>
                </iewc:TabStrip>
                <!--單身Grid-->
                <!--此區間放入數個單身Grid-->
                <div class="TabPage" id="divbodyDefault" style="display: block; overflow: hidden; width: 100%; background-repeat: repeat;"
                    runat="server">
                    <cc1:DscPanel ID="ecPnlDetail1" runat="server" FrmDefineKeys-BOID="EBCE003_d01" FrmDefineKeys-FrmID="FrmEBCE003_d01"
                        FrmDefineKeys-FrmType="Query" BorderStyle="None" BorderColor="Transparent" BorderWidth="0px"
                        IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                        Width="100%" Height="0px">
                        <cc1:DscPanel ID="divDetail1Default" runat="server" Width="100%" Height="150px" BorderStyle="None"
                            BorderColor="Transparent" BorderWidth="0px" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 98%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                            FrmDefineKeys-BOID="EBCE003_d01" FrmDefineKeys-FrmID="FrmEBCE003_d01" FrmDefineKeys-FrmType="Query">
                            <cc1:DscTextBox ID="ebctl001" Title="DscTextBox:" Style="display: none; z-index: 101; left: 245px; top: 16px"
                                runat="server" Cellpanding="2" TitleWidth="110px" border="0"
                                CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" LangText="DscTextBox:"
                                TitleType="TitleLang01" TxtInput_TabIndex="0">
                                <InputStyle Width="120px"></InputStyle>
                                <TitleStyle Width="110px"></TitleStyle>
                                <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl001"></FrmFieldKeys>
                                <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            </cc1:DscTextBox>
                            <cc1:DscTextBox ID="ebctl002" Title="DscTextBox:" Style="display: none; z-index: 102; left: 260px; top: 71px"
                                runat="server" Cellpanding="2" TitleWidth="110px" border="0"
                                CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" LangText="DscTextBox:"
                                TitleType="TitleLang01" TxtInput_TabIndex="0">
                                <InputStyle Width="120px"></InputStyle>
                                <TitleStyle Width="110px"></TitleStyle>
                                <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl002"></FrmFieldKeys>
                                <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            </cc1:DscTextBox>
                            <cc1:DscTextBox ID="ebctl003" Title="序號" Style="z-index: 699; left: 155px; top: 15px; display: none;"
                                runat="server" Cellpanding="2" TitleWidth="110px" border="0" CellNo1CssClass=""
                                CellNo2CssClass="" cellpadding="0" LangText="DscTextBox:" TitleType="TitleLang01"
                                TxtInput_TabIndex="0">
                                <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                <TitleStyle Width="100px"></TitleStyle>
                                <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl003"></FrmFieldKeys>
                                <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            </cc1:DscTextBox>
                            <cc1:DscTextBox ID="ebctl012" Title="狀態" Style="z-index: 699; left: 155px; top: 15px; display: none;"
                                runat="server" Cellpanding="2" TitleWidth="110px" border="0" CellNo1CssClass=""
                                CellNo2CssClass="" cellpadding="0" LangText="DscTextBox:" TitleType="TitleLang01"
                                TxtInput_TabIndex="0">
                                <FrmFieldKeys BOID="EBCE003_d01" FieldName="ebctl012" FrmID="FrmEBCE003_d01" />
                                <InputStyle CssClass="Edit20" Width="120px" />
                                <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                <ReturnTextBoxStyle Width="120px" />
                                <TitleStyle Width="100px" />
                            </cc1:DscTextBox>
                            <cc1:DscTextBox ID="ebctl004" Title="請款期數" Style="z-index: 698; left: 157px; top: 21px; display: none;"
                                runat="server" LangText="請款期數" Cellpanding="2" TitleWidth="150px"
                                TxtInput_TabIndex="111" border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0"
                                Text="" TitleType="TitleLang01">
                                <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl004"></FrmFieldKeys>
                                <TitleStyle Width="150px"></TitleStyle>
                                <InputStyle Width="100px" CssClass="Edit20"></InputStyle>
                                <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                <ReturnTextBoxStyle Width="120px" />
                            </cc1:DscTextBox>
                            <table>
                                <tr>
                                    <td colspan="2">
                                        <cc1:DscTextBox ID="ebctl005" Title="請款名稱" Style="z-index: 687; left: 275px; top: 20px"
                                            runat="server" LangText="請款名稱" Cellpanding="2" TitleWidth="150px"
                                            TxtInput_TabIndex="112" border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0"
                                            Text="" TitleType="TitleLang01">
                                            <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl005"></FrmFieldKeys>
                                            <TitleStyle Width="150px"></TitleStyle>
                                            <InputStyle Width="200px" Height="20px" CssClass="Edit20"></InputStyle>
                                            <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                            <ReturnTextBoxStyle Width="120px" />
                                        </cc1:DscTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <cc1:DscTextBox ID="ebctl006" Title="請款金額" Style="z-index: 697; left: 168px; top: 104px"
                                            runat="server" LangText="請款金額" Cellpanding="2" TitleWidth="150px"
                                            TxtInput_TabIndex="113" border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0"
                                            Text="" TitleType="TitleLang01" TextAlign="Right">
                                            <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl006"></FrmFieldKeys>
                                            <TitleStyle Width="150px"></TitleStyle>
                                            <InputStyle Width="100px" Height="20px" CssClass="Edit20"></InputStyle>
                                            <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                            <ReturnTextBoxStyle Width="120px" />
                                        </cc1:DscTextBox>
                                    </td>
                                    <td style="width: 100px">
                                        <cc1:DscDateAssistant2 ID="ebctl007" runat="server" Style="left: 383px; top: 47px; z-index: 683;"
                                            BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                            Title="請款日期" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                            cellpadding="2" cellspacing="0" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                            DisplayMode="yyyyMMdd" LangText="請款日期" Text="" TimeField="" TitleType="TitleLang01"
                                            TitleWidth="150px" TxtInput_TabIndex="114" DateSaveFormat="String">
                                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                            <TitleStyle Width="150px" />
                                            <InputStyle Width="100px" CssClass="Edit20" />
                                            <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl007"></FrmFieldKeys>
                                            <ReturnTextBoxStyle Width="120px" />
                                        </cc1:DscDateAssistant2>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <cc1:DscDateAssistant2 ID="ebctl008" runat="server" Style="left: 177px; top: 123px; z-index: 700;"
                                            BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                            Title="核發日期" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                            cellpadding="2" cellspacing="0" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                            DisplayMode="yyyyMMdd" LangText="核發日期" Text="" TimeField="" TitleType="TitleLang01"
                                            TitleWidth="150px" TxtInput_TabIndex="115" DateSaveFormat="String">
                                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                            <TitleStyle Width="150px" />
                                            <InputStyle Width="100px" Height="20px" CssClass="Edit20" />
                                            <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl008"></FrmFieldKeys>
                                            <ReturnTextBoxStyle Width="120px" />
                                        </cc1:DscDateAssistant2>
                                    </td>
                                    <td style="width: 100px">
                                        <%-- 2016/06/27:3.6.6.6:wayne:S00-20160314009:請款方式改為使用開窗方式 Start --%>
                                        <%--<cc1:DscDropDownList ID="ebctl009" runat="server" Style="z-index: 684; left: 489px; top: 154px"
                                            Title="付款方式" DDLInput_TabIndex="116" TitleWidth="150px">
                                            <Items>
                                                <asp:ListItem Selected="True" Value="-">請選擇</asp:ListItem>
                                                <asp:ListItem Value="即期票">
                                                </asp:ListItem>
                                                <asp:ListItem>30天期票</asp:ListItem>
                                                <asp:ListItem Value="一半即期，一半60期票">
                                                </asp:ListItem>
                                            </Items>
                                            <InputStyle Height="20px" Width="155px" />
                                            <TitleStyle Width="150px" />
                                            <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl009"></FrmFieldKeys>
                                            <ReturnTextBoxStyle Width="120px" />
                                        </cc1:DscDropDownList>--%>
                                        <cc1:DscOpenQuery ID="ebctl009" runat="server" Title="請款方式" Style="z-index: 700; left: 45px;
                                            top: 292px" TxtInput_TabIndex="113" ReturnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif"
                                            Text2Visible="True" RetuenVisible="True" BtnVisible="True" TitleWidth="120px"
                                            ShowTitle="True" InputEnabled="True" TitleLocation="_Left" TextMode="SingleLine"
                                            Cellpanding="0">
                                            <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl009"></FrmFieldKeys>
                                            <InputStyle Width="100px" />
                                            <ReturnTextBoxStyle Width="120px" />
                                            <TitleStyle Width="150px" />
                                        </cc1:DscOpenQuery>
                                        <%-- 2016/06/27:3.6.6.6:wayne:S00-20160314009:請款方式改為使用開窗方式 End --%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 22px">
                                        <cc1:DscTextBox ID="ebctl010" Title="合約編號" Style="z-index: 696; left: 217px; top: 198px"
                                            runat="server" LangText="合約編號" Cellpanding="2" TitleWidth="150px"
                                            TxtInput_TabIndex="117" border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0"
                                            Text="" TitleType="TitleLang01">
                                            <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl010"></FrmFieldKeys>
                                            <TitleStyle Width="150px"></TitleStyle>
                                            <InputStyle Width="100px" CssClass="Edit20"></InputStyle>
                                            <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                            <ReturnTextBoxStyle Width="120px" />
                                        </cc1:DscTextBox>
                                    </td>
                                    <td align="right">
                                        <table>
                                            <tr>
                                                <td style="width: 100px">
                                                    <cc1:DscTextBox ID="ebctl013" Title="結案單號" Style="z-index: 699; left: 155px; top: 15px"
                                                        runat="server" Cellpanding="2" TitleWidth="110px" border="0" CellNo1CssClass=""
                                                        CellNo2CssClass="" cellpadding="2" LangText="DscTextBox:" TitleType="TitleLang01"
                                                        TxtInput_TabIndex="0">
                                                        <FrmFieldKeys BOID="EBCE003_d01" FieldName="ebctl013" FrmID="FrmEBCE003_d01" />
                                                        <InputStyle CssClass="Edit20" Width="100px" />
                                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                                        <ReturnTextBoxStyle Width="120px" />
                                                        <TitleStyle Width="150px" />
                                                    </cc1:DscTextBox>
                                                </td>
                                                <td style="width: 100px" valign="top">
                                                    <asp:Button ID="btn_ebctl013" runat="server" Text="查看" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <%-- 2016/4/27:3.6.6.5:wayne:S00-20160314012:新增發票號碼 Start --%>
                                <tr>
                                    <td>
                                        <cc1:DscTextBox ID="ebctl014" Title="發票號碼" runat="server">
                                            <FrmFieldKeys BOID="EBCE003_d01" FieldName="ebctl014" FrmID="FrmEBCE003_d01" />
                                            <InputStyle CssClass="Edit20" Width="100px" />
                                            <TitleStyle Width="150px" />
                                        </cc1:DscTextBox>
                                    </td>
                                </tr>
                                <%-- 2016/4/27:3.6.6.5:wayne:S00-20160314012:新增發票號碼 End --%>
                                <tr>
                                    <td colspan="2">
                                        <cc1:DscTextBox ID="ebctl011" Title="說明" Style="z-index: 699; left: 219px; top: 246px"
                                            runat="server" LangText="說明" Cellpanding="2" TitleWidth="150px" TxtInput_TabIndex="118"
                                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellspacing="0" Text="" TitleType="TitleLang01">
                                            <FrmFieldKeys FrmID="FrmEBCE003_d01" BOID="EBCE003_d01" FieldName="ebctl011"></FrmFieldKeys>
                                            <TitleStyle Width="150px"></TitleStyle>
                                            <InputStyle Width="250px" CssClass="Edit20"></InputStyle>
                                            <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName=""></Validator>
                                            <ReturnTextBoxStyle Width="120px" />
                                        </cc1:DscTextBox>
                                    </td>
                                </tr>
                            </table>
                        </cc1:DscPanel>
                        <uc1:gridUserControl ID="GridUserControl1" runat="server"></uc1:gridUserControl>
                    </cc1:DscPanel>
                </div>
                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px; top: 72px"
                    runat="server" Width="100%">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent; left: 0px; top: 0px;">
                        <!--2016/02/16:3.6.6.2:wayne:V00-20160216001:修改選擇工程小項值被清空 Start -->
                        <cc1:DscTextBox ID="PostBacked" runat="server" Text="True"></cc1:DscTextBox>
                        <!--2016/02/16:3.6.6.2:wayne:V00-20160216001:修改選擇工程小項值被清空 End -->
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px; top: 72px"
                    runat="server">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent">
                        <asp:Button runat="server" ID="btnSelectData" CssClass="efbtn" Width="116px" Text="讀取單身資料"
                            OnClick="btnSelectData_Click" />
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
            <!--2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↓-->
            <cc1:DscPanel ID="hdnDisplayInHTML2" Style="display: none; z-index: 116; left: 264px; top: 72px"
                runat="server">
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
        <!--單檔架構結尾 -->
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
