<%@ Page language="c#" CodeFile="ODMADDAPPLY01.aspx.cs" MasterPageFile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" AutoEventWireup="false" enableEventValidation="false" Inherits="tw.com.dsc.easyflowDotNet.forms.ODMADDAPPLY01" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>

<asp:Content ID="ODMADDAPPLY01FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
	<!--單檔架構 -->
	<!--2009/03/19:Joseph:<div id="cover" style="OVERFLOW: auto; WIDTH: 100%;">-->
		<div id="cover" style="WIDTH: 100%;">
			<div id="createRecord" style="WIDTH: 100%; HEIGHT: 100%" runat="server">
				<cc1:DscPanel id="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
					FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmODMADDAPPLY01" FrmDefineKeys-BOID="ODMADDAPPLY01"
					BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="538px">
					<!--單頭頁籤-->
					<iewc:TabStrip id="TabStrip1" runat="server" 
						TabDefaultStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);" 
						TabHoverStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);" 
						TabSelectedStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);" 
						CssClass="divToolBar2" >
						<iewc:Tab ID='headDefault' Text='單頭頁籤1' DefaultStyle='width:100px; height:27px;vertical-align:middle; text-align:center;'></iewc:Tab>
					</iewc:TabStrip>
					<!--單頭頁籤畫面集合-->

					<!--單頭頁籤 一-->
					<cc1:Dscpanel id='divheadDefault' style='DISPLAY: block' runat='server' Width='100%' Height='538px' BackColor='Transparent'>
						<div class='TabPage' style='POSITION: relative; HEIGHT: 538px; left: 0px; top: 0px;' >
							<asp:ValidationSummary id='ValidationSummaryHead01' style='Z-INDEX: 100; POSITION: absolute; LEFT: 745px; TOP: 7px;' runat='server' ShowSummary='False' ShowMessageBox='True'></asp:ValidationSummary>
							<!--此區間放入單頭頁籤 一 的各個dsc元件-->

<cc1:DscTextBox id='odmaddapply01001' runat='server' title='表單代號'
	style='display: none; Z-INDEX: 101; POSITION: absolute; LEFT: 245px; TOP: 16px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='odmaddapply01001'></FRMFIELDKEYS>
</cc1:DscTextBox>
<cc1:DscTextBox id='odmaddapply01002' runat='server' title='表單單號'
	style='display: none; Z-INDEX: 102; POSITION: absolute; LEFT: 245px; TOP: 49px;'
	TxtInput_TabIndex='0'>
	<INPUTSTYLE Width='120px'></INPUTSTYLE>
	<TITLESTYLE Width='110px'></TITLESTYLE>
	<FRMFIELDKEYS FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='odmaddapply01002'></FRMFIELDKEYS>
</cc1:DscTextBox>

<cc1:DscLabel ID='lblamount' runat='server' Style="z-index:661; position: absolute; left: 503px; top: 210px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='數量' Width='35px' Height='24px'></cc1:DscLabel>
<cc1:DscLabel ID='lblaplydate' runat='server' Style="z-index:643; position: absolute; left: 656px; top: 210px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='申請日期' Width='73px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblcomp' runat='server' Style="z-index:691; position: absolute; left: 57px; top: 128px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='公司別' Width='60px' Height='20px'></cc1:DscLabel>
<cc1:DscLabel ID='lblcomp01' runat='server' Style="z-index:681; position: absolute; left: 164px; top: 130px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='冠志' Width='40px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblcomp02' runat='server' Style="z-index:673; position: absolute; left: 254px; top: 130px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='MVE' Width='35px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblcomp03' runat='server' Style="z-index:669; position: absolute; left: 350px; top: 130px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='電子商務' Width='88px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lbldate' runat='server' Style="z-index:659; position: absolute; left: 524px; top: 94px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='申請日期：' Width='85px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lbldept' runat='server' Style="z-index:697; position: absolute; left: 45px; top: 93px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='申請部門：' Width='85px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblfirm' runat='server' Style="z-index:649; position: absolute; left: 602px; top: 210px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='廠商' Width='37px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblitem' runat='server' Style="z-index:692; position: absolute; left: 51px; top: 174px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='申請類別' Width='73px' Height='20px'></cc1:DscLabel>
<cc1:DscLabel ID='lblitem01' runat='server' Style="z-index:680; position: absolute; left: 164px; top: 173px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='設備' Width='40px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblitem02' runat='server' Style="z-index:674; position: absolute; left: 254px; top: 173px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='生產材料' Width='75px' Height='23px'></cc1:DscLabel>
<cc1:DscLabel ID='lblitem03' runat='server' Style="z-index:668; position: absolute; left: 350px; top: 173px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='模/治/刀具' Width='90px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblname' runat='server' Style="z-index:670; position: absolute; left: 311px; top: 93px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='申請人：' Width='70px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblno' runat='server' Style="z-index:699; position: absolute; left: 44px; top: 210px; vertical-align:middle;font-family:'微軟正黑體';font-size:10pt;" Text='No.' Width='20px' Height='20px'></cc1:DscLabel>
<cc1:DscLabel ID='lblother' runat='server' Style="z-index:666; position: absolute; left: 464px; top: 173px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='其他 -' Width='59px' Height='23px'></cc1:DscLabel>
<cc1:DscLabel ID='lblprice' runat='server' Style="z-index:654; position: absolute; left: 549px; top: 210px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='單價' Width='37px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lblreason' runat='server' Style="z-index:698; position: absolute; left: 44px; top: 426px; vertical-align:middle;font-family:'微軟正黑體';" Text='申請原因：' Width='70px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lbltitle01' runat='server' Style="z-index:686; position: absolute; left: 87px; top: 210px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='本廠編號' Width='70px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='lbltitle02' runat='server' Style="z-index:672; position: absolute; left: 281px; top: 211px; vertical-align:middle;font-family:'微軟正黑體';font-size:12pt;" Text='名 稱 規 格' Width='80px' Height='20px'></cc1:DscLabel>
<cc1:DscLabel ID='no01' runat='server' Style="z-index:696; position: absolute; left: 48px; top: 248px; vertical-align:middle;font-family:'微軟正黑體';font-size:10pt;" Text='1.' Width='15px' Height='25px'></cc1:DscLabel>
<cc1:DscLabel ID='no02' runat='server' Style="z-index:695; position: absolute; left: 48px; top: 292px; vertical-align:middle;font-family:'微軟正黑體';font-size:10pt;" Text='2.' Width='15px' Height='22px'></cc1:DscLabel>
<cc1:DscLabel ID='no03' runat='server' Style="z-index:694; position: absolute; left: 48px; top: 330px; vertical-align:middle;font-family:'微軟正黑體';font-size:10pt;" Text='3.' Width='15px' Height='25px'></cc1:DscLabel>
<cc1:DscLabel ID='no04' runat='server' Style="z-index:693; position: absolute; left: 48px; top: 375px; vertical-align:middle;font-family:'微軟正黑體';font-size:10pt;" Text='4.' Width='15px' Height='24px'></cc1:DscLabel>
<cc1:DscLabel ID='title' runat='server' Style="z-index:675; position: absolute; left: 188px; top: 17px; vertical-align:middle;font-family:'微軟正黑體';font-size:20pt;font-weight:bold;" Text='MSL冠志電子科技(深圳)有限公司' Width='400px' Height='27px'></cc1:DscLabel>
<cc1:DscLabel ID='title01' runat='server' Style="z-index:671; position: absolute; left: 304px; top: 52px; vertical-align:middle;font-family:'微軟正黑體';font-size:18pt;font-weight:bold;" Text='新   增   申   請   單' Width='160px' Height='22px'></cc1:DscLabel>
<cc1:DscDateAssistant2 ID='applydate' runat='server' Title='申請日期' ShowTitle='False'
	style="POSITION: absolute; left: 602px; top: 92px; z-index: 648;" 
	TxtInput_TabIndex='101' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='78px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='applydate'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<div style="display:none;">
<cc1:DscOpenQuery id='empl1' runat='server' title='申請人工號' ShowTitle='False'
	style="Z-INDEX: 700; POSITION: absolute; LEFT: 17px; TOP: 19px;"
	TxtInput_TabIndex='102' TextMode='SingleLine'
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/imgMan.gif'
	ReturnVisible='True'>
	<InputStyle Width='99px' Height='22px' CssClass='Edit20'></InputStyle>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='empl1'></FrmFieldKeys>
</cc1:DscOpenQuery>
</div>
<cc1:DscTextBox id='txtuser' runat='server' title='申請人' ShowTitle='False'
	style="Z-INDEX:667; POSITION: absolute; LEFT: 370px; TOP: 91px;"
	TxtInput_TabIndex='103'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtuser'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='102px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtdept' runat='server' title='申請部門' ShowTitle='False'
	style="Z-INDEX:684; POSITION: absolute; LEFT: 119px; TOP: 91px;"
	TxtInput_TabIndex='104'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtdept'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='115px' Height='20px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtno01' runat='server' title='本廠編號01' ShowTitle='False'
	style="Z-INDEX:687; POSITION: absolute; LEFT: 63px; TOP: 248px;"
	TxtInput_TabIndex='105'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtno01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtno02' runat='server' title='本廠編號02' ShowTitle='False'
	style="Z-INDEX:690; POSITION: absolute; LEFT: 62px; TOP: 292px;"
	TxtInput_TabIndex='106'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtno02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtno03' runat='server' title='本廠編號03' ShowTitle='False'
	style="Z-INDEX:689; POSITION: absolute; LEFT: 62px; TOP: 332px;"
	TxtInput_TabIndex='107'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtno03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtno04' runat='server' title='本廠編號04' ShowTitle='False'
	style="Z-INDEX:688; POSITION: absolute; LEFT: 62px; TOP: 377px;"
	TxtInput_TabIndex='108'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtno04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='110px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname01' runat='server' title='名稱規格01' ShowTitle='False'
	style="Z-INDEX:679; POSITION: absolute; LEFT: 177px; TOP: 240px;"
	TxtInput_TabIndex='109' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtname01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt01' runat='server' title='數量01' ShowTitle='False'
	style="Z-INDEX:665; POSITION: absolute; LEFT: 494px; TOP: 248px;"
	TxtInput_TabIndex='110'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtamt01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice01' runat='server' title='單價01' ShowTitle='False'
	style="Z-INDEX:655; POSITION: absolute; LEFT: 543px; TOP: 248px;"
	TxtInput_TabIndex='111'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtprice01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp01' runat='server' title='廠商01' ShowTitle='False'
	style="Z-INDEX:650; POSITION: absolute; LEFT: 592px; TOP: 248px;"
	TxtInput_TabIndex='112'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtcomp01'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime1' runat='server' Title='申請日期01' ShowTitle='False'
	style="POSITION: absolute; left: 649px; top: 248px; z-index: 647;" 
	TxtInput_TabIndex='114' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='datetime1'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtother' runat='server' title='其他類別' ShowTitle='False'
	style="Z-INDEX:660; POSITION: absolute; LEFT: 506px; TOP: 171px;"
	TxtInput_TabIndex='122'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtother'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='58px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname02' runat='server' title='名稱規格02' ShowTitle='False'
	style="Z-INDEX:678; POSITION: absolute; LEFT: 178px; TOP: 285px;"
	TxtInput_TabIndex='123' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtname02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname03' runat='server' title='名稱規格03' ShowTitle='False'
	style="Z-INDEX:677; POSITION: absolute; LEFT: 178px; TOP: 327px;"
	TxtInput_TabIndex='124' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtname03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtname04' runat='server' title='名稱規格04' ShowTitle='False'
	style="Z-INDEX:676; POSITION: absolute; LEFT: 178px; TOP: 369px;"
	TxtInput_TabIndex='125' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtname04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='310px' Height='35px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt02' runat='server' title='數量02' ShowTitle='False'
	style="Z-INDEX:664; POSITION: absolute; LEFT: 494px; TOP: 289px;"
	TxtInput_TabIndex='126'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtamt02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt03' runat='server' title='數量03' ShowTitle='False'
	style="Z-INDEX:663; POSITION: absolute; LEFT: 494px; TOP: 334px;"
	TxtInput_TabIndex='127'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtamt03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtamt04' runat='server' title='數量04' ShowTitle='False'
	style="Z-INDEX:662; POSITION: absolute; LEFT: 494px; TOP: 376px;"
	TxtInput_TabIndex='128'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtamt04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice02' runat='server' title='單價02' ShowTitle='False'
	style="Z-INDEX:658; POSITION: absolute; LEFT: 542px; TOP: 289px;"
	TxtInput_TabIndex='129'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtprice02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice03' runat='server' title='單價03' ShowTitle='False'
	style="Z-INDEX:657; POSITION: absolute; LEFT: 543px; TOP: 334px;"
	TxtInput_TabIndex='130'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtprice03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtprice04' runat='server' title='單價04' ShowTitle='False'
	style="Z-INDEX:656; POSITION: absolute; LEFT: 543px; TOP: 376px;"
	TxtInput_TabIndex='131'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtprice04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='40px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp02' runat='server' title='廠商02' ShowTitle='False'
	style="Z-INDEX:653; POSITION: absolute; LEFT: 591px; TOP: 289px;"
	TxtInput_TabIndex='132'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtcomp02'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp03' runat='server' title='廠商03' ShowTitle='False'
	style="Z-INDEX:652; POSITION: absolute; LEFT: 591px; TOP: 334px;"
	TxtInput_TabIndex='133'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtcomp03'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='txtcomp04' runat='server' title='廠商04' ShowTitle='False'
	style="Z-INDEX:651; POSITION: absolute; LEFT: 591px; TOP: 376px;"
	TxtInput_TabIndex='134'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtcomp04'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='50px' Height='22px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscDateAssistant2 ID='datetime2' runat='server' Title='datetime2' ShowTitle='False'
	style="POSITION: absolute; left: 649px; top: 289px; z-index: 646;" 
	TxtInput_TabIndex='135' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='datetime2'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='datetime3' runat='server' Title='datetime3' ShowTitle='False'
	style="POSITION: absolute; left: 649px; top: 334px; z-index: 645;" 
	TxtInput_TabIndex='136' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='datetime3'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscDateAssistant2 ID='datetime4' runat='server' Title='datetime4' ShowTitle='False'
	style="POSITION: absolute; left: 649px; top: 376px; z-index: 644;" 
	TxtInput_TabIndex='137' 
	DisplayMode='yyyyMMdd' DateSaveFormat='String' DateLan='ChristianEra' datePagePath='../../_Common/PlatformUtil/Resource/ASP/' 
	BtnVisible='True' ImgSrc='../../_Common/AppUtil/Themes/images/Program/calender.gif'>
	<InputStyle Width='73px' Height='22px' CssClass='Edit20' />
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='datetime4'></FrmFieldKeys>
</cc1:DscDateAssistant2>
<cc1:DscTextBox id='txtresaon' runat='server' title='textarea1' ShowTitle='False'
	style="Z-INDEX:685; POSITION: absolute; LEFT: 113px; TOP: 415px;"
	TxtInput_TabIndex='138' TextMode='MultiLine'>
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='txtresaon'></FrmFieldKeys>
	<TitleStyle Width='100px'></TitleStyle>
	<InputStyle Width='592px' Height='50px' CssClass='Edit20'></InputStyle>
</cc1:DscTextBox>
<cc1:DscTextBox id='rditem' runat='server' title='equip' ShowTitle='False'
	style="display:none;Z-INDEX:685; POSITION: absolute; LEFT: 142px; TOP: 175px;">
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='rditem'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rditem_ctrolRadio0' runat='server' GroupName='rditem' Text='' Value='0' style='position:absolute;top:175px;left:142px;z-index:685;'/>
<asp:RadioButton ID='rditem_ctrolRadio1' runat='server' GroupName='rditem' Text='' Value='1' style='position:absolute;top:175px;left:232px;z-index:685;'/>
<asp:RadioButton ID='rditem_ctrolRadio2' runat='server' GroupName='rditem' Text='' Value='2' style='position:absolute;top:175px;left:329px;z-index:685;'/>
<asp:RadioButton ID='rditem_ctrolRadio3' runat='server' GroupName='rditem' Text='' Value='3' style='position:absolute;top:175px;left:444px;z-index:685;'/>
<cc1:DscTextBox id='rdmsl' runat='server' title='mslcn' ShowTitle='False'
	style="display:none;Z-INDEX:685; POSITION: absolute; LEFT: 142px; TOP: 130px;">
	<FrmFieldKeys FrmID='FrmODMADDAPPLY01' BOID='ODMADDAPPLY01' FieldName='rdmsl'></FrmFieldKeys>
</cc1:DscTextBox>
<asp:RadioButton ID='rdmsl_ctrolRadio0' runat='server' GroupName='rdmsl' Text='' Value='0' style='position:absolute;top:130px;left:142px;z-index:685;'/>
<asp:RadioButton ID='rdmsl_ctrolRadio1' runat='server' GroupName='rdmsl' Text='' Value='1' style='position:absolute;top:129px;left:232px;z-index:685;'/>
<asp:RadioButton ID='rdmsl_ctrolRadio2' runat='server' GroupName='rdmsl' Text='' Value='2' style='position:absolute;top:130px;left:329px;z-index:685;'/>

<div style="position:absolute; left:2px; top:5px; z-index:10; ">
	<img src="table.jpg" id="Head01_file_1" runat="server" width="779" height="503" />
</div>

						</div>
					</cc1:Dscpanel>


					
					<!--單身Grid畫面-->
					
					<cc1:DscPanel id="hdnDisplayInCS" style="DISPLAY: none; Z-INDEX: 116; LEFT: 264px; TOP: 72px" runat="server" Width="100%">
						<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%; BACKGROUND-COLOR: transparent; left: 0px; top: 0px;" ></div>
					</cc1:DscPanel>
					<cc1:DscPanel id="hdnDisplayInHTML" style="DISPLAY: none; Z-INDEX: 116; LEFT: 264px; TOP: 72px" runat="server">
						<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%; BACKGROUND-COLOR: transparent" >
						</div>
					</cc1:DscPanel>
				</cc1:DscPanel>
				<!--2012/12/25:3.5.1.38:hiro:S00-20121031003:3.修正多選開窗onChange事件。↓-->
				<asp:HiddenField ID='hdnOpenQueryPreSetValue' runat='server' Value='' />
				<!--2012/12/25:3.5.1.38:hiro:S00-20121031003:3.修正多選開窗onChange事件。↑-->
				<!--2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↓-->
				<cc1:DscPanel id="hdnDisplayInHTML2" style="DISPLAY: none; Z-INDEX: 116; LEFT: 264px; TOP: 72px" runat="server">
					<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%; BACKGROUND-COLOR: transparent">
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
<script src="ODMADDAPPLY01.js?NoCache=202108311455" type="text/javascript"></script>
</asp:Content>
