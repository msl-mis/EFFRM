<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.forms.EMSAR02, src.FRM.EMSAR02" %>

<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<asp:Content ID="EMSAR02FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->


    <script src="EMSAR02.js" type="text/javascript"></script>

    <!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
    <div id="cover" style="width: 100%;">
        <div id="createRecord" style="width: 100%; height: 100%" runat="server">
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmEMSAR02" FrmDefineKeys-BOID="EMSAR02"
                BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="403px">
                <!--單頭頁籤-->
                <iewc:TabStrip ID="TabStrip1" runat="server" TabDefaultStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabHoverStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabSelectedStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);"
                    CssClass="divToolBar2">
                    <iewc:Tab Text="逾期應收帳款" DefaultStyle="width:100px; height:27px;vertical-align:middle; text-align:center;"
                        ID="Tab1"></iewc:Tab>
                </iewc:TabStrip>
                <!--單頭頁籤畫面集合-->
                <!--預設放入一個DIV-->
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%"
                    Height="403px" BackColor="Transparent">
                    <div class="TabPage" style="position: relative; height: 403px; left: 0px; top: 0px;">
                        <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 100; left: 745px;
                            position: absolute; top: 7px" runat="server" ShowSummary="False" ShowMessageBox="True">
                        </asp:ValidationSummary>
                        <!--此區間放入各種dsc元件-->                                                                        
                        
                        <table width="100%" style=" padding-left:10px" border="0">
                            <thead>
                                <tr >
                                    <td align="center" valign="middle" style=" height:40px"> 
                                        <cc1:DscLabel ID="labtitle" runat="server" Font-Size="Medium" Style="z-index: 501; left: 206px; position: inherit;top: 80px" Text="逾期應收帳款管制表" Width="800px" Height="30px" Font-Bold="True" Font-Names="Ariel">
                                        </cc1:DscLabel>
                                    </td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td align="center">
                                        <div id="divContext" style="overflow:auto;"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <table width="98%" border="1" style="border-color:#B3D4FC">
                                        <tr>
                                            <td style="background-color:#B3D4FC;width:100px; text-align:center;">
                                                <asp:Label ID="Label1" runat="server" Text="請求協助說明"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <cc1:DscTextBox ID="emsar02003" runat="server" ShowTitle="false" Cellpanding="0" TxtInput_TabIndex="101" border="0" cellpadding="0"
                                                    cellspacing="0" TextMode="MultiLine" TitleLocation="_Left">
                                                    <FrmFieldKeys FrmID="FrmEMSAR02" BOID="EMSAR02" FieldName="emsar02003"></FrmFieldKeys>
                                                    <InputStyle Height="150px" Width="600px"></InputStyle>
                                                </cc1:DscTextBox>
                                            </td>                                        
                                        </tr>
                                        </table>
                                    </td>                                

                                </tr>
                                <!-- edit by elvis 2011/09/20 新增加回覆內容 Start -->
                                <tr>
                                    <td align="center">
                                        <table width="98%" border="1" style="border-color:#B3D4FC">
                                        <tr>
                                            <td style="background-color:#B3D4FC;width:100px; text-align:center;">
                                                <asp:Label ID="Label2" runat="server" Text="回覆內容"></asp:Label>
                                            </td>
                                            <td align="left">
                                                <cc1:DscTextBox ID="emsar02006" runat="server" ShowTitle="false" Cellpanding="0" TxtInput_TabIndex="101" border="0" cellpadding="0"
                                                    cellspacing="0" TextMode="MultiLine" TitleLocation="_Left">
                                                    <FrmFieldKeys FrmID="FrmEMSAR02" BOID="EMSAR02" FieldName="emsar02006"></FrmFieldKeys>
                                                    <InputStyle Height="150px" Width="600px"></InputStyle>
                                                </cc1:DscTextBox>
                                            </td>                                        
                                        </tr>
                                        </table>
                                    </td>
                                </tr>
                                <!-- edit by elvis 2011/09/20 新增加回覆內容 End -->
                            </tbody>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--有單身才放-->
                <!--單身頁籤起始-->
                <!--單身Grid-->
                <!--此區間放入數個單身Grid-->
                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server" Width="100%">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent;
                        left: 0px; top: 0px;">
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent">
                        <cc1:DscTextBox ID="emsar02001" Title="DscTextBox:" Style="z-index: 101; left: 245px;
                            position: absolute; top: 16px" runat="server" Cellpanding="2" TitleWidth="110px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px" BackColor="#B3D4FC" ForeColor="#B3D4FC"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmEMSAR02" BOID="EMSAR02" FieldName="emsar02001"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="emsar02002" Title="DscTextBox:" Style="z-index: 102; left: 245px;
                            position: absolute; top: 49px" runat="server" Cellpanding="2" TitleWidth="110px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmEMSAR02" BOID="EMSAR02" FieldName="emsar02002"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="emsar02004" Title="帳款內容" Style="z-index: 699; left: 77px; position: absolute;
                            top: 70px" runat="server" LangText="帳款內容" Cellpanding="0" TitleWidth="120px"
                            TxtInput_TabIndex="102" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="0"
                            cellspacing="0" Text="" TitleType="TitleLang01">
                            <FrmFieldKeys FrmID="FrmEMSAR02" BOID="EMSAR02" FieldName="emsar02004"></FrmFieldKeys>
                            <TitleStyle Width="100px"></TitleStyle>
                            <InputStyle Width="568px" Height="75px" CssClass="Edit20"></InputStyle>
                            <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                            </Validator>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="emsar02005" Title="text2" Style="z-index: 698; left: 78px; position: absolute;
                            top: 421px" runat="server" LangText="text2" Cellpanding="0" TitleWidth="120px"
                            TxtInput_TabIndex="103" border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="0"
                            cellspacing="0" Text="" TitleType="TitleLang01">
                            <FrmFieldKeys FrmID="FrmEMSAR02" BOID="EMSAR02" FieldName="emsar02005"></FrmFieldKeys>
                            <TitleStyle Width="100px"></TitleStyle>
                            <InputStyle Width="559px" Height="57px" CssClass="Edit20"></InputStyle>
                            <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                            </Validator>
                        </cc1:DscTextBox>
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
            <!--2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↓-->
            <cc1:DscPanel ID="hdnDisplayInHTML2" Style="display: none; z-index: 116; left: 264px;
                top: 72px" runat="server">
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
    <script type="text/javascript"> emsOnload();</script>
</asp:Content>

