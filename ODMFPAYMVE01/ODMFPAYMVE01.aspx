<%@ Page Language="c#" CodeFile="ODMFPAYMVE01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" EnableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMFPAYMVE01" %>

<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMFPAYMVE01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->
    <!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
    <div id="cover" style="width: 100%;">
        <div id="createRecord" style="width: 100%; height: 100%" runat="server">
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMFPAYMVE01" FrmDefineKeys-BOID="ODMFPAYMVE01"
                BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="926px">
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
                <cc1:DscPanel ID='divheadDefault' Style='display: block' runat='server' Width='100%' Height='926px' BackColor='Transparent'>
                    <div class='TabPage' style='position: relative; height: 926px; left: 0px; top: 0px;'>
                        <asp:ValidationSummary ID='ValidationSummaryHead01' Style='z-index: 100; position: absolute; left: 745px; top: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
                        <!--此區間放入單頭頁籤 一 的各個dsc元件-->

                        <cc1:DscTextBox ID='odmfpaymve01001' runat='server' Title='表單代號'
                            Style='display: none; z-index: 101; position: absolute; left: 245px; top: 16px;'
                            TxtInput_TabIndex='0'>
                            <InputStyle Width='120px'></InputStyle>
                            <TitleStyle Width='110px'></TitleStyle>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='odmfpaymve01001'></FrmFieldKeys>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='odmfpaymve01002' runat='server' Title='表單單號'
                            Style='display: none; z-index: 102; position: absolute; left: 245px; top: 49px;'
                            TxtInput_TabIndex='0'>
                            <InputStyle Width='120px'></InputStyle>
                            <TitleStyle Width='110px'></TitleStyle>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='odmfpaymve01002'></FrmFieldKeys>
                        </cc1:DscTextBox>

                        <cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='datetime1' ShowTitle='False'
                            Style="position: absolute; left: 611px; top: 110px; z-index: 663;"
                            TxtInput_TabIndex='101'
                            DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/'
                            BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
                            <InputStyle Width='103px' Height='23px' CssClass='Edit20' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='datetime1'></FrmFieldKeys>
                        </cc1:DscDateAssistant2>
                        <cc1:DscTextBox ID='dept' runat='server' Title='部門' ShowTitle='False'
                            Style="z-index: 698; position: absolute; left: 91px; top: 154px;"
                            TxtInput_TabIndex='102'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='dept'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='125px' Height='25px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='username' runat='server' Title='請款人' ShowTitle='False'
                            Style="z-index: 679; position: absolute; left: 318px; top: 153px;"
                            TxtInput_TabIndex='103'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='username'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='111px' Height='25px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='payee' runat='server' Title='受款人' ShowTitle='False'
                            Style="z-index: 677; position: absolute; left: 516px; top: 139px;"
                            TxtInput_TabIndex='104' TextMode='MultiLine'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='payee'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='180px' Height='50px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <div style="display: none;">
                            <cc1:DscCheckBox ID='chkitem01' runat='server' Text='一般費用 Chi phí thường' ShowTitle='False'
                                Style="z-index: 662; position: absolute; left: 709px; top: 169px;"
                                CheckBoxInput_TabIndex='105'
                                Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                                <InputStyle Width='16px' Height='22px' />
                                <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkitem01'></FrmFieldKeys>
                            </cc1:DscCheckBox>
                        </div>
                        <div style="display: none;">
                            <cc1:DscCheckBox ID='chkitem02' runat='server' Text='資產 Tài sản' ShowTitle='False'
                                Style="z-index: 659; position: absolute; left: 787px; top: 168px;"
                                CheckBoxInput_TabIndex='106'
                                Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                                <InputStyle Width='16px' Height='22px' />
                                <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkitem02'></FrmFieldKeys>
                            </cc1:DscCheckBox>
                        </div>
                        <div style="display: none;">
                            <cc1:DscCheckBox ID='chkitem03' runat='server' Text='原物料 NVL' ShowTitle='False'
                                Style="z-index: 661; position: absolute; left: 732px; top: 173px;"
                                CheckBoxInput_TabIndex='107'
                                Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                                <InputStyle Width='16px' Height='22px' />
                                <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkitem03'></FrmFieldKeys>
                            </cc1:DscCheckBox>
                        </div>
                        <div style="display: none;">
                            <cc1:DscCheckBox ID='chkitem04' runat='server' Text='零用金 Tiền mặt' ShowTitle='False'
                                Style="z-index: 660; position: absolute; left: 761px; top: 172px;"
                                CheckBoxInput_TabIndex='108'
                                Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                                <InputStyle Width='16px' Height='22px' />
                                <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkitem04'></FrmFieldKeys>
                            </cc1:DscCheckBox>
                        </div>
                        <div style="display: none;">
                            <cc1:DscCheckBox ID='chkitem05' runat='server' Text='其他 Khác -' ShowTitle='False'
                                Style="z-index: 658; position: absolute; left: 809px; top: 173px;"
                                CheckBoxInput_TabIndex='109'
                                Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                                <InputStyle Width='16px' Height='22px' />
                                <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkitem05'></FrmFieldKeys>
                            </cc1:DscCheckBox>
                        </div>
                        <cc1:DscTextBox ID='chkother' runat='server' Title='其他' ShowTitle='False'
                            Style="z-index: 670; position: absolute; left: 562px; top: 201px;"
                            TxtInput_TabIndex='110'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkother'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='88px' Height='22px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='textarea1' runat='server' Title='內容01' ShowTitle='False'
                            Style="z-index: 692; position: absolute; left: 91px; top: 353px;"
                            TxtInput_TabIndex='111' TextMode='MultiLine'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='textarea1'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='425px' Height='80px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='money01' runat='server' Title='金額01' ShowTitle='False'
                            Style="z-index: 669; position: absolute; left: 586px; top: 384px;"
                            TxtInput_TabIndex='112' TextAlign="Right">
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='money01'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='textarea2' runat='server' Title='內容02' ShowTitle='False'
                            Style="z-index: 691; position: absolute; left: 91px; top: 440px;"
                            TxtInput_TabIndex='113' TextMode='MultiLine'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='textarea2'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='425px' Height='75px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='money02' runat='server' Title='金額02' ShowTitle='False'
                            Style="z-index: 668; position: absolute; left: 586px; top: 460px;"
                            TxtInput_TabIndex='114' TextAlign="Right">
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='money02'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='textarea3' runat='server' Title='內容03' ShowTitle='False'
                            Style="z-index: 690; position: absolute; left: 91px; top: 518px;"
                            TxtInput_TabIndex='115' TextMode='MultiLine'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='textarea3'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='425px' Height='65px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='money03' runat='server' Title='金額03' ShowTitle='False'
                            Style="z-index: 667; position: absolute; left: 586px; top: 542px;"
                            TxtInput_TabIndex='116' TextAlign="Right">
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='money03'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='textarea4' runat='server' Title='內容04' ShowTitle='False'
                            Style="z-index: 689; position: absolute; left: 91px; top: 586px;"
                            TxtInput_TabIndex='117' TextMode='MultiLine'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='textarea4'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='425px' Height='50px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='money04' runat='server' Title='金額04' ShowTitle='False'
                            Style="z-index: 666; position: absolute; left: 586px; top: 600px;"
                            TxtInput_TabIndex='118' TextAlign="Right">
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='money04'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='textarea5' runat='server' Title='內容05' ShowTitle='False'
                            Style="z-index: 688; position: absolute; left: 91px; top: 641px;"
                            TxtInput_TabIndex='119' TextMode='MultiLine'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='textarea5'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='425px' Height='40px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='money05' runat='server' Title='金額05' ShowTitle='False'
                            Style="z-index: 665; position: absolute; left: 586px; top: 650px;"
                            TxtInput_TabIndex='120' TextAlign="Right">
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='money05'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='mtotal' runat='server' Title='總金額' ShowTitle='False'
                            Style="z-index: 664; position: absolute; left: 586px; top: 688px;"
                            TxtInput_TabIndex='121' TextAlign="Right">
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='mtotal'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='107px' Height='25px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscCheckBox ID='chkatt01' runat='server' Text='發票' ShowTitle='False'
                            Style="z-index: 694; position: absolute; left: 89px; top: 721px;"
                            CheckBoxInput_TabIndex='122'
                            Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                            <InputStyle Width='27px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkatt01'></FrmFieldKeys>
                        </cc1:DscCheckBox>
                        <cc1:DscTextBox ID='inv01' runat='server' Title='發票張數' ShowTitle='False'
                            Style="z-index: 685; position: absolute; left: 153px; top: 717px;"
                            TxtInput_TabIndex='123'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='inv01'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='26px' Height='22px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscCheckBox ID='chkatt02' runat='server' Text='收據' ShowTitle='False'
                            Style="z-index: 681; position: absolute; left: 215px; top: 721px;"
                            CheckBoxInput_TabIndex='124'
                            Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                            <InputStyle Width='27px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkatt02'></FrmFieldKeys>
                        </cc1:DscCheckBox>
                        <cc1:DscTextBox ID='inv02' runat='server' Title='數據張數' ShowTitle='False'
                            Style="z-index: 680; position: absolute; left: 277px; top: 716px;"
                            TxtInput_TabIndex='125'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='inv02'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='30px' Height='22px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscCheckBox ID='chkatt03' runat='server' Text='訂購單' ShowTitle='False'
                            Style="z-index: 696; position: absolute; left: 89px; top: 755px;"
                            CheckBoxInput_TabIndex='126'
                            Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                            <InputStyle Width='26px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkatt03'></FrmFieldKeys>
                        </cc1:DscCheckBox>
                        <cc1:DscCheckBox ID='chkatt04' runat='server' Text='驗收單' ShowTitle='False'
                            Style="z-index: 695; position: absolute; left: 89px; top: 787px;"
                            CheckBoxInput_TabIndex='127'
                            Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                            <InputStyle Width='24px' Height='27px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkatt04'></FrmFieldKeys>
                        </cc1:DscCheckBox>
                        <cc1:DscCheckBox ID='chkatt05' runat='server' Text='進貨單' ShowTitle='False'
                            Style="z-index: 683; position: absolute; left: 169px; top: 786px;"
                            CheckBoxInput_TabIndex='128'
                            Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                            <InputStyle Width='26px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chkatt05'></FrmFieldKeys>
                        </cc1:DscCheckBox>
                        <cc1:DscTextBox ID='orderno' runat='server' Title='訂購單號' ShowTitle='False'
                            Style="z-index: 682; position: absolute; left: 196px; top: 749px;"
                            TxtInput_TabIndex='130'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='orderno'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='90px' Height='22px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID='attother' runat='server' Title='其他附件' ShowTitle='False'
                            Style="z-index: 686; position: absolute; left: 146px; top: 814px;"
                            TxtInput_TabIndex='131'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='attother'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='106px' Height='22px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscCheckBox ID='other' runat='server' Text='其他附件' ShowTitle='False'
                            Style="z-index: 687; position: absolute; left: 89px; top: 821px;"
                            CheckBoxInput_TabIndex='137'
                            Checked='False' CheckedTrueValue='1' CheckedFalseValue='0'>
                            <InputStyle Width='31px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='other'></FrmFieldKeys>
                        </cc1:DscCheckBox>
                        <cc1:DscTextBox ID='payother' runat='server' Title='其他支付' ShowTitle='False'
                            Style="z-index: 678; position: absolute; left: 372px; top: 261px;"
                            TxtInput_TabIndex='138'>
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='payother'></FrmFieldKeys>
                            <TitleStyle Width='100px'></TitleStyle>
                            <InputStyle Width='69px' Height='22px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <div style="display: none;">
                            <cc1:DscOpenQuery ID='empl1' runat='server' Title='empl1' ShowTitle='False'
                                Style="z-index: 700; position: absolute; left: 32px; top: 41px;"
                                TxtInput_TabIndex='139' TextMode='SingleLine'
                                BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
                                ReturnVisible='True'>
                                <InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
                                <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='empl1'></FrmFieldKeys>
                            </cc1:DscOpenQuery>
                        </div>
                        <div style="display: none;">
                            <cc1:DscOpenQuery ID='empl2' runat='server' Title='empl2' ShowTitle='False'
                                Style="z-index: 699; position: absolute; left: 33px; top: 8px;"
                                TxtInput_TabIndex='140' TextMode='SingleLine'
                                BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
                                ReturnVisible='True'>
                                <InputStyle Width='121px' Height='22px' CssClass='Edit20'></InputStyle>
                                <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='empl2'></FrmFieldKeys>
                            </cc1:DscOpenQuery>
                        </div>
                        <cc1:DscDateAssistant2 ID='paydate' runat='server' Title='付款日期' ShowTitle='False'
                            Style="position: absolute; left: 154px; top: 112px; z-index: 684;"
                            TxtInput_TabIndex='141'
                            DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/'
                            BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
                            <InputStyle Width='90px' Height='22px' CssClass='Edit20' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='paydate'></FrmFieldKeys>
                        </cc1:DscDateAssistant2>
                        <cc1:DscDropDownList ID='cur01' runat='server' Title='幣別01' ShowTitle='False'
                            Style="z-index: 676; position: absolute; left: 524px; top: 386px;"
                            DDLInput_TabIndex='142'>
                            <Items>
                                <asp:ListItem Selected='True' Value='VND'>VND</asp:ListItem>
                                <asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
                            </Items>
                            <TitleStyle Width='100px' />
                            <InputStyle Width='53px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='cur01'></FrmFieldKeys>
                            <CommentList F0001='Combo' F0002='ODMFPAYMVE01_cur01' />
                        </cc1:DscDropDownList>
                        <cc1:DscDropDownList ID='cur03' runat='server' Title='幣別03' ShowTitle='False'
                            Style="z-index: 674; position: absolute; left: 524px; top: 547px;"
                            DDLInput_TabIndex='142'>
                            <Items>
                                <asp:ListItem Selected='True' Value='VND'>VND</asp:ListItem>
                                <asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
                            </Items>
                            <TitleStyle Width='100px' />
                            <InputStyle Width='53px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='cur03'></FrmFieldKeys>
                            <CommentList F0001='Combo' F0002='ODMFPAYMVE01_cur03' />
                        </cc1:DscDropDownList>
                        <cc1:DscDropDownList ID='cur02' runat='server' Title='幣別02' ShowTitle='False'
                            Style="z-index: 675; position: absolute; left: 524px; top: 463px;"
                            DDLInput_TabIndex='143'>
                            <Items>
                                <asp:ListItem Selected='True' Value='VND'>VND</asp:ListItem>
                                <asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
                            </Items>
                            <TitleStyle Width='100px' />
                            <InputStyle Width='53px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='cur02'></FrmFieldKeys>
                            <CommentList F0001='Combo' F0002='ODMFPAYMVE01_cur02' />
                        </cc1:DscDropDownList>
                        <cc1:DscDropDownList ID='cur04' runat='server' Title='幣別04' ShowTitle='False'
                            Style="z-index: 673; position: absolute; left: 524px; top: 603px;"
                            DDLInput_TabIndex='143'>
                            <Items>
                                <asp:ListItem Selected='True' Value='VND'>VND</asp:ListItem>
                                <asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
                            </Items>
                            <TitleStyle Width='100px' />
                            <InputStyle Width='53px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='cur04'></FrmFieldKeys>
                            <CommentList F0001='Combo' F0002='ODMFPAYMVE01_cur04' />
                        </cc1:DscDropDownList>
                        <cc1:DscDropDownList ID='cur05' runat='server' Title='幣別05' ShowTitle='False'
                            Style="z-index: 672; position: absolute; left: 524px; top: 652px;"
                            DDLInput_TabIndex='143'>
                            <Items>
                                <asp:ListItem Selected='True' Value='VND'>VND</asp:ListItem>
                                <asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
                            </Items>
                            <TitleStyle Width='100px' />
                            <InputStyle Width='53px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='cur05'></FrmFieldKeys>
                            <CommentList F0001='Combo' F0002='ODMFPAYMVE01_cur05' />
                        </cc1:DscDropDownList>
                        <cc1:DscDropDownList ID='curr' runat='server' Title='幣別' ShowTitle='False'
                            Style="z-index: 671; position: absolute; left: 524px; top: 691px;"
                            DDLInput_TabIndex='143'>
                            <Items>
                                <asp:ListItem Selected='True' Value='VND'>VND</asp:ListItem>
                                <asp:ListItem Selected='False' Value='USD'>USD</asp:ListItem>
                            </Items>
                            <TitleStyle Width='100px' />
                            <InputStyle Width='53px' Height='22px' />
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='curr'></FrmFieldKeys>
                            <CommentList F0001='Combo' F0002='ODMFPAYMVE01_curr' />
                        </cc1:DscDropDownList>
                        <cc1:DscTextBox ID='chpay' runat='server' Title='現金 Tiền mặt' ShowTitle='False'
                            Style="display: none; z-index: 697; position: absolute; left: 97px; top: 265px;">
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='chpay'></FrmFieldKeys>
                        </cc1:DscTextBox>
                        <asp:RadioButton ID='chpay_ctrolRadio0' runat='server' GroupName='chpay' Text='' Value='0' Style='position: absolute; top: 265px; left: 97px; z-index: 697;' />
                        <asp:RadioButton ID='chpay_ctrolRadio1' runat='server' GroupName='chpay' Text='' Value='1' Style='position: absolute; top: 265px; left: 200px; z-index: 697;' />
                        <asp:RadioButton ID='chpay_ctrolRadio2' runat='server' GroupName='chpay' Text='' Value='2' Style='position: absolute; top: 265px; left: 316px; z-index: 697;' />
                        <cc1:DscTextBox ID='rdtc' runat='server' Title='一般費用 Chi phí thường' ShowTitle='False'
                            Style="display: none; z-index: 697; position: absolute; left: 97px; top: 202px;">
                            <FrmFieldKeys FrmID='FrmODMFPAYMVE01' BOID='ODMFPAYMVE01' FieldName='rdtc'></FrmFieldKeys>
                        </cc1:DscTextBox>
                        <asp:RadioButton ID='rdtc_ctrolRadio0' runat='server' GroupName='rdtc' Text='' Value='0' Style='position: absolute; top: 202px; left: 97px; z-index: 697;' />
                        <asp:RadioButton ID='rdtc_ctrolRadio1' runat='server' GroupName='rdtc' Text='' Value='1' Style='position: absolute; top: 200px; left: 227px; z-index: 697;' />
                        <asp:RadioButton ID='rdtc_ctrolRadio2' runat='server' GroupName='rdtc' Text='' Value='2' Style='position: absolute; top: 200px; left: 308px; z-index: 697;' />
                        <asp:RadioButton ID='rdtc_ctrolRadio3' runat='server' GroupName='rdtc' Text='' Value='3' Style='position: absolute; top: 200px; left: 404px; z-index: 697;' />
                        <asp:RadioButton ID='rdtc_ctrolRadio4' runat='server' GroupName='rdtc' Text='' Value='4' Style='position: absolute; top: 200px; left: 501px; z-index: 697;' />

                        <div style="position: absolute; left: 2px; top: 5px; z-index: 10;">
                            <img src="ODMFPAYMVE02.png" id="Head01_file_1" runat="server" width="736" height="891" />
                        </div>

                    </div>
                </cc1:DscPanel>



                <!--單身Grid畫面-->

                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px; top: 72px" runat="server" Width="100%">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent; left: 0px; top: 0px;"></div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px; top: 72px" runat="server">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent">
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
    <script src="ODMFPAYMVE01.js?NoCache=20220216" type="text/javascript"></script>
    <%--//^_^ 20230216 edit by 16386 tingwei 0000256084_38_0001↓--%>
    <script src="../../_Common/OEM/JS/OEMUtils.js" type="text/javascript"></script>
    <%--//^_^ 20230216 edit by 16386 tingwei 0000256084_38_0001↓--%>
</asp:Content>
