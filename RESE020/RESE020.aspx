<%@ page language="c#" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" enableeventvalidation="false" inherits="tw.com.dsc.easyflowDotNet.forms.RESE020, src.FRM.RESE020" %>

<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<asp:Content ID="RESE020FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--引用JavaScript-->


    <!--2013/01/24:3.5.1.44:hiro:S00-20130109001:雙檔作業的單身，支援組合多選開窗。-->

    <script src="../../_Common/JS/EFCommonFunction.js" type="text/javascript"></script>

    <script src="RESE020.js" type="text/javascript"></script>

    <!--單檔架構 -->
    <!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
    <div id="cover" style="width: 100%;">
        <div id="createRecord" style="width: 100%; height: 100%" runat="server">
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmRESE020" FrmDefineKeys-BOID="RESE020"
                BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="157px">
                <!--單頭頁籤-->
                <iewc:TabStrip ID="TabStrip1" runat="server" TabDefaultStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabHoverStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabSelectedStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);"
                    CssClass="divToolBar2">
                    <iewc:Tab ID='headDefault' Text='D0' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'>
                    </iewc:Tab>
                    <iewc:Tab ID='head1' Text='D1' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'>
                    </iewc:Tab>
                    <iewc:Tab ID='head2' Text='D2' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'>
                    </iewc:Tab>
                    <iewc:Tab ID='head3' Text='D3' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'>
                    </iewc:Tab>
                    <iewc:Tab ID='head4' Text='D4' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'>
                    </iewc:Tab>
                    <iewc:Tab ID='head5' Text='D5' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'>
                    </iewc:Tab>
                    <iewc:Tab ID='head6' Text='D6' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'>
                    </iewc:Tab>
                    <iewc:Tab ID='head7' Text='D7' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'>
                    </iewc:Tab>
                    <iewc:Tab ID='head8' Text='D8' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'>
                    </iewc:Tab>
                </iewc:TabStrip>
                <!--單頭頁籤畫面集合-->
                <!--單頭頁籤 一-->
                <cc1:DscPanel ID='divheadDefault' Style='display: block' runat='server' Width='100%'
                    Height='115px' BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 115px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummaryHead01' Style='z-index: 100; left: 745px;
                            position: absolute; top: 7px' runat='server' ShowSummary='False' ShowMessageBox='True'>
                        </asp:ValidationSummary>
                        <table style="width: 100%">
                            <!--此區間放入單頭頁籤 一 的各個dsc元件-->
                            <tr>
                                <td colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="lblHeadTitle01" runat="server" Font-Bold="True" Font-Size="Small"
                                        ForeColor="Blue" Text="D0-客訴內容"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb001' Title='表單代號' runat='server' Style='display: none; z-index: 101;
                                        left: 245px; position: absolute; top: 16px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb001'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb002' Title='表單單號' runat='server' Style='display: none; z-index: 102;
                                        left: 245px; position: absolute; top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb002'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb003" Title="申請人" runat="server" LangText="申請人" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb003"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb004" Title="申請部門" runat="server" LangText="申請部門" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/pic/icon/data.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb004"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb005" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="申請日期" TitleWidth="120px" DisplayMode="yyyyMMdd" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb005"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb006" runat="server" Title="說明" TitleWidth="100px" border="0"
                                        CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="说明"
                                        Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px" Height="40px"
                                        BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb006"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb007' Title='客訴單號' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb007'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDropDownList ID="resgb008" runat="server" Style="left: -60px" AddAttributes=""
                                        AutoPostBack="False" border="0" cellpadding="2" cellspacing="0" DDLInput_TabIndex="15"
                                        InputEnabled="True" LangText="客訴方式" Title="客訴方式" TitleType="TitleLang01" TitleWidth="60px"
                                        Value="" TabIndex="5">
                                        <Items>
                                            <asp:ListItem Selected="True" Value="0">電話</asp:ListItem>
                                            <asp:ListItem Value="1">MAIL</asp:ListItem>
                                            <asp:ListItem Value="2">到府</asp:ListItem>
                                            <asp:ListItem Value="3">傳真</asp:ListItem>
                                        </Items>
                                        <InputStyle Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <TitleStyle Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb008" />
                                    </cc1:DscDropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb009" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="開案日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb009"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb010" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="結案日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb010"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb011" Title="客戶代號" runat="server" LangText="客戶代號" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb011"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                    <cc1:DscTextBox ID="DscTextBox2" runat="server" border="0" CellNo1CssClass="" CellNo2CssClass=""
                                        cellpadding="2" cellspacing="0" LangText="DscTextBox:" ShowTitle="False" Style="z-index: 101;
                                        left: 684px; position: absolute; top: 79px" Text="" TitleWidth="60px" TxtInput_TabIndex="0"
                                        Width="10px">
                                        <InputStyle Width="0px" />
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="60px" />
                                    </cc1:DscTextBox>
                                    <cc1:DscTextBox ID='resgb095' Title='系統別' runat='server' Style='display: none; z-index: 102;
                                        left: 245px; top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb095'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                    <cc1:DscTextBox ID='resgb096' Title='公司別' runat='server' Style='display: none; z-index: 102;
                                        left: 245px; top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb096'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb012' Title='公司網址' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='250px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb012'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb013' Title='身份證字號/統編' runat='server' Style='z-index: 102;
                                        left: 245px; top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb013'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb014' Title='電話號碼(一)' runat='server' Style='z-index: 102;
                                        left: 245px; top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb014'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb015' Title='聯絡人' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb015'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb016' Title='電話號碼(二)' runat='server' Style='z-index: 102;
                                        left: 245px; top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb016'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb017' Title='E-Mail' runat='server' Style='z-index: 102;
                                        left: 245px; top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb017'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb018' Title='傳真號碼' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb018'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscTextBox ID='resgb019' Title='聯絡地址' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='510px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb019'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb020' Title='退貨單號' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb020'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb021' Title='退貨數量' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb021'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb022' Title='產品類別' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb022'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb023' Title='產品規格' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb023'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb024' Title='產品料號' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb024'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb025' Title='客戶料號' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb025'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb026" runat="server" Title="客訴原因" TitleWidth="100px" border="0"
                                        CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="客訴原因"
                                        Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px" Height="40px"
                                        BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb026"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscDropDownList ID="resgb027" runat="server" Style="left: -60px" AddAttributes=""
                                        AutoPostBack="False" border="0" cellpadding="2" cellspacing="0" DDLInput_TabIndex="15"
                                        InputEnabled="True" LangText="嚴重程度" Title="嚴重程度" TitleType="TitleLang01" TitleWidth="60px"
                                        Value="" TabIndex="5">
                                        <Items>
                                            <asp:ListItem Selected="True" Value="0">建議</asp:ListItem>
                                            <asp:ListItem Value="1">低</asp:ListItem>
                                            <asp:ListItem Value="2">中等</asp:ListItem>
                                            <asp:ListItem Value="3">重要</asp:ListItem>
                                            <asp:ListItem Value="4">重大</asp:ListItem>
                                        </Items>
                                        <InputStyle Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <TitleStyle Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb027" />
                                    </cc1:DscDropDownList>
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--單頭頁籤 二-->
                <cc1:DscPanel ID='divhead1' Style='display: block' runat='server' Width='100%' Height='123px'
                    BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 123px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummaryHead02' Style='z-index: 100; left: 745px;
                            position: absolute; top: 7px' runat='server' ShowSummary='False' ShowMessageBox='True'>
                        </asp:ValidationSummary>
                        <table style="width: 100%">
                            <!--此區間放入單頭頁籤 二 的各個dsc元件-->
                            <tr>
                                <td colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="lblHeadTitle02" runat="server" Font-Bold="True" Font-Size="Small"
                                        ForeColor="Blue" Text="D1-成立小組"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb028" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="指派日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb028"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb043' Title='D0~D1完成時效' runat='server' Style='display: none;
                                        z-index: 102; left: 245px; top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb043'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <cc1:DscLabel ID="lblD2" runat="server" Text="D2、問題描述成員">
                                        <Comment F0001="FD" F0002="RESE020" F0003="lblD2" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscOpenQuery ID="resgb029" Title="內部成員" runat="server" LangText="內部成員" Cellpanding="2"
                                                    TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                                    ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                                    cellpadding="2" cellspacing="0" ReturnText="" Text="" TextMode="MultiLine">
                                                    <TitleStyle Width="120px"></TitleStyle>
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <InputStyle Width="250px" CssClass="Edit20"></InputStyle>
                                                    <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                                    </Validator>
                                                    <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb029"></FrmFieldKeys>
                                                </cc1:DscOpenQuery>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="resgb029_del" runat="server" ImageUrl="../../_Common/AppUtil/Themes/images/Board/editor_f11.gif" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb030' Title='外部成員' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='250px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb030'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <cc1:DscLabel ID="lblD3" runat="server" Text="D3、緊急處理措施成員">
                                        <Comment F0001="FD" F0002="RESE020" F0003="lblD3" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscOpenQuery ID="resgb031" Title="內部成員" runat="server" LangText="內部成員" Cellpanding="2"
                                                    TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                                    ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                                    cellpadding="2" cellspacing="0" ReturnText="" Text="" TextMode="MultiLine">
                                                    <TitleStyle Width="120px"></TitleStyle>
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <InputStyle Width="250px" CssClass="Edit20"></InputStyle>
                                                    <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                                    </Validator>
                                                    <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb031"></FrmFieldKeys>
                                                </cc1:DscOpenQuery>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="resgb031_del" runat="server" ImageUrl="../../_Common/AppUtil/Themes/images/Board/editor_f11.gif" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb032' Title='外部成員' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='250px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb032'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <cc1:DscLabel ID="lblD4" runat="server" Text="D4、原因分析成員">
                                        <Comment F0001="FD" F0002="RESE020" F0003="lblD4" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscOpenQuery ID="resgb033" Title="內部成員" runat="server" LangText="內部成員" Cellpanding="2"
                                                    TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                                    ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                                    cellpadding="2" cellspacing="0" ReturnText="" Text="" TextMode="MultiLine">
                                                    <TitleStyle Width="120px"></TitleStyle>
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <InputStyle Width="250px" CssClass="Edit20"></InputStyle>
                                                    <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                                    </Validator>
                                                    <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb033"></FrmFieldKeys>
                                                </cc1:DscOpenQuery>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="resgb033_del" runat="server" ImageUrl="../../_Common/AppUtil/Themes/images/Board/editor_f11.gif" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb034' Title='外部成員' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='250px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb034'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <cc1:DscLabel ID="lblD5" runat="server" Text="D5、永久對策立案成員">
                                        <Comment F0001="FD" F0002="RESE020" F0003="lblD5" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscOpenQuery ID="resgb035" Title="內部成員" runat="server" LangText="內部成員" Cellpanding="2"
                                                    TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                                    ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                                    cellpadding="2" cellspacing="0" ReturnText="" Text="" TextMode="MultiLine">
                                                    <TitleStyle Width="120px"></TitleStyle>
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <InputStyle Width="250px" CssClass="Edit20"></InputStyle>
                                                    <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                                    </Validator>
                                                    <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb035"></FrmFieldKeys>
                                                </cc1:DscOpenQuery>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="resgb035_del" runat="server" ImageUrl="../../_Common/AppUtil/Themes/images/Board/editor_f11.gif" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb036' Title='外部成員' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='250px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb036'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <cc1:DscLabel ID="lblD6" runat="server" Text="D6、執行與驗證永久對策成員">
                                        <Comment F0001="FD" F0002="RESE020" F0003="lblD6" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscOpenQuery ID="resgb037" Title="內部成員" runat="server" LangText="內部成員" Cellpanding="2"
                                                    TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                                    ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                                    cellpadding="2" cellspacing="0" ReturnText="" Text="" TextMode="MultiLine">
                                                    <TitleStyle Width="120px"></TitleStyle>
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <InputStyle Width="250px" CssClass="Edit20"></InputStyle>
                                                    <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                                    </Validator>
                                                    <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb037"></FrmFieldKeys>
                                                </cc1:DscOpenQuery>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="resgb037_del" runat="server" ImageUrl="../../_Common/AppUtil/Themes/images/Board/editor_f11.gif" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb038' Title='外部成員' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='250px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb038'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <cc1:DscLabel ID="lblD7" runat="server" Text="D7、預防措施成員">
                                        <Comment F0001="FD" F0002="RESE020" F0003="lblD7" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscOpenQuery ID="resgb039" Title="內部成員" runat="server" LangText="內部成員" Cellpanding="2"
                                                    TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                                    ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                                    cellpadding="2" cellspacing="0" ReturnText="" Text="" TextMode="MultiLine">
                                                    <TitleStyle Width="120px"></TitleStyle>
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <InputStyle Width="250px" CssClass="Edit20"></InputStyle>
                                                    <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                                    </Validator>
                                                    <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb039"></FrmFieldKeys>
                                                </cc1:DscOpenQuery>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="resgb039_del" runat="server" ImageUrl="../../_Common/AppUtil/Themes/images/Board/editor_f11.gif" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb040' Title='外部成員' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='250px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb040'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <cc1:DscLabel ID="lblD8" runat="server" Text="D8、成果確認及結案成員">
                                        <Comment F0001="FD" F0002="RESE020" F0003="lblD8" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <table>
                                        <tr>
                                            <td>
                                                <cc1:DscOpenQuery ID="resgb041" Title="內部成員" runat="server" LangText="內部成員" Cellpanding="2"
                                                    TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                                    ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                                    cellpadding="2" cellspacing="0" ReturnText="" Text="" TextMode="MultiLine">
                                                    <TitleStyle Width="120px"></TitleStyle>
                                                    <ReturnTextBoxStyle Width="120px" />
                                                    <InputStyle Width="250px" CssClass="Edit20"></InputStyle>
                                                    <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                                    </Validator>
                                                    <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb041"></FrmFieldKeys>
                                                </cc1:DscOpenQuery>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="resgb041_del" runat="server" ImageUrl="../../_Common/AppUtil/Themes/images/Board/editor_f11.gif" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscTextBox ID='resgb042' Title='外部成員' runat='server' Style='z-index: 102; left: 245px;
                                        top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0' Cellpanding='2'
                                        border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2' cellspacing='0'>
                                        <InputStyle Width='250px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb042'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--單頭頁籤 三-->
                <cc1:DscPanel ID='divhead2' Style='display: block' runat='server' Width='100%' Height='148px'
                    BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 148px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummaryHead03' Style='z-index: 100; left: 745px;
                            position: absolute; top: 7px' runat='server' ShowSummary='False' ShowMessageBox='True'>
                        </asp:ValidationSummary>
                        <table style="width: 100%">
                            <!--此區間放入單頭頁籤 三 的各個dsc元件-->
                            <tr>
                                <td colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="lblHeadTitle03" runat="server" Font-Bold="True" Font-Size="Small"
                                        ForeColor="Blue" Text="D2-問題描述"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb044" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="處理日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb044"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb045" Title="負責人員" runat="server" LangText="負責人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb045"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb046" runat="server" Title="問題描述" TitleWidth="100px" border="0"
                                        CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="問題描述"
                                        Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px" Height="40px"
                                        BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb046"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb047" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="發生時間" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb047"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb048" runat="server" Title="影響程度" TitleWidth="100px" border="0"
                                        CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="影響程度"
                                        Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px" Height="40px"
                                        BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb048"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscTextBox ID='resgb049' Title='D1~D2完成時效' runat='server' Style='display: none;
                                        z-index: 102; left: 245px; top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb049'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--單頭頁籤 四-->
                <cc1:DscPanel ID='divhead3' Style='display: block' runat='server' Width='100%' Height='157px'
                    BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 157px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummaryHead04' Style='z-index: 100; left: 745px;
                            position: absolute; top: 7px' runat='server' ShowSummary='False' ShowMessageBox='True'>
                        </asp:ValidationSummary>
                        <table style="width: 100%" id='CDFTableHead'>
                            <!--此區間放入單頭頁籤 四 的各個dsc元件-->
                            <tr>
                                <td colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="lblHeadTitle04" runat="server" Font-Bold="True" Font-Size="Small"
                                        ForeColor="Blue" Text="D3-緊急處理措施"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb050" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="處理日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb050"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb051" Title="負責人員" runat="server" LangText="負責人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb051"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscDropDownList ID="resgb052" runat="server" Style="left: -60px" AddAttributes=""
                                        AutoPostBack="False" border="0" cellpadding="2" cellspacing="0" DDLInput_TabIndex="15"
                                        InputEnabled="True" LangText="級別" Title="級別" TitleType="TitleLang01" TitleWidth="60px"
                                        Value="" TabIndex="5">
                                        <Items>
                                            <asp:ListItem Value="0">Level1</asp:ListItem>
                                            <asp:ListItem Value="1">Level2</asp:ListItem>
                                            <asp:ListItem Value="2">Level3</asp:ListItem>
                                            <asp:ListItem Value="3">Level4</asp:ListItem>
                                            <asp:ListItem Selected="True" Value="4">Level5</asp:ListItem>
                                        </Items>
                                        <InputStyle Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <TitleStyle Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb052" />
                                    </cc1:DscDropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb053" runat="server" Title="a.圍堵行動" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="a.圍堵行動" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb053"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb054" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="處理日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb054"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb055" Title="負責人員" runat="server" LangText="負責人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb055"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscDropDownList ID="resgb056" runat="server" Style="left: -60px" AddAttributes=""
                                        AutoPostBack="False" border="0" cellpadding="2" cellspacing="0" DDLInput_TabIndex="15"
                                        InputEnabled="True" LangText="級別" Title="級別" TitleType="TitleLang01" TitleWidth="60px"
                                        Value="" TabIndex="5">
                                        <Items>
                                            <asp:ListItem Value="0">Level1</asp:ListItem>
                                            <asp:ListItem Value="1">Level2</asp:ListItem>
                                            <asp:ListItem Value="2">Level3</asp:ListItem>
                                            <asp:ListItem Value="3">Level4</asp:ListItem>
                                            <asp:ListItem Selected="True" Value="4">Level5</asp:ListItem>
                                        </Items>
                                        <InputStyle Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <TitleStyle Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb056" />
                                    </cc1:DscDropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb057" runat="server" Title="b.過渡時期改善行動" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="b.過渡時期改善行動" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb057"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb058" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="確認日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb058"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb059" Title="確認人員" runat="server" LangText="確認人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb059"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb060" runat="server" Title="c.成效確認" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="c.成效確認" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb060"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscTextBox ID='resgb061' Title='D2~D3完成時效' runat='server' Style='display: none;
                                        z-index: 102; left: 245px; top: 49px' LangText='' TitleWidth='120px' TxtInput_TabIndex='0'
                                        Cellpanding='2' border='0' CellNo1CssClass='' CellNo2CssClass='' cellpadding='2'
                                        cellspacing='0'>
                                        <InputStyle Width='120px'></InputStyle>
                                        <TitleStyle Width='120px'></TitleStyle>
                                        <FrmFieldKeys FrmID='FrmRESE020' BOID='RESE020' FieldName='resgb061'></FrmFieldKeys>
                                        <Validator MsgF0001='' MsgF0002='' ValidatorExpression='' ValidatorMsg='' ValidatorName='' />
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--單頭頁籤 五-->
                <cc1:DscPanel ID='divhead4' Style='display: block' runat='server' Width='100%' Height='154px'
                    BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 154px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummaryHead05' Style='z-index: 100; left: 745px;
                            position: absolute; top: 7px' runat='server' ShowSummary='False' ShowMessageBox='True'>
                        </asp:ValidationSummary>
                        <table style="width: 100%">
                            <!--此區間放入單頭頁籤 五 的各個dsc元件-->
                            <tr>
                                <td colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="lblHeadTitle05" runat="server" Font-Bold="True" Font-Size="Small"
                                        ForeColor="Blue" Text="D4-原因分析"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb062" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="處理日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb062"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb063" Title="負責人員" runat="server" LangText="負責人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb063"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb064" runat="server" Title="a.發生源要因分析" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="a.發生源要因分析" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb064"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb065" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="處理日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb065"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb066" Title="負責人員" runat="server" LangText="負責人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb066"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb067" runat="server" Title="b.檢出源要因分析" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="b.檢出源要因分析" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb067"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--單頭頁籤 六-->
                <cc1:DscPanel ID='divhead5' Style='display: block' runat='server' Width='100%' Height='154px'
                    BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 154px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummary1' Style='z-index: 100; left: 745px;
                            position: absolute; top: 7px' runat='server' ShowSummary='False' ShowMessageBox='True'>
                        </asp:ValidationSummary>
                        <table style="width: 100%">
                            <!--此區間放入單頭頁籤 六 的各個dsc元件-->
                            <tr>
                                <td colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="lblHeadTitle06" runat="server" Font-Bold="True" Font-Size="Small"
                                        ForeColor="Blue" Text="D5-永久對策立案及選擇"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb068" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="處理日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb068"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb069" Title="負責人員" runat="server" LangText="負責人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb069"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscDropDownList ID="resgb070" runat="server" Style="left: -60px" AddAttributes=""
                                        AutoPostBack="False" border="0" cellpadding="2" cellspacing="0" DDLInput_TabIndex="15"
                                        InputEnabled="True" LangText="級別" Title="級別" TitleType="TitleLang01" TitleWidth="60px"
                                        Value="" TabIndex="5">
                                        <Items>
                                            <asp:ListItem Value="0">Level1</asp:ListItem>
                                            <asp:ListItem Value="1">Level2</asp:ListItem>
                                            <asp:ListItem Value="2">Level3</asp:ListItem>
                                            <asp:ListItem Value="3">Level4</asp:ListItem>
                                            <asp:ListItem Selected="True" Value="4">Level5</asp:ListItem>
                                        </Items>
                                        <InputStyle Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <TitleStyle Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb070" />
                                    </cc1:DscDropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb071" runat="server" Title="a.發生源永久對策" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="a.發生源永久對策" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb071"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb072" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="處理日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb072"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb073" Title="負責人員" runat="server" LangText="負責人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb073"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscDropDownList ID="resgb074" runat="server" Style="left: -60px" AddAttributes=""
                                        AutoPostBack="False" border="0" cellpadding="2" cellspacing="0" DDLInput_TabIndex="15"
                                        InputEnabled="True" LangText="級別" Title="級別" TitleType="TitleLang01" TitleWidth="60px"
                                        Value="" TabIndex="5">
                                        <Items>
                                            <asp:ListItem Value="0">Level1</asp:ListItem>
                                            <asp:ListItem Value="1">Level2</asp:ListItem>
                                            <asp:ListItem Value="2">Level3</asp:ListItem>
                                            <asp:ListItem Value="3">Level4</asp:ListItem>
                                            <asp:ListItem Selected="True" Value="4">Level5</asp:ListItem>
                                        </Items>
                                        <InputStyle Width="120px" />
                                        <ReturnTextBoxStyle Width="120px" />
                                        <TitleStyle Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb074" />
                                    </cc1:DscDropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb075" runat="server" Title="b.檢出源永久對策" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="b.檢出源永久對策" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb075"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--單頭頁籤 七-->
                <cc1:DscPanel ID='divhead6' Style='display: block' runat='server' Width='100%' Height='154px'
                    BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 154px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummary2' Style='z-index: 100; left: 745px;
                            position: absolute; top: 7px' runat='server' ShowSummary='False' ShowMessageBox='True'>
                        </asp:ValidationSummary>
                        <table style="width: 100%">
                            <!--此區間放入單頭頁籤 七 的各個dsc元件-->
                            <tr>
                                <td colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="lblHeadTitle07" runat="server" Font-Bold="True" Font-Size="Small"
                                        ForeColor="Blue" Text="D6-執行及驗證永久對策"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb076" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="處理日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb076"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb077" Title="負責人員" runat="server" LangText="負責人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb077"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb078" runat="server" Title="a.發生源永久對策執行" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="a.發生源永久對策執行" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb078"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb079" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="確認日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb079"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb080" Title="確認人員" runat="server" LangText="確認人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb080"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb081" runat="server" Title="a.對策效果確認" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="a.對策效果確認" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb081"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb082" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="處理日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb082"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb083" Title="負責人員" runat="server" LangText="負責人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb083"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb084" runat="server" Title="b.檢出源永久對策執行" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="b.檢出源永久對策執行" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb084"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb085" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="確認日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb085"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb086" Title="確認人員" runat="server" LangText="確認人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb086"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb087" runat="server" Title="b.對策效果確認" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="b.對策效果確認" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb087"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--單頭頁籤 八-->
                <cc1:DscPanel ID='divhead7' Style='display: block' runat='server' Width='100%' Height='154px'
                    BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 154px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummary3' Style='z-index: 100; left: 745px;
                            position: absolute; top: 7px' runat='server' ShowSummary='False' ShowMessageBox='True'>
                        </asp:ValidationSummary>
                        <table style="width: 100%">
                            <!--此區間放入單頭頁籤 八 的各個dsc元件-->
                            <tr>
                                <td colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="lblHeadTitle08" runat="server" Font-Bold="True" Font-Size="Small"
                                        ForeColor="Blue" Text="D7-預防措施"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb088" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="處理日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb088"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb089" Title="負責人員" runat="server" LangText="負責人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb089"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb090" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="生效日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb090"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb091" runat="server" Title="標準化/平行展開" TitleWidth="100px"
                                        border="0" CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0"
                                        LangText="標準化/平行展開" Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px"
                                        Height="40px" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb091"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--單頭頁籤 九-->
                <cc1:DscPanel ID='divhead8' Style='display: block' runat='server' Width='100%' Height='154px'
                    BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 154px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummary4' Style='z-index: 100; left: 745px;
                            position: absolute; top: 7px' runat='server' ShowSummary='False' ShowMessageBox='True'>
                        </asp:ValidationSummary>
                        <table style="width: 100%">
                            <!--此區間放入單頭頁籤 九 的各個dsc元件-->
                            <tr>
                                <td colspan="2" align="center" class="Tilteline">
                                    <asp:Label ID="lblHeadTitle09" runat="server" Font-Bold="True" Font-Size="Small"
                                        ForeColor="Blue" Text="D8-成果確認及結案"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscDateAssistant2 ID="resgb092" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="確認日期" TitleWidth="120px" DisplayMode="yyyyMMddHHmm" DateSaveFormat="String"
                                        DateLan="ChristianEra">
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px" />
                                        <InputStyle CssClass="Edit20" Width="120px" />
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb092"></FrmFieldKeys>
                                        <ReturnTextBoxStyle Width="120px" />
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td style="width: 50%" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb093" Title="確認人員" runat="server" LangText="確認人員" Cellpanding="2"
                                        TitleWidth="120px" BtnVisible="True" RetuenVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        ReturnVisible="True" border="0" CellNo1CssClass="" CellNo2CssClass="" CellNo3CssClass=""
                                        cellpadding="2" cellspacing="0" ReturnText="" Text="">
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                        <Validator ValidatorMsg="" ValidatorExpression="" MsgF0001="" MsgF0002="" ValidatorName="">
                                        </Validator>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb093"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="STD_td">
                                    <cc1:DscOpenQuery ID="resgb094" runat="server" Title="結語" TitleWidth="100px" border="0"
                                        CellNo1CssClass="" CellNo2CssClass="" cellpadding="2" cellspacing="0" LangText="結語"
                                        Text="" TitleType="TitleLang01" TextMode="MultiLine" Width="510px" Height="40px"
                                        BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/pela.gif">
                                        <InputStyle Width="510px" Height="80px"></InputStyle>
                                        <Validator MsgF0001="" MsgF0002="" ValidatorExpression="" ValidatorMsg="" ValidatorName="" />
                                        <TitleStyle Width="120px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE020" BOID="RESE020" FieldName="resgb094"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                            </tr>
                        </table>
                    </div>
                </cc1:DscPanel>
                <!--單身Grid畫面-->
                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server" Width="100%">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent;
                        left: 0px; top: 0px;">
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent">
                    </div>
                </cc1:DscPanel>
            </cc1:DscPanel>
            <!--2012/12/25:3.5.1.38:hiro:S00-20121031003:3.修正多選開窗onChange事件。↓-->
            <asp:HiddenField ID='hdnOpenQueryPreSetValue' runat='server' Value='' />
            <!--2012/12/25:3.5.1.38:hiro:S00-20121031003:3.修正多選開窗onChange事件。↑-->
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
    </div>
</asp:Content>
