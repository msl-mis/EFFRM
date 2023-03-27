<%@ page language="c#" masterpagefile="~\src\_Common\AppUtil\EFMasterPage\EFBaseMasterPage.master" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.forms.RESE006, src.FRM.RESE006" %>

<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<asp:Content ID="RESE006FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->

    <script src="RESE006.js" type="text/javascript"></script>

    <!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
    <div id="cover" style="width: 100%;">
        <div id="createRecord" style="width: 98%; height: 100%" runat="server">
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmRESE006" FrmDefineKeys-BOID="RESE006"
                BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="400px">
                <!--單頭頁籤-->
                <iewc:TabStrip ID="TabStrip1" runat="server" TabDefaultStyle="font-family:#ffffe0;font-size:9pt;color:white;width:80;height:21;text-align:center;background-image:url(../../_Common/pic/newcrm/tp_b1.png);"
                    TabHoverStyle="background-image:url(../../_Common/pic/newcrm/tp_b2.png);color:black;text-align:center;"
                    TabSelectedStyle="background-image:url(../../_Common/pic/newcrm/tp_y.png);color:black;text-align:center;">
                    <iewc:Tab Text="品質異常單" DefaultImageUrl="../../_common/pic/icon/dg_edit.gif" DefaultStyle="text-align:center;width:120px;"
                        ID="Tab1"></iewc:Tab>
                </iewc:TabStrip>
                <!--單頭頁籤畫面集合-->
                <!--預設放入一個DIV-->
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%"
                    Height="400px" BackColor="Transparent">
                    <div class="TabPage" style="position: relative; height: 400px; left: 0px; top: 0px;">
                        <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 100; left: 745px;
                            position: absolute; top: 7px" runat="server" ShowSummary="False" ShowMessageBox="True">
                        </asp:ValidationSummary>
                        <!--此區間放入各種dsc元件-->
                        <cc1:DscTextBox ID="efstm003" runat="server" Style="z-index: 105; left: 3px; position: absolute;
                            top: 16px" TextMode="MultiLine" Title="問題說明" TitleWidth="120px" Width="520px">
                            <FrmFieldKeys FrmID="FrmRESE006" BOID="RESE006" FieldName="efstm003" />
                            <InputStyle CssClass="Edit20" Height="70px" Width="400px" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <TitleStyle Width="120px" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efstm004" runat="server" Style="z-index: 105; left: 3px; position: absolute;
                            top: 98px" TextMode="MultiLine" Title="原因分析" TitleWidth="120px" Width="520px">
                            <FrmFieldKeys FrmID="FrmRESE006" BOID="RESE006" FieldName="efstm004" />
                            <InputStyle CssClass="Edit20" Height="70px" Width="400px" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <TitleStyle Width="120px" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efstm005" runat="server" Style="z-index: 105; left: 3px; position: absolute;
                            top: 180px" TextMode="MultiLine" Title="改善對策" TitleWidth="120px" Width="520px">
                            <FrmFieldKeys FrmID="FrmRESE006" BOID="RESE006" FieldName="efstm005" />
                            <InputStyle CssClass="Edit20" Height="70px" Width="400px" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <TitleStyle Width="120px" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efstm006" runat="server" Style="z-index: 105; left: 3px; position: absolute;
                            top: 261px" TextMode="MultiLine" Title="預防措施" TitleWidth="120px" Width="520px">
                            <FrmFieldKeys FrmID="FrmRESE006" BOID="RESE006" FieldName="efstm006" />
                            <InputStyle CssClass="Edit20" Height="70px" Width="400px" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <TitleStyle Width="120px" />
                        </cc1:DscTextBox>
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
                        <cc1:DscTextBox ID="efstm001" Title="DscTextBox:" Style="z-index: 101; left: 245px;
                            position: absolute; top: 16px" runat="server" Cellpanding="2" TitleWidth="110px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmRESE006" BOID="RESE006" FieldName="efstm001"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="efstm002" Title="DscTextBox:" Style="z-index: 102; left: 245px;
                            position: absolute; top: 49px" runat="server" Cellpanding="2" TitleWidth="110px"
                            border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                            LangText="DscTextBox:" TitleType="TitleLang01" TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmRESE006" BOID="RESE006" FieldName="efstm002"></FrmFieldKeys>
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                        </cc1:DscTextBox>
                        
                                                <cc1:DscTextBox ID="efstm007" runat="server"  TextMode="MultiLine" Title="預防措施" TitleWidth="0px" Width="0px" Height="1px">
                            <FrmFieldKeys FrmID="FrmRESE006" BOID="RESE006" FieldName="efstm007" />
                            <InputStyle CssClass="Edit20" Height="0px" Width="10px" />
                            <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                            <TitleStyle Width="120px" />
                        </cc1:DscTextBox>

                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
        </div>
        <!--單檔架構結尾 -->
    </div>
</asp:Content>
