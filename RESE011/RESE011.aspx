<%@ page language="c#" validaterequest="false" masterpagefile="~/src/_Common/AppUtil/EFMasterPage/EFBaseMasterPage.master" autoeventwireup="false" enableeventvalidation="false" inherits="tw.com.dsc.easyflowDotNet.forms.RESE011, src.FRM.RESE011" %>
<%@ Register TagPrefix="cc1" Namespace="tw.com.dsc.dscDotNet.dscWebControls" Assembly="PlatformUtil" %>
<%@ Register TagPrefix="iewc" Namespace="Microsoft.Web.UI.WebControls" Assembly="Microsoft.Web.UI.WebControls" %>
<%@ Register TagPrefix="uc1" TagName="gridUserControl" Src="../../_Common/PlatformUtil/KernelPage/Grid/gridUserControl.ascx" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<asp:Content ID="RESE011FormContent" ContentPlaceHolderID="MasterPageContent" runat="server">
    <!--單檔架構 -->
    <script src="RESE011.js?v=20200926001" type="text/javascript"></script>
    <!--2021/03/10:6.1.16.1:俊詠：S00-20210302004:因FLASH不支援造成圖片無法插入，重新改寫方式。↓-->
	<%--<script src="../../_Common/JS/ueditor-1.2.6.0/ueditor.all.js?v=20201104001"></script>
	<script src="../../_Common/JS/ueditor-1.2.6.0/ueditor.config.js?v=20201104001"></script>--%>
    <script src="../../_Common/JS/ueditor-1.4.2/ueditor.config.js?v=20201104001"></script>
    <script src="../../_Common/JS/ueditor-1.4.2/ueditor.all.js?v=20201104001"></script>	
    <!--2021/03/10:6.1.16.1:俊詠：S00-20210302004:因FLASH不支援造成圖片無法插入，重新改寫方式。↑-->
    <script type="text/javascript" language="javascript">
        //setModifyValueToHtmlEditor();
        var isFinished;
        function bodyLoad()
        {
            <asp:literal id="LiteralMsg" runat="server"></asp:literal>;
			<asp:literal id="LiteralHideCoverDiv" runat="server"></asp:literal>;
            isFinished = true;
            setHtmlEditorDefaultValue();
            setModifyValueToHtmlEditor();
            var xobject = document.getElementById('MasterPage_MasterPageContent_HiddenDesignMode');
            if(xobject.value == "CREATE")
            {
                //document.getElementById('MasterPage_MasterPageContent_TD1').style.display = '';
                //document.getElementById('MasterPage_MasterPageContent_TD2').style.display = '';
                //doc.designMode = "on";
            }

			//2020/11/04;6.1.6.10;hiro;C01-20201103003,A00-20201104001;公佈欄表單、管理程式引用ueditor統一；因應chrome不支援flash插入圖片功能，表單、管理程式新樣式下，統一為IE顯示插入圖片功能，Chrome隱藏插入圖片功能↓
            //2020/11/09:俊詠:6.1.6.11:C01-20201103003,A00-20201104001:改成不管瀏覽器，把插入圖片功能全部隱藏。↓
            //如果客戶要上傳圖片建議他們使用附件上傳就好。
            if (document.getElementById('edui68_body') != null) {
                document.getElementById('edui68_body').style.display = "none";
            }
            //2020/11/09:俊詠:6.1.6.11:C01-20201103003,A00-20201104001:改成不管瀏覽器，把插入圖片功能全部隱藏。↑
			//2020/11/04;6.1.6.10;hiro;C01-20201103003,A00-20201104001;公佈欄表單、管理程式引用ueditor統一；因應chrome不支援flash插入圖片功能，表單、管理程式新樣式下，統一為IE顯示插入圖片功能，Chrome隱藏插入圖片功能↑            
        }
        //2021/03/10:6.1.16.1:俊詠：S00-20210302004:因FLASH不支援造成圖片無法插入，重新改寫方式。↓
        function resetTop() {
            if (gIsIEBrowser !== true) {
                //每次畫面大小改變時要把ToolBar推回到最上面，不這樣做的話ToolBar會卡在奇怪的位子(測試結果是引用完142的UEditor後浮動ToolBar就失效了)
                document.getElementById('ToolBar').style.top = "0px";
            }            
        }
        window.onresize = resetTop;
        //2021/03/10:6.1.16.1:俊詠：S00-20210302004:因FLASH不支援造成圖片無法插入，重新改寫方式。↑
  </script>
    <div id="cover" style="width: 100%;">
        <div id="createRecord" style="width: 100%; height: 100%" runat="server">
            <cc1:DscPanel ID="ecPnlMaster" runat="server" Width="98%" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                FrmDefineKeys-FrmType="Query" FrmDefineKeys-FrmID="FrmRESE011" FrmDefineKeys-BOID="RESE011"
                BorderStyle="None" BorderColor="Transparent" BorderWidth="0px" Height="195px">
                <!--單頭頁籤-->
                <iewc:TabStrip ID="TabStrip1" runat="server" TabDefaultStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabHoverStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabSelectedStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);"
                    CssClass="divToolBar2">
                    <iewc:Tab Text="RESE011" DefaultStyle="width:100px; height:27px;vertical-align:middle; text-align:center;"
                        ID="Tab1"></iewc:Tab>
                </iewc:TabStrip>
                <!--單頭頁籤畫面集合-->
                <!--預設放入一個DIV-->
                <cc1:DscPanel ID="divheadDefault" Style="display: block" runat="server" Width="100%"
                    Height="195px" BackColor="Transparent">
                    <div class="" style="position: relative; height: 195px; left: 0px; top: 0px;">
                        <asp:ValidationSummary ID="ValidationSummary1" Style="z-index: 100; left: 745px;
                            position: absolute; top: 7px" runat="server" ShowSummary="False" ShowMessageBox="True">
                        </asp:ValidationSummary>
                        <!--此區間放入各種dsc元件-->
                        <asp:HiddenField ID="hidIsRefreshId" runat="server" />
                        <cc1:DscTextBox ID="resho001" Title="DscTextBox:" Style="display: none; z-index: 101;
                            left: 245px; position: absolute; top: 16px" runat="server"
                            TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho001"></FrmFieldKeys>
                        </cc1:DscTextBox>
                        <cc1:DscTextBox ID="resho002" Title="DscTextBox:" Style="display: none; z-index: 102;
                            left: 245px; position: absolute; top: 49px" runat="server"
                            TxtInput_TabIndex="0">
                            <InputStyle Width="120px"></InputStyle>
                            <TitleStyle Width="110px"></TitleStyle>
                            <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho002"></FrmFieldKeys>
                        </cc1:DscTextBox>
                        <input type="hidden" runat="server" id="hidEditSetHtml" />
                        <table class="tab">
                            <tr>
                                <td class="title" colspan="4">
                                    <cc1:DscLabel ID="DscLabel3" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="lblTitle" />
                                    </cc1:DscLabel>
                                </td>
                            </tr>
                            <tr>
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel1" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho003" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="right" colspan="3">
                                    <div style="float: left">
                                        <cc1:DscOpenQuery ID="resho003" Title="类别代号" runat="server" TxtInput_TabIndex="101"
                                            ReturnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif"
                                            RetuenVisible="True" BtnVisible="True" ShowTitle="False">
                                            <InputStyle Width="120px" Height="20px" CssClass="Edit20"></InputStyle>
                                            <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho003"></FrmFieldKeys>
                                        </cc1:DscOpenQuery>
                                    </div>
                                    <div style="float: left">
                                        <cc1:DscTextBox ID="resho004" Title="类别名称" runat="server" ShowTitle="False"
                                            TitleWidth="120px" TxtInput_TabIndex="102">
                                            <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho004"></FrmFieldKeys>
                                            <InputStyle Width="120px" Height="20px" CssClass="Edit20"></InputStyle>
                                        </cc1:DscTextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel2" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho005" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="right">
                                    <cc1:DscDropDownList ID="resho005" runat="server" Style="z-index: 696;" Title="测试单选列表1"
                                        DDLInput_TabIndex="102" ShowTitle="false">
                                        <Items>
                                            <asp:ListItem Value="HEADLINE" Selected="True">1-头条信息</asp:ListItem>
                                            <asp:ListItem Value="NEWSITEM">2-重点信息</asp:ListItem>
                                        </Items>
                                        <InputStyle Height="20px" Width="118px" />
                                        <TitleStyle Width="100px" />
                                        <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho005"></FrmFieldKeys>
                                        <CommentList F0001="Combo" F0002="BOARD001_eshna003" />
                                    </cc1:DscDropDownList>
                                </td>
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel14" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho015" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="right">
                                    <img id="btnCreateToolAttachment" runat="server" alt="附件" src="../../_Common/AppUtil/Themes/images/Form/efAttachment.gif"
                                        style="cursor: pointer;" height="32" width="32" />
                                    <asp:Label Style="cursor: point;" ID="txtDisplayToolAttachment" runat="server" Width="8px"
                                        ForeColor="Red" Font-Bold="True" BorderStyle="None">0</asp:Label>
                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel4" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho006" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="right" colspan="3">
                                    <cc1:DscTextBox ID="resho006" Title="DscTextBox:" Style="z-index: 102;" runat="server"
                                        TxtInput_TabIndex="0" ShowTitle="false">
                                        <InputStyle Width="500px" CssClass="Edit20"></InputStyle>
                                        <TitleStyle Width="110px"></TitleStyle>
                                        <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho006"></FrmFieldKeys>
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel9" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho007" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="right" colspan="3">
                                    <cc1:DscTextBox ID="resho007" Title="DscTextBox:" Style="z-index: 102;" runat="server"
                                        TxtInput_TabIndex="0"
                                        ShowTitle="false">
                                        <InputStyle Width="500px" CssClass="Edit20"></InputStyle>
                                        <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho007"></FrmFieldKeys>
                                    </cc1:DscTextBox>
                                </td>
                            </tr>
                            <%--//2019/12/13;6.1.6.7;puruni:V00-20191213002:RESE011 公佈欄新增新版文字編輯區 Start--%>
                            <tr id="oldEditor">
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel10" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho008" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="right" colspan="3">
                                    <table id="Table1" border="1" cellpadding="1" cellspacing="1" style="font-size: 9pt;
                                        z-index: 100; left: 45px;" width="600">
                                        <tr>
                                            <td id="TD1" runat="server" align="left" style="height: 39px; background-color: #dbdbdb;">
                                                <table cellpadding="0">
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <img src="../../_Common/AppUtil/Themes/Images/Board/editor_h.gif" />
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doCut();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_1 %>"
                                                                    id="divHtmlEditorCut">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f03.gif" id="IMG2" runat="server" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" id="divDoCopy" onclick="doCopy();" onmousedown="BtnClick(this);"
                                                                    onmouseout="BtnOut(this);" onmouseover="BtnOver(this);" onmouseup="BtnOver(this);"
                                                                    title="<%=HtmlEditorTitle_2 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f04.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" id="divDoPaste" onclick="doPaste();" onmousedown="BtnClick(this);"
                                                                    onmouseout="BtnOut(this);" onmouseover="BtnOver(this);" onmouseup="BtnOver(this);"
                                                                    title="<%=HtmlEditorTitle_3 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f05.gif" id="IMG3" runat="server" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doDelete();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_4 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f06.gif" id="IMG4" runat="server" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doUndo();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_5 %>">
                                                                    <font face="新細明體"></font>&nbsp;
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doRedo();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_6 %>">
                                                                    &nbsp;
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <img src="../../_Common/AppUtil/Themes/Images/Board/editor_h.gif" />
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doJustifyLeft();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_7 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f16.gif" id="IMG5" runat="server" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doJustifyCenter();" onmousedown="BtnClick(this);"
                                                                    onmouseout="BtnOut(this);" onmouseover="BtnOver(this);" onmouseup="BtnOver(this);"
                                                                    title="<%=HtmlEditorTitle_8 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f17.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doJustifyRight();" onmousedown="BtnClick(this);"
                                                                    onmouseout="BtnOut(this);" onmouseover="BtnOver(this);" onmouseup="BtnOver(this);"
                                                                    title="<%=HtmlEditorTitle_9 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f18.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <img src="../../_Common/AppUtil/Themes/Images/Board/editor_s.gif" />
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doIndent();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_10 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f19.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doOutdent();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_11 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f20.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <img src="../../_Common/AppUtil/Themes/Images/Board/editor_s.gif" />
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doInsertOrderedList();" onmousedown="BtnClick(this);"
                                                                    onmouseout="BtnOut(this);" onmouseover="BtnOver(this);" onmouseup="BtnOver(this);"
                                                                    title="<%=HtmlEditorTitle_12 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f21.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doInsertUnorderedList();" onmousedown="BtnClick(this);"
                                                                    onmouseout="BtnOut(this);" onmouseover="BtnOver(this);" onmouseup="BtnOver(this);"
                                                                    title="<%=HtmlEditorTitle_13 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f22.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <img src="../../_Common/AppUtil/Themes/Images/Board/editor_s.gif" />
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doInsertHorizontalRule();" onmousedown="BtnClick(this);"
                                                                    onmouseout="BtnOut(this);" onmouseover="BtnOver(this);" onmouseup="BtnOver(this);"
                                                                    title="<%=HtmlEditorTitle_14 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f23.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div id="divInsertTable" class="divHeader" onclick="doInsertTable();" onmousedown="BtnClick(this);"
                                                                    onmouseout="BtnOut(this);" onmouseover="BtnOver(this);" onmouseup="BtnOver(this);"
                                                                    title="<%=HtmlEditorTitle_15 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f24.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div id="divCreateLink" class="divHeader" onclick="doCreateLink();" onmousedown="BtnClick(this);"
                                                                    onmouseout="BtnOut(this);" onmouseover="BtnOver(this);" onmouseup="BtnOver(this);"
                                                                    title="<%=HtmlEditorTitle_16 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f25.gif" />
                                                                </div>
                                                            </td>
                                                            <td style="width: 20px">
                                                                <div id="editorInsertImg" onclick="doInsertImage();" runat="server" class="divHeader"
                                                                    onmousedown="BtnClick(this);" onmouseout="BtnOut(this);" onmouseover="BtnOver(this);"
                                                                    onmouseup="BtnOver(this);">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f26.gif" />
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td id="TD2" runat="server" align="left" style="background-color: #dbdbdb; height: 43px;">
                                                <table cellpadding="0">
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <img src="../../_Common/AppUtil/Themes/Images/Board/editor_h.gif" />
                                                            </td>
                                                            <td>
                                                                <select tabindex="8" id="FontName" runat="server" onchange="doFontName(this[this.selectedIndex].value);">
                                                                    <option selected="selected" value="">字型</option>
                                                                    <option value="細明體">細明體</option>
                                                                    <option value="新細明體">新細明體</option>
                                                                    <option value="標楷體">標楷體</option>
                                                                    <option value="Albertus Extra Bold">Albertus Extra Bold</option>
                                                                    <option value="Albertus Medium">Albertus Medium</option>
                                                                    <option value="Antique Olive">Antique Olive</option>
                                                                    <option value="Arial">Arial</option>
                                                                    <option value="Arial Black">Arial Black</option>
                                                                    <option value="Arial Narrow">Arial Narrow</option>
                                                                    <option value="Bookman Old Style">Bookman Old Style</option>
                                                                    <option value="Impact">Impact</option>
                                                                    <option value="Lucida Console">Lucida Console</option>
                                                                    <option value="Marigold">Marigold</option>
                                                                    <option value="Monotype Sorts">Monotype Sorts</option>
                                                                    <option value="MS Outlook">MS Outlook</option>
                                                                    <option value="Symbol">Symbol</option>
                                                                    <option value="Tahoma">Tahoma</option>
                                                                </select>
                                                            </td>
                                                            <td>
                                                                <select id="FontSize" tabindex="8" runat="server" onchange="doFontSize(this[this.selectedIndex].value);">
                                                                    <option selected="selected" value="">大小</option>
                                                                    <option value="1">1</option>
                                                                    <option value="2">2</option>
                                                                    <option value="3">3(Default)</option>
                                                                    <option value="4">4</option>
                                                                    <option value="5">5</option>
                                                                    <option value="6">6</option>
                                                                    <option value="7">7</option>
                                                                </select>
                                                            </td>
                                                            <td>
                                                                <img src="../../_Common/AppUtil/Themes/Images/Board/editor_s.gif" />
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doBold();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_21 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f08_eng.gif" id="IMG1" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doItalic();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_22 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f09_eng.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doUnderline();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_23 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f10_eng.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doStrikeThrough();" onmousedown="BtnClick(this);"
                                                                    onmouseout="BtnOut(this);" onmouseover="BtnOver(this);" onmouseup="BtnOver(this);"
                                                                    title="<%=HtmlEditorTitle_24 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f11_eng.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <img src="../../_Common/AppUtil/Themes/Images/Board/editor_s.gif" />
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doSuperscript();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_25 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f12.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doSubscript();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_26 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f13.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <img src="../../_Common/AppUtil/Themes/Images/Board/editor_s.gif" />
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doForeColor();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_27 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f14.gif" />
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="divHeader" onclick="doBackColor();" onmousedown="BtnClick(this);" onmouseout="BtnOut(this);"
                                                                    onmouseover="BtnOver(this);" onmouseup="BtnOver(this);" title="<%=HtmlEditorTitle_28 %>">
                                                                    <img src="../../_Common/AppUtil/Themes/Images/Board/editor_f15.gif" />
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <iframe id="Editor" class="doPlace" marginwidth="0" scrolling="yes" style="width: 100%;
                                                    height: 265px" tabindex="1"></iframe>
                                                <script type="text/javascript">
                                                    var doc;
                                                    if (gIsIEBrowser) {
                                                        doc = document.frames.Editor.document;
                                                    }
                                                    else {
                                                        doc = document.getElementById('Editor').contentDocument;
                                                    }
                                                    document.getElementById('MasterPage_MasterPageContent_TD1').style.display = 'none';
                                                    document.getElementById('MasterPage_MasterPageContent_TD2').style.display = 'none';
                                                </script>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="newEditor">
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel15" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho008" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="right" colspan="3">
                                    <textarea name="后台取值的key" id="myEditor"></textarea>
                                    <script type="text/javascript">
                                        //2021/03/10:6.1.16.1:俊詠：S00-20210302004:因FLASH不支援造成圖片無法插入，重新改寫方式。↓
                                        addCustomDialog();
                                        //2021/03/10:6.1.16.1:俊詠：S00-20210302004:因FLASH不支援造成圖片無法插入，重新改寫方式。↑
                                        //2021/07/26:6.1.16.2:俊詠：C01-20210722004:RESE011 公佈欄信息發布申請單& 公佈欄內容維護作業(BOARD001) 使用外網網域開起速度慢。↓
                                        var tLang=tw.com.dsc.easyflowDotNet.forms.RESE011.ajaxGetLang().value
                                        //2021/07/26:6.1.16.2:俊詠：C01-20210722004:RESE011 公佈欄信息發布申請單& 公佈欄內容維護作業(BOARD001) 使用外網網域開起速度慢。↑
                                        UE.getEditor('myEditor', {
                                            //focus时自动清空初始化时的内容
                                            //autoClearinitialContent: true,
                                            //关闭字数统计
                                            wordCount: true,
                                            autoFloatEnabled:false,//關閉浮動(不然ToolBar在捲到最下面時會跑到一個很奇怪的位子)
                                            //关闭elementPath
                                            elementPathEnabled: false,
                                            //默认的编辑区域高度
                                            initialFrameHeight: 400,
                                            initialFrameWidth: 900,
                                            //2021/07/26:6.1.16.2:俊詠：C01-20210722004:RESE011 公佈欄信息發布申請單& 公佈欄內容維護作業(BOARD001) 使用外網網域開起速度慢。↓
                                            lang: tLang
                                            //2021/07/26:6.1.16.2:俊詠：C01-20210722004:RESE011 公佈欄信息發布申請單& 公佈欄內容維護作業(BOARD001) 使用外網網域開起速度慢。↑
                                            //更多其他参数，请参考ueditor.config.js中的配置项
                                        })
                                    </script>
                                </td>
                            </tr>
                            <%--//2019/12/13;6.1.6.7;puruni:V00-20191213002:RESE011 公佈欄新增新版文字編輯區 End--%>
                            <tr>
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel8" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho009" />
                                    </cc1:DscLabel>
                                </td>
                                <%--2020/09/30:宗達:6.1.6.10:S00-20200407002:發布時間增加HH:MM;需搭配SQL修改以前的資料 START--%>
                                <td class="right">
                                    <cc1:DscDateAssistant2 ID="resho009" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="开始日期" ShowTitle="False" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                        DisplayMode="yyyyMMddHHmm" TimeField=""
                                        TxtInput_TabIndex="105" DateSaveFormat="String">
                                        <InputStyle Width="120px" Height="20px" CssClass="Edit20" />
                                        <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho009"></FrmFieldKeys>
                                    </cc1:DscDateAssistant2>
                                </td>
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel7" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho010" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="right">
                                    <cc1:DscDateAssistant2 ID="resho010" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="开始时间" ShowTitle="False" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                        DisplayMode="yyyyMMddHHmm" TimeField=""
                                        TxtInput_TabIndex="105" DateSaveFormat="String">
                                        <InputStyle Width="120px" Height="20px" CssClass="Edit20" />
                                        <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho010"></FrmFieldKeys>
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                             <%--2020/09/30:宗達:6.1.6.10:S00-20200407002:發布時間增加HH:MM;需搭配SQL修改以前的資料 END--%>
                            <tr>
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel5" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho011" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="right">
                                    <cc1:DscOpenQuery ID="resho011" Title="类别代号" runat="server" TxtInput_TabIndex="101"
                                        ReturnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/imgMan.gif"
                                        RetuenVisible="True" BtnVisible="True" ShowTitle="False">
                                        <InputStyle Width="120px" Height="20px" CssClass="Edit20"></InputStyle>
                                        <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho011"></FrmFieldKeys>
                                    </cc1:DscOpenQuery>
                                </td>
                                <td class="left">
                                    <cc1:DscLabel ID="DscLabel6" runat="server">
                                        <Comment F0001="FD" F0002="RESE011" F0003="resho012" />
                                    </cc1:DscLabel>
                                </td>
                                <td class="right">
                                    <cc1:DscDateAssistant2 ID="resho012" runat="server" BtnVisible="True" ImgSrc="../../_Common/AppUtil/Themes/images/Program/calender.gif"
                                        Title="结束时间" ShowTitle="False" DateLan="ChristianEra" datePagePath="../../_Common/PlatformUtil/Resource/ASP/"
                                        DisplayMode="yyyyMMdd" TimeField=""
                                        TxtInput_TabIndex="105" DateSaveFormat="String">
                                        <InputStyle Width="120px" Height="20px" CssClass="Edit20" />
                                        <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho012"></FrmFieldKeys>
                                    </cc1:DscDateAssistant2>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <asp:HiddenField ID="hiddenHtmlEditor" runat="server" />
                    <asp:HiddenField ID="HiddenDesignMode" runat="server" />
                    <input id="hiddenGUID" runat="server" name="hiddenGUID" size="1" style="z-index: 121;
                        left: 528px; width: 8px; position: absolute; top: 840px; height: 19px" type="hidden" />
                </cc1:DscPanel>
                <!--有單身才放-->
                <table>
                    <tr>
                        <td height="5">
                        </td>
                    </tr>
                </table>
                <!--單身頁籤起始-->
                <iewc:TabStrip ID="Tabstrip2" runat="server" TabDefaultStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabHoverStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn01.gif);"
                    TabSelectedStyle="background-image:url(../../_Common/AppUtil/Themes/images/Menu/Tbtn02.gif);"
                    CssClass="divToolBar2">
                    <iewc:Tab Text="詳細資料" DefaultStyle="width:100px; height:27px;vertical-align:middle; text-align:center;"
                        ID="bodyDefault"></iewc:Tab>
                </iewc:TabStrip>
                <!--單身Grid-->
                <!--此區間放入數個單身Grid-->
                <div class="TabPage" id="divbodyDefault" style="display: block; overflow: hidden;
                    width: 100%; background-repeat: repeat;" runat="server">
                    <cc1:DscPanel ID="ecPnlDetail1" runat="server" FrmDefineKeys-BOID="RESE011_d01" FrmDefineKeys-FrmID="FrmRESE011_d01"
                        FrmDefineKeys-FrmType="Query" BorderStyle="None" BorderColor="Transparent" BorderWidth="0px"
                        IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 100%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                        Width="100%" Height="0px">
                        <cc1:DscPanel ID="divDetail1Default" runat="server" Width="100%" Height="172px" BorderStyle="None"
                            BorderColor="Transparent" BorderWidth="0px" IniHTML='&#10;<div style="OVERFLOW: auto; WIDTH: 98%; POSITION: relative; HEIGHT: 100%" ms_positioning="GridLayout"></div>'
                            FrmDefineKeys-BOID="RESE011_d01" FrmDefineKeys-FrmID="FrmRESE011_d01" FrmDefineKeys-FrmType="Query">
                            <cc1:DscTextBox ID="reshp001" Title="DscTextBox:" Style="display: none; z-index: 101;
                                left: 245px; position: absolute; top: 16px" runat="server"
                                TxtInput_TabIndex="0">
                                <InputStyle Width="120px"></InputStyle>
                                <TitleStyle Width="110px"></TitleStyle>
                                <FrmFieldKeys FrmID="FrmRESE011_d01" BOID="RESE011_d01" FieldName="reshp001"></FrmFieldKeys>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox ID="reshp002" Title="DscTextBox:" Style="display: none; z-index: 102;
                                left: 245px; position: absolute; top: 49px" runat="server"
                                TxtInput_TabIndex="0">
                                <InputStyle Width="120px"></InputStyle>
                                <TitleStyle Width="110px"></TitleStyle>
                                <FrmFieldKeys FrmID="FrmRESE011_d01" BOID="RESE011_d01" FieldName="reshp002"></FrmFieldKeys>
                            </cc1:DscTextBox>
                            <cc1:DscTextBox ID="reshp003" Title="序號" Style="display: none; z-index: 699; left: 34px;
                                position: absolute; top: 15px" runat="server" Cellpanding="0"
                                cellpadding="0"
                                TxtInput_TabIndex="0">
                                <InputStyle Width="120px" CssClass="Edit20"></InputStyle>
                                <TitleStyle Width="100px"></TitleStyle>
                                <FrmFieldKeys FrmID="FrmRESE011_d01" BOID="RESE011_d01" FieldName="reshp003"></FrmFieldKeys>
                            </cc1:DscTextBox>
                            <table class="tab">
                                <tr>
                                    <td class="left">
                                        <cc1:DscLabel ID="DscLabel11" runat="server">
                                            <Comment F0001="FD" F0002="RESE011_d01" F0003="reshp004" />
                                        </cc1:DscLabel>
                                    </td>
                                    <td class="right" style="width: 80%">
                                        <cc1:DscDropDownList ID="reshp004" runat="server" AddAttributes="" AutoPostBack="False"
                                            DDLInput_TabIndex="12"
                                            ShowTitle="false" SelectedIndex="0" Style="z-index: 109;" Title="權限來源代號"
                                            TitleWidth="120px">
                                            <Items>
                                                <asp:ListItem Selected="True" Value="0">0-所有人</asp:ListItem>
                                                <asp:ListItem Value="1">1-部門</asp:ListItem>
                                                <asp:ListItem Value="2">2-專案</asp:ListItem>
                                                <asp:ListItem Value="3">3-標準群組</asp:ListItem>
                                            </Items>
                                            <InputStyle Width="120px" />
                                            <TitleStyle Width="160px" />
                                            <FrmFieldKeys FrmID="FrmRESE011_d01" BOID="RESE011_d01" FieldName="reshp004"></FrmFieldKeys>
                                            <CommentList F0001="Combo" F0002="BOARD001_eshnc005" />
                                        </cc1:DscDropDownList>
                                        <!--2015/02/12;3.6.3.3;hiro;A00-20150211001;修正簽核時單身權限屬性被清空無法辨認↓-->
                                        <asp:HiddenField ID="hdnFormStatus" runat="server" />
                                        <!--2015/02/12;3.6.3.3;hiro;A00-20150211001;修正簽核時單身權限屬性被清空無法辨認↑-->
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left">
                                        <cc1:DscLabel ID="DscLabel12" runat="server">
                                            <Comment F0001="FD" F0002="RESE011_d01" F0003="reshp005" />
                                        </cc1:DscLabel>
                                    </td>
                                    <td class="right" style="width: 80%">
                                        <cc1:DscOpenQuery ID="reshp005" runat="server" BtnVisible="True"
                                            CellNo3CssClass=""
                                            ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif" RetuenVisible="True"
                                            ReturnVisible="True" Style="z-index: 106;"
                                            Title="權限屬性" ShowTitle="false" TxtInput_TabIndex="13"
                                            Value="" Width="240px">
                                            <FrmFieldKeys FrmID="FrmRESE011_d01" BOID="RESE011_d01" FieldName="reshp005"></FrmFieldKeys>
                                            <TitleStyle Width="160px" />
                                            <InputStyle BackColor="White" CssClass="Edit20" Width="120px" />
                                        </cc1:DscOpenQuery>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="left">
                                        <cc1:DscLabel ID="DscLabel13" runat="server">
                                            <Comment F0001="FD" F0002="RESE011_d01" F0003="reshp006" />
                                        </cc1:DscLabel>
                                    </td>
                                    <td class="right" style="width: 80%">
                                        <cc1:DscOpenQuery ID="reshp006" runat="server" BtnVisible="True"
                                            CellNo3CssClass=""
                                            ImgSrc="../../_Common/AppUtil/Themes/images/Program/data.gif"
                                            RetuenVisible="True" ReturnVisible="True" Style="z-index: 106;"
                                            Title="機密等級" ShowTitle="false"
                                            TitleWidth="120px" TxtInput_TabIndex="14" Value="" Width="240px">
                                            <FrmFieldKeys FrmID="FrmRESE011_d01" BOID="RESE011_d01" FieldName="reshp006"></FrmFieldKeys>
                                            <TitleStyle Width="160px" />
                                            <InputStyle BackColor="White" CssClass="Edit20" Width="120px" />
                                        </cc1:DscOpenQuery>
                                    </td>
                                </tr>
                            </table>
                        </cc1:DscPanel>
                        <uc1:gridUserControl ID="GridUserControl1" runat="server"></uc1:gridUserControl>
                    </cc1:DscPanel>
                </div>
                <cc1:DscPanel ID="hdnDisplayInCS" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server" Width="100%">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent;
                        left: 0px; top: 0px;">
                    </div>
                </cc1:DscPanel>
                <cc1:DscPanel ID="hdnDisplayInHTML" Style="display: none; z-index: 116; left: 264px;
                    top: 72px" runat="server">
                    <div style="overflow: auto; width: 100%; position: relative; height: 100%; background-color: transparent">
                        <cc1:DscTextBox ID="resho008" runat="server" Width="663px" Height="17px" TextMode="MultiLine"
                            TitleWidth="62px"
                            Title="正文" TxtInput_TabIndex="15">
                            <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho008"></FrmFieldKeys>
                            <InputStyle CssClass="Edit20" Width="601px" Height="80px" />
                            <TitleStyle Width="62px" />
                        </cc1:DscTextBox>
                        <!--2017/10/13:poruni 補上欄位存放Html 去除 Tag 後內容↓-->
                        <cc1:DscTextBox ID='HtmlNoTag' runat='server' Title='全文去除tag' ShowTitle="false" TxtInput_TabIndex='109'
                            Height="20px" Width="100px" TextMode="MultiLine">
                            <FrmFieldKeys FrmID="FrmRESE011" BOID="RESE011" FieldName="resho016"></FrmFieldKeys>
                            <ReturnTextBoxStyle Width="120px" />
                            <InputStyle Width='100px' Height='20px' CssClass='Edit20'></InputStyle>
                        </cc1:DscTextBox>
                        <cc1:DscOpenQuery ID="resho013" runat="server" ReturnVisible="False" ShowTitle="False"
                            TxtInput_TabIndex="4">
                            <FrmFieldKeys BOID="RESE011" FieldName="resho013" FrmID="FrmRESE011" />
                            <InputStyle BackColor="White" CssClass="Edit20" Width="500px" />
                        </cc1:DscOpenQuery>
                        <!--2017/10/13:poruni 補上欄位存放Html 去除 Tag 後內容↑-->
                        <asp:HiddenField ID="scriptNo" runat="server" Value="" />
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
