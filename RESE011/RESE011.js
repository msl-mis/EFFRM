//單頭自訂驗證
function CustomerSaveCheck(tStatus)
{
    var tErr = "";
    var tMsg = "";
    var tFieldNotFilledMsg = getI18NForSpecial('PSMSG', 'Validation', 'RequriedFieldNotFilled', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
    var tIntErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'IntErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
    var tFloatErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'FloatErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
    if (tStatus == "CREATE")
    {
        //填表時要驗證
        //edit by dongsk 2014.03.13 单身必须要有记录
        if (GetDetialRowCount() == false) return false;
        //edit by dongsk 2014.03.13 单身必须要有记录
    }
    else if (tStatus == "APPROVE")
    {
        //簽核時要驗證
    }

    //填表及簽核都要驗證
    if (tErr == "")
    {
        //edit by poruni 2017/10/13 補上欄位存放Html 去除 Tag 後內容 Start
		//2020/09/26;6.1.6.9;hiro;V00-20200926004;修正Chrome發單後，全文清成空白↓
		//var html = document.frames.Editor.document.body.innerHTML;
		var html = document.getElementById('Editor').contentWindow.document.body.innerHTML;
		//2020/09/26;6.1.6.9;hiro;V00-20200926004;修正Chrome發單後，全文清成空白↑
        var alertstr = html.replace(/(<([^>]+)>)/ig, "").replace("&nbsp;", " ");
        document.getElementById("MasterPage_MasterPageContent_HtmlNoTag_txt").value = alertstr;
        //edit by poruni 2017/10/13 補上欄位存放Html 去除 Tag 後內容 End


        //2019/12/13;6.1.6.7;puruni:V00-20191213002:RESE011 公佈欄新增新版文字編輯區 Start
        var ue = UE.getEditor('myEditor');
        var Content;
        ue.ready(function () {
            Content = ue.getContent();
        });
        if (Content.indexOf('href=') > -1) {
            //內文含有超連結，請移除後再存檔!
            alert(getI18NForSpecial('FD', 'BOARD001', 'MSG012', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx'));
            return false;
        }
        else {
            document.getElementById("MasterPage_MasterPageContent_resho013_txt").value = Content;
        }

        //2019/12/13;6.1.6.7;puruni:V00-20191213002:RESE011 公佈欄新增新版文字編輯區 End

        return true;
    }
    else
    {
        alert(tErr);
        return false;
    }
}

//2016/06/01:3.6.6.3:wayne:C01-20160527001:修正單身可塞入相同權限 Start
function CheckDetailRepeat()
{
    var tReshp004 = document.getElementById('MasterPage_MasterPageContent_reshp004_ddl').value;
    var tReshp005 = document.getElementById('MasterPage_MasterPageContent_reshp005_txt').value;
    var universalID = document.getElementById("MasterPage_universalID").value;
	//2020/09/25;6.1.6.9;hiro;A00-20200925001;1.修復C01-20160527001造成無法修改單身權限↓
	var tReshp003 = document.getElementById('MasterPage_MasterPageContent_reshp003_txt').value;
	//if (tw.com.dsc.easyflowDotNet.forms.RESE011.ajaxCheckDetailRepeat(tReshp004, tReshp005, universalID).value)
	if (tw.com.dsc.easyflowDotNet.forms.RESE011.ajaxCheckDetailRepeat(tReshp003, tReshp004, tReshp005, universalID).value)
	//2020/09/25;6.1.6.9;hiro;A00-20200925001;1.修復C01-20160527001造成無法修改單身權限↑
    {
        var errorMsg = getI18NForSpecial('FD', 'RESE011', 'DetailRepeated', '../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
        alert(errorMsg);
        document.getElementById('MasterPage_MasterPageContent_reshp006_txt').value = '';
        document.getElementById('MasterPage_MasterPageContent_reshp006_txt2').innerText = '';
        return false;
    }
    return true;
}
//2016/06/01:3.6.6.3:wayne:C01-20160527001:修正單身可塞入相同權限 End

//edit by dongsk 2014.03.13 单身必须要有记录
function GetDetialRowCount()
{
    var universalID = document.getElementById("MasterPage_universalID").value;
    var tRetVal = tw.com.dsc.easyflowDotNet.forms.RESE011.GetDetialRowCount(universalID);
    if (tRetVal.value == '0')
    {
        var errorMsg = getI18NForSpecial('FD', 'STD007', 'MsgDatechecked', '../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
        alert(errorMsg);
        return false;
    }
    else
    {
        return true;
    }
}
//edit by dongsk 2014.03.13 单身必须要有记录

//單身自訂驗證
function CustomerDetailSaveCheck(tStatus)
{
    var tErr = "";
    var tMsg = "";
    var tFieldNotFilledMsg = getI18NForSpecial('PSMSG', 'Validation', 'RequriedFieldNotFilled', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
    var tIntErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'IntErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
    var tFloatErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'FloatErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
    if (tStatus == "CREATE")
    {
        //填表時要驗證
    }
    else if (tStatus == "APPROVE")
    {
        //簽核時要驗證
    }

    //填表及簽核都要驗證
    if (tErr == "")
    {
        return true;
    }
    else
    {
        alert(tErr);
        return false;
    }
}



//2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↓
function getMultiOpenWindowValues(setField)
{
    if (document.getElementById("MasterPage_MasterPageContent_edReceiver_txt") != null && document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value != null && document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value != "")
    {
        var tValueA = unescape(document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value);
        //2011/06/07:3.3.1.1:hiro:Q00-20110607001:修正人員多選開窗物件，應僅帶回人員工號-人員姓名，不應呈現人員工號-人員姓名-部門代號-部門名稱↓
        //document.getElementById("MasterPage_MasterPageContent_"+setField).value = tValueA.replace(/├/g,";").replace(/§/g,"-");
        document.getElementById("MasterPage_MasterPageContent_" + setField).value = "";
        var tArr1 = tValueA.split("├");
        var tArr2 = new Array();
        for (var i = 0; i < tArr1.length; i++)
        {
            if (tArr1[i] != "")
            {
                tArr2 = tArr1[i].split("§");
                //2011/12/12:3.3.3.11:hiro:S00-20111212002:表單精靈NewOpenQuery控制項，多選開窗的儲存格式請修改成empl、dept控制項的多選開窗儲存格式↓
                //document.getElementById("MasterPage_MasterPageContent_"+setField).value += tArr2[0] + "-" + tArr2[1] + ";";
                //MI回傳值1個以上時，僅顯示第1、2個MI回傳值
                if (tArr2.length > 1)
                    document.getElementById("MasterPage_MasterPageContent_" + setField).value += tArr2[0] + "-" + tArr2[1] + ";";
                else
                    document.getElementById("MasterPage_MasterPageContent_" + setField).value += tArr2[0] + ";";
                //2011/12/12:3.3.3.11:hiro:S00-20111212002:表單精靈NewOpenQuery控制項，多選開窗的儲存格式請修改成empl、dept控制項的多選開窗儲存格式↑
            }
        }
        //2011/06/07:3.3.1.1:hiro:Q00-20110607001:修正人員多選開窗物件，應僅帶回人員工號-人員姓名，不應呈現人員工號-人員姓名-部門代號-部門名稱↑
        document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value = "";
    }
}
//2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↑

//2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：欄位計算、單身資料加總↓
String.prototype.trim = function()
{
    return this.replace(/^\s+|\s+$/g, "");
}
//2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：欄位計算、單身資料加總↑

//2011/01/25:3.2.1.20:hiro:S00-20101005001:新增連動式下拉選單控制項↓
function InitOnChangeItem(tStatus, pAllReturnMessage)
{
    //2015/02/12;3.6.3.3;hiro;A00-20150211001;修正簽核時單身權限屬性被清空無法辨認↓
    var strreshp004Val = '';
    if ($("#MasterPage_MasterPageContent_reshp004_ddl").length > 0)
        strreshp004Val = $("#MasterPage_MasterPageContent_reshp004_ddl").val();

    //alert('ddldisabled='+document.getElementById("MasterPage_MasterPageContent_reshp004_ddl").disabled+
    //	'\nddlreadOnly='+document.getElementById("MasterPage_MasterPageContent_reshp004_ddl").readOnly+
    //	'\ndisabled='+document.getElementById("MasterPage_MasterPageContent_reshp005_txt").disabled+
    //	'\nreadOnly='+document.getElementById("MasterPage_MasterPageContent_reshp005_txt").readOnly);
    var bControlDisabled = false;
    if (tStatus == "CREATE")
    {
        //填表
        bControlDisabled = true;
    }
    else if (tStatus == "APPROVE")
    {
        //簽核
        if (document.getElementById("MasterPage_MasterPageContent_reshp004_ddl").disabled == false)
        {
            bControlDisabled = true;
        }
    }

    if (strreshp004Val == "0")
    {
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt").value = "ALL";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").innerHTML = pAllReturnMessage;
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt2hdn").value = "ALL";
    }

    if (bControlDisabled)
    {
        if (strreshp004Val == "0")
        {
            document.getElementById("MasterPage_MasterPageContent_reshp005_txt").disabled = true;
            document.getElementById("MasterPage_MasterPageContent_reshp005_txt").readOnly = "readonly";
            document.getElementById("MasterPage_MasterPageContent_reshp005_txt").style.color = "#808080";
            document.getElementById("MasterPage_MasterPageContent_reshp005_btn").disabled = true;
            document.getElementById("MasterPage_MasterPageContent_reshp005_btn").style.cursor = "default";
            document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").readOnly = "readonly";
            document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").style.color = "#808080";
        }
        else
        {
            document.getElementById("MasterPage_MasterPageContent_reshp005_txt").disabled = false;
            document.getElementById("MasterPage_MasterPageContent_reshp005_txt").readOnly = "";
            document.getElementById("MasterPage_MasterPageContent_reshp005_txt").style.color = "#000000";
            document.getElementById("MasterPage_MasterPageContent_reshp005_btn").disabled = false;
            document.getElementById("MasterPage_MasterPageContent_reshp005_btn").style.cursor = "hand";
            document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").readOnly = "";
            document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").style.color = "#000000";
        }
    }
    //2015/02/12;3.6.3.3;hiro;A00-20150211001;修正簽核時單身權限屬性被清空無法辨認↑
}

function CreateOption(pValue, pText, objselect)
{
    var new_option = new Option(pText, pValue);
    objselect.options.add(new_option);
}
//2011/01/25:3.2.1.20:hiro:S00-20101005001:新增連動式下拉選單控制項↑

//2011/03/09:3.2.1.26:hiro:S00-20110218003:增加人員樹型開窗功能(參考teppy的程式段)↓
//單選開窗
function SingleSelectEmpl(pPathPath, pReturnControlClientID, pMJ)
{
    var tdialogHeight = 520;
    var tdialogWidth = 780;
    var tdialogTop = (screen.height - tdialogHeight) / 2;
    var tdialogLeft = (screen.width - tdialogWidth) / 2;
    var tStyle = "dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No;";
    var tReturnValue = window.showModalDialog(pPathPath, "", tStyle);
    if ((tReturnValue != undefined) && (tReturnValue != null) && (tReturnValue != ""))
    {
        document.getElementById(pReturnControlClientID).value = tReturnValue;
        doValidateII(pReturnControlClientID, pMJ, pReturnControlClientID);
        return true;
    }
}


//多選開窗
function MultiSelectEmpl(pPathPath, pReturnControlClientID, pType)
{
    var tdialogHeight = 520;
    var tdialogWidth = 780;
    var tdialogTop = (screen.height - tdialogHeight) / 2;
    var tdialogLeft = (screen.width - tdialogWidth) / 2;
    var tStyle = "dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No;";
    var tReturnValue = window.showModalDialog(pPathPath, "", tStyle);

    if ((tReturnValue != undefined) && (tReturnValue != null) && (tReturnValue != ""))
    {
        var objTargetValue = "";
        var tArr1 = tReturnValue.split("├");
        var tArr2 = new Array();

        if (tReturnValue.indexOf("^Flag=Y") >= 0)
        {//如果有追加標誌，則追加到原文本框中
            if (pType == 1)
            {//第一種多選開窗方式
                var objTarget = document.getElementById(pReturnControlClientID + "_lst"); //目標List
                for (var i = 0; i < tArr1.length; i++)
                {
                    if (tArr1[i] != "")
                    {
                        tArr2 = tArr1[i].split("§");

                        var bHadExist = false;
                        for (var j = 0; j < objTarget.options.length; j++)
                        {
                            if (tArr2[0] + " " + tArr2[1] == objTarget.options[j].text)
                                bHadExist = true;
                        }
                        if (bHadExist)
                            continue;

                        if (objTarget.options.length > 0 && i < tArr1.length)//畫面上已有值存在，前面要加一個分隔符號
                            document.getElementById(pReturnControlClientID + '_hidText').value += "§";

                        //產生一個option元件
                        var opt = document.createElement("option");
                        //把opt加到目標List裡
                        objTarget.options.add(opt);
                        //指定opt的value及text
                        opt.text = tArr2[0] + " " + tArr2[1];
                        opt.value = tArr2[0] + " " + tArr2[1];

                        document.getElementById(pReturnControlClientID + '_hidText').value += tArr2[0] + " " + tArr2[1];
                    }
                }
            }
            else
            {//第二種多選開窗方式
                //有追加標誌
                objTargetValue = document.getElementById(pReturnControlClientID).value;
                for (var i = 0; i < tArr1.length; i++)
                {
                    if (tArr1[i] != "")
                    {
                        tArr2 = tArr1[i].split("§");
                        if (objTargetValue.indexOf(tArr2[0] + "-" + tArr2[1] + ";") < 0)
                        {//不存在該資料時，才追加到欄位之中
                            objTargetValue += tArr2[0] + "-" + tArr2[1] + ";";
                        }
                    }
                }
            }
        }
        else
        {//沒有追加標誌
            if (pType == 1)
            {//第一種多選開窗方式
                $('#' + pReturnControlClientID + '_hidText').val(""); //沒有追加，則先清空hide欄位
                var objTarget = document.getElementById(pReturnControlClientID + "_lst"); //目標List
                for (var i = 0; i < tArr1.length; i++)
                {
                    if (tArr1[i] != "")
                    {
                        tArr2 = tArr1[i].split("§");

                        if ($('#' + pReturnControlClientID + '_hidText').val().length > 0 && i < tArr1.length)//畫面上已有值存在，前面要加一個分隔符號
                            document.getElementById(pReturnControlClientID + '_hidText').value += "§";

                        //產生一個option元件
                        var opt = document.createElement("option");
                        //把opt加到目標List裡
                        objTarget.options.add(opt);
                        //指定opt的value及text
                        opt.text = tArr2[0] + " " + tArr2[1];
                        opt.value = tArr2[0] + " " + tArr2[1];

                        document.getElementById(pReturnControlClientID + '_hidText').value += tArr2[0] + " " + tArr2[1];
                    }
                }
            }
            else
            {//第二種多選開窗方式
                $('#' + pReturnControlClientID).val(""); //沒有追加，則先清空hide欄位
                objTargetValue = document.getElementById(pReturnControlClientID).value;
                for (var i = 0; i < tArr1.length; i++)
                {
                    if (tArr1[i] != "")
                    {
                        tArr2 = tArr1[i].split("§");
                        objTargetValue += tArr2[0] + "-" + tArr2[1] + ";";
                    }
                }
            }
        }

        if (pType == 1)
            document.getElementById(pReturnControlClientID + '_hidText2').value = document.getElementById(pReturnControlClientID + '_hidText').value;
        else
            document.getElementById(pReturnControlClientID).value = objTargetValue;

        return true;
    }
    else
    {
        //不做任何動作
        event.returnValue = false;
        return false;
    }
}
//2011/03/09:3.2.1.26:hiro:S00-20110218003:增加人員樹型開窗功能(參考teppy的程式段)↑

//隱藏單身欄位 Key3
function HideKey3()
{
    var objTxtGrid1 = document.getElementById('MasterPage_MasterPageContent_reshp003_txt'); if (objTxtGrid1 != null) { objTxtGrid1.style.display = "none" };
    var objLblGrid1 = document.getElementById('MasterPage_MasterPageContent_reshp003_lbl'); if (objLblGrid1 != null) { objLblGrid1.style.display = "none" };
}


function setWebEditor()
{
    doc.designMode = "off";
}

//2020/09/26;6.1.6.9;hiro;V00-20200926004;修正Chrome發單後，全文清成空白↓
////WebEditor相关
//function setHtmlEditorDefaultValue()
//{
//	var htmlEditor = document.getElementById('Editor');
//	if (htmlEditor != undefined && document.getElementById('MasterPage_MasterPageContent_hiddenHtmlEditor').value != '')
//	{
//		var htmlContent = document.getElementById('MasterPage_MasterPageContent_hiddenHtmlEditor').value;
//		if (htmlEditor != undefined)
//		{
//			htmlEditor.document.body.innerHTML = unescape(htmlContent);
//		}
//	}
//}
//WebEditor相关
function setHtmlEditorDefaultValue()
{
	if (document.getElementById('MasterPage_MasterPageContent_hiddenHtmlEditor') != undefined && document.getElementById('MasterPage_MasterPageContent_hiddenHtmlEditor').value != '')
	{
		if (document.getElementById('Editor') != undefined)
		{
			var htmlContent = document.getElementById('MasterPage_MasterPageContent_hiddenHtmlEditor').value;
			document.getElementById("Editor").contentWindow.document.body.innerHTML = htmlContent;
		}
	}
}
//2020/09/26;6.1.6.9;hiro;V00-20200926004;修正Chrome發單後，全文清成空白↑

function setModifyButtonEvent()
{
    btnInsert.attachEvent('onclick', saveHtmlEditorToHidden);
    btnDelete.attachEvent('onclick', saveHtmlEditorToHidden);
    btnModify.attachEvent('onclick', saveHtmlEditorToHidden);

}

function saveHtmlEditorToHidden()
{
    var html
    if (gIsIEBrowser)
    {
        html = document.frames.Editor.document.body.innerHTML;
    }
    else
    {
        html = document.getElementById('Editor').contentDocument.body.innerHTML;
    }

    var hiddenHtmlEditor = document.getElementById('MasterPage_MasterPageContent_hiddenHtmlEditor');
    hiddenHtmlEditor.value = html;
}


function setContextValue()
{
    //2015/01/21:3.6.3.2:jarvis:C01-20150119003:修正送出後，全文被清空之問題↓
    //var html = document.getElementById('Editor').contentDocument.body.innerHTML;
    //var resho008 = document.getElementById('MasterPage_MasterPageContent_resho008_txt');
    //resho008.value = escape(html);
    if (document.getElementById('MasterPage_MasterPageContent_resho008_txt').value == "")
    {
        //var html = document.getElementById('Editor').contentDocument.body.innerHTML;
        var html
        if (gIsIEBrowser)
        {
            html = document.frames.Editor.document.body.innerHTML;
        }
        else
        {
            html = document.getElementById('Editor').contentDocument.body.innerHTML;
        }
        var resho008 = document.getElementById('MasterPage_MasterPageContent_resho008_txt');
        resho008.value = escape(html);

    }
    else
    {

        //2015/03/05:3.6.3.2:dongsk:A00-20150305002:傳送當下發現全文內容變成亂碼 ↓
        // document.getElementById('Editor').contentDocument.body.innerHTML = escape(document.getElementById('MasterPage_MasterPageContent_resho008_txt').value);
        if (gIsIEBrowser)
        {
            document.frames.Editor.document.body.innerHTML = unescape(document.getElementById('MasterPage_MasterPageContent_resho008_txt').value);
        }
        else
        {
            document.getElementById('Editor').contentDocument.body.innerHTML = unescape(document.getElementById('MasterPage_MasterPageContent_resho008_txt').value);
        }
        //2015/03/05:3.6.3.2:dongsk:A00-20150305002:傳送當下發現全文內容變成亂碼↑

    }
    //2015/01/21:3.6.3.2:jarvis:C01-20150119003:修正送出後，全文被清空之問題↑
}

function setModifyValueToHtmlEditor()
{
    if (document.getElementById('MasterPage_MasterPageContent_hiddenHtmlEditor') != undefined && document.getElementById('MasterPage_MasterPageContent_hiddenHtmlEditor').value == '')
    {
        if (document.getElementById('Editor') != undefined)
        {
            if (document.getElementById('MasterPage_MasterPageContent_resho008_txt').value != '')
            {
                if (gIsIEBrowser)
                {
                    document.frames.Editor.document.body.innerHTML = unescape(document.getElementById('MasterPage_MasterPageContent_resho008_txt').value);
                }
                else
                {
                    document.getElementById('Editor').contentDocument.body.innerHTML = unescape(document.getElementById('MasterPage_MasterPageContent_resho008_txt').value);
                }
            }
        }
    }
}

//2015/03/05:3.6.3.2:dongsk:A00-20150305002:傳送當下發現全文內容變成亂碼 ↓
function fnSetHtmlContentToField()
{

    if (document.getElementById('MasterPage_MasterPageContent_hiddenHtmlEditor') != undefined)
    {
        //var html = document.getElementById('Editor').contentDocument.body.innerHTML;
        var html
        if (gIsIEBrowser)
        {
            html = document.frames.Editor.document.body.innerHTML;
        }
        else
        {
            html = document.getElementById('Editor').contentDocument.body.innerHTML;
            //2018/05/03;6.1.6.5;poruni;A00-20180508001;RESE011 公佈欄訊息發布申請單，使用CHROME瀏覽器，在設計區插入圖片，發佈後，圖片無法顯示 Start
            if (html.indexOf("src=\"ShowImg.aspx?") != -1) {
                var ip = tw.com.dsc.easyflowDotNet.forms.RESE011.ajaxServerIp().value;
                html = html.replace(/src=\"ShowImg.aspx?/g, "src=\"http:\/\/" + ip +"\/EFNET\/src\/FRM\/RESE011\/ShowImg.aspx");
            }
            //2018/05/03;6.1.6.5;poruni;A00-20180508001;RESE011 公佈欄訊息發布申請單，使用CHROME瀏覽器，在設計區插入圖片，發佈後，圖片無法顯示 End
        }
        var resho008 = document.getElementById('MasterPage_MasterPageContent_resho008_txt');
        resho008.value = escape(html);
        document.getElementById('MasterPage_MasterPageContent_hidEditSetHtml').value == "Y";
        //2021/10/21:6.1.16.3:俊詠：A00-20211019002:1.存草稿內容跟附件會清空2.如果是走組織核決權限，且可以決定送單部門，選完部門送出附件會有但內容會清空不送出附件會變成0，內容也會被清空。↓
        var ue = UE.getEditor('myEditor');
        var Content;
        ue.ready(function () {
            Content = ue.getContent();
        });
        if (Content.indexOf('href=') > -1) {
            //內文含有超連結，請移除後再存檔!
            alert(getI18NForSpecial('FD', 'BOARD001', 'MSG012', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx'));
            return false;
        }
        else {
            document.getElementById("MasterPage_MasterPageContent_resho013_txt").value = Content;
        }
        //2021/10/21:6.1.16.3:俊詠：A00-20211019002:1.存草稿內容跟附件會清空2.如果是走組織核決權限，且可以決定送單部門，選完部門送出附件會有但內容會清空不送出附件會變成0，內容也會被清空。↑
    }
}

function fnSetFieldToHtmlContent()
{
    try
    {
        if (document.getElementById('MasterPage_MasterPageContent_hidEditSetHtml').value == "Y")
        {
            if (document.getElementById('MasterPage_MasterPageContent_hiddenHtmlEditor') != undefined)
            {
                if (gIsIEBrowser)
                {
                    document.frames.Editor.document.body.innerHTML = unescape(document.getElementById('MasterPage_MasterPageContent_resho008_txt').value);
                }
                else
                {
                    document.getElementById('Editor').contentDocument.body.innerHTML = unescape(document.getElementById('MasterPage_MasterPageContent_resho008_txt').value);
                }
            }
            document.getElementById('MasterPage_MasterPageContent_hidEditSetHtml').value == "N";
        }
    } catch (e) { }
    //document.getElementById('Editor').contentDocument.body.innerHTML
}
//2015/03/05:3.6.3.2:dongsk:A00-20150305002:傳送當下發現全文內容變成亂碼 ↑



function BtnOver(btn)
{
    btn.style.borderTopColor = "#efece8";
    btn.style.borderBottomColor = "#888070";
    btn.style.borderLeftColor = "#efece8";
    btn.style.borderRightColor = "#888070";
}
function BtnClick(btn)
{
    btn.style.borderTopColor = "#888070";
    btn.style.borderBottomColor = "#efece8";
    btn.style.borderLeftColor = "#888070";
    btn.style.borderRightColor = "#efece8";
}
function BtnOut(btn)
{
    btn.style.borderColor = "#dbdbdb";
}

function doCut()
{

    doc.execCommand('Cut');
    Editor.focus();
}
function doCopy()
{
    doc.execCommand('Copy');
    Editor.focus();
}
function doPaste()
{
    doc.execCommand('Paste');
    Editor.focus();
}
function doUndo()
{
    doc.execCommand('Undo');
    Editor.focus();
}
function doRedo()
{
    doc.execCommand('Redo');
    Editor.focus();
}
function doDelete()
{
    doc.execCommand('Delete');
    Editor.focus();
}
function doFontName(fn)
{
    doc.execCommand('FontName', false, fn);
    Editor.focus();
}
function doFontSize(fs)
{
    doc.execCommand('FontSize', false, fs);
    Editor.focus();
}
function doBold()
{
    doc.execCommand('Bold');
    Editor.focus();
}
function doItalic()
{
    doc.execCommand('Italic');
    Editor.focus();
}
function doUnderline()
{
    doc.execCommand('Underline');
    Editor.focus();
}
function doStrikeThrough()
{
    doc.execCommand('StrikeThrough');
    Editor.focus();
}
function doSubscript()
{
    doc.execCommand('Subscript');
    Editor.focus();
}
function doSuperscript()
{
    doc.execCommand('Superscript');
    Editor.focus();
}
function doJustifyLeft()
{
    doc.execCommand('JustifyLeft');
    Editor.focus();
}
function doJustifyRight()
{
    doc.execCommand('JustifyRight');
    Editor.focus();
}
function doJustifyCenter()
{
    doc.execCommand('JustifyCenter');
    Editor.focus();
}
function doIndent()
{
    doc.execCommand('Indent');
    Editor.focus();
}
function doOutdent()
{
    doc.execCommand('Outdent');
    Editor.focus();
}
//function doForeColor() {
//    //edit by elvis 2010/02/09 Start
//    //var fcolor=showModalDialog("editor_color.htm",false,"dialogWidth:110px;dialogHeight:135px;status:0;");
//    var fcolor = showModalDialog("editor_color.aspx", false, "dialogWidth:250px;dialogHeight:135px;status:0;");
//    //edit by elvis 2010/02/09 End

//    doc.execCommand('ForeColor', false, fcolor);
//    Editor.focus();
//}
//function doBackColor() {
//    //edit by elvis 2010/02/09 Start
//    //var bcolor=showModalDialog("editor_color.htm",false,"dialogWidth:110px;dialogHeight:135px;status:0;");
//    var bcolor = showModalDialog("editor_color.aspx", false, "dialogWidth:250px;dialogHeight:135px;status:0;");
//    //edit by elvis 2010/02/09 End

//    doc.execCommand('BackColor', false, bcolor);
//    Editor.focus();
//}
//2015/05/11:跨Chrome修正:Joseph
function doForeColor()
{
    if (gIsIEBrowser)
    {
        doForeColor_IE();
    }
    else
    {
        doForeColor_Chrome();
    }
}

//2015/05/11:跨Chrome修正:Joseph
function doForeColor_IE()
{
    var fcolor = showModalDialog("editor_color.aspx", false, "dialogWidth:250px;dialogHeight:135px;status:0;");
    doc.execCommand('ForeColor', false, fcolor);
    Editor.focus();
}

//2015/05/11:跨Chrome修正:Joseph
function doForeColor_Chrome()
{
    showDivDialog("editor_color.aspx", false, "dialogWidth:250px;dialogHeight:135px;status:0;", doForeColor_Chrome_callback, false);

    function doForeColor_Chrome_callback()
    {
        var fcolor = gCallbackReturnValue;
        doc.execCommand('ForeColor', false, fcolor);
        document.getElementById('Editor').focus();
    }
}



function doBackColor()
{
    if (gIsIEBrowser)
    {
        doBackColor_IE();
    }
    else
    {
        doBackColor_Chrome();

    }

}


function doBackColor_IE()
{
    var bcolor = showModalDialog("editor_color.aspx", false, "dialogWidth:250px;dialogHeight:135px;status:0;");
    doc.execCommand('BackColor', false, bcolor);
    Editor.focus();
}

function doBackColor_Chrome()
{
    showDivDialog("editor_color.aspx", false, "dialogWidth:250px;dialogHeight:135px;status:0;", doBackColor_Chrome_callback, false);

    function doBackColor_Chrome_callback()
    {
        var bcolor = gCallbackReturnValue;
        doc.execCommand('BackColor', false, bcolor);
        document.getElementById('Editor').focus();
    }
}


//function doInsertTable() {
//    //edit by elvis 2010/02/09 Start
//    //var dotable=showModalDialog("editor_table.htm",false,"dialogWidth:205px;dialogHeight:160px;status:0;");
//    var dotable = showModalDialog("editor_table.aspx", false, "dialogWidth:205px;dialogHeight:180px;status:0;");
//    //edit by elvis 2010/02/09 End

//    if (dotable != undefined) {
//        doc.body.innerHTML = doc.body.innerHTML + dotable;
//    }
//    else {
//        return false;
//    }
//    Editor.focus();
//}
function doInsertTable()
{
    if (gIsIEBrowser)
    {
        doInsertTable_IE();
    }
    else
    {
        doInsertTable_Chrome();
    }
}


function doInsertTable_IE()
{
    var dotable = showModalDialog("editor_table.aspx", false, "dialogWidth:205px;dialogHeight:180px;status:0;");

    if (dotable != undefined)
    {
        doc.body.innerHTML = doc.body.innerHTML + dotable;
    }
    else
    {
        return false;
    }
    Editor.focus();
}


function doInsertTable_Chrome()
{
    showDivDialog("editor_table.aspx", false, "dialogWidth:205px;dialogHeight:180px;status:0;", doInsertTable_Chrome_callback, false);

    function doInsertTable_Chrome_callback()
    {
        var dotable = gCallbackReturnValue;
        if (dotable != undefined)
        {
            doc.body.innerHTML = doc.body.innerHTML + dotable;
        }
        else
        {
            return false;
        }
        document.getElementById('Editor').focus();
    }
}




function doInsertOrderedList()
{
    doc.execCommand('InsertOrderedList');
    Editor.focus();
}
function doInsertUnorderedList()
{
    doc.execCommand('InsertUnorderedList');
    Editor.focus();
}
function doCreateLink()
{
    doc.execCommand('CreateLink');
    Editor.focus();
}

//function doInsertImage(pGuid)
//{
//    var path = showModalDialog("editor_page2.aspx?URL=./editor_file2.aspx?guid=" + pGuid, false, "dialogWidth:250px;dialogHeight:150px;status:0;");
//    path = unescape(path);
//    path = path.replace(/-/g, "\\");
//    if (path != undefined || path != "" || path != "undefined")
//    {
//        doc.body.innerHTML = doc.body.innerHTML + path;
//    }
//    else
//    {
//        return false;
//    }
//    //2015/01/06:3.6.3.1:jarvis:V00-20141016001:修正js錯誤↓
//    //Editor.focus();
//    Editor.focus();
//    //2015/01/06:3.6.3.1:jarvis:V00-20141016001:修正js錯誤↑
//    //doc.execCommand('InsertImage','xxx');
//}
function doInsertImage(pGuid)
{
    if (gIsIEBrowser)
    {
        doInsertImage_IE(pGuid);

    }
    else
    {
        doInsertImage_Chrome(pGuid);
    }

}

function doInsertImage_IE(pGuid)
{
    var pGuid = document.getElementById("MasterPage_MasterPageContent_hiddenGUID").value;
    var path = showModalDialog("editor_page2.aspx?URL=./editor_file2.aspx?guid=" + pGuid, false, "dialogWidth:250px;dialogHeight:150px;status:0;");
    path = unescape(path);
    path = path.replace(/-/g, "\\");

    if (path != undefined || path != "" || path != "undefined")
    {
        doc.body.innerHTML = doc.body.innerHTML + path;
    }
    else
    {
        return false;
    }
    Editor.focus();
}


function doInsertImage_Chrome(pGuid)
{
    var pGuid = document.getElementById("MasterPage_MasterPageContent_hiddenGUID").value;
    showDivDialog("editor_page2.aspx?URL=./editor_file2.aspx?guid=" + pGuid, false, "dialogWidth:270px;dialogHeight:140px;status:0;", doInsertImage_Chrome_callback, false);
    //return;

    function doInsertImage_Chrome_callback()
    {
        //alert(gCallbackReturnValue);
        if (gCallbackReturnValue)
        {
            path = gCallbackReturnValue;
            path = unescape(path);
            path = path.replace(/-/g, "\\");
            if (path != undefined || path != "" || path != "undefined")
            {
                doc.body.innerHTML = doc.body.innerHTML + path;
            }
            else
            {
                return false;
            }
        }
    }
}



function doInsertInputButton()
{
    Editor.focus();
    doc.execCommand('InsertInputButton');
}
function doInsertHorizontalRule()
{
    Editor.focus();
    doc.execCommand('InsertHorizontalRule');
}
function doInsertInputCheckbox()
{
    Editor.focus();
    doc.execCommand('InsertInputCheckbox');
}
//function doInsertInputRadio()
//{
//    Editor.focus();
//    doc.execCommand('InsertInputRadio');
//}
//function doInsertInputText()
//{
//    Editor.focus();
//    doc.execCommand('InsertInputText');
//}
//function doInsertInputPassword()
//{
//    Editor.focus();
//    doc.execCommand('InsertInputPassword');
//}
//function doInsertInputSubmit()
//{
//    Editor.focus();
//    doc.execCommand('InsertInputSubmit');
//    ShowMessage();
//}
//function doInsertInputReset()
//{
//    Editor.focus();
//    doc.execCommand('InsertInputReset');
//    ShowMessage();
//}
//function doInsertMarquee()
//{
//    Editor.focus();
//    doc.execCommand('InsertMarquee');
//    ShowMessage();
//}
//function doInsertSelectDropdown()
//{
//    Editor.focus();
//    doc.execCommand('InsertSelectDropdown');
//}
//function doInsertTextArea()
//{
//    Editor.focus();
//    doc.execCommand('InsertTextArea');
//}
//function doOpen()
//{
//    doc.execCommand('Open');
//    Editor.focus();
//}
//function mailTextChange()
//{
//    //var doc = document.getElementById('Editor').contentDocument.body.innerHTML;
//    document.getElementById("emailContentHiddent").value = doc.body.innerHTML;
//}
//function initialEditor()
//{
//    var mailValue = document.getElementById("emailContentHiddent").value;
//
//    if (gIsIEBrowser)
//    {
//        document.frames.Editor.document.body.innerHTML = mailValue;
//    }
//    else
//    {
//        document.getElementById('Editor').contentDocument.body.innerHTML = mailValue;
//    }
//}


function checkStartDate(StartDate, EndDate)
{
    var errorMsg = getI18NForSpecial('FD', 'OASE015', 'MSG002', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx')
    var errorMsg1 = getI18NForSpecial('FD', 'OASE031', 'MSG001', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx')
    if (document.getElementById(EndDate).value != "")
    {
        if (document.getElementById(StartDate).value != "")
        {
            if (document.getElementById(EndDate).value < document.getElementById(StartDate).value)
            {
                alert(errorMsg);
                document.getElementById(EndDate).value = "";
            }
            if (document.getElementById(EndDate).value == document.getElementById(StartDate).value)
            {
                alert(errorMsg1);
                document.getElementById(EndDate).value = "";
            }

        }
    }
}

function checkEndDate(StartDate, EndDate)
{
    var errorMsg = getI18NForSpecial('FD', 'OASE015', 'MSG002', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
    var errorMsg1 = getI18NForSpecial('FD', 'OASE031', 'MSG001', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx')
    if (document.getElementById(StartDate).value != "")
    {
        if (document.getElementById(EndDate).value != "")
        {
            if (document.getElementById(EndDate).value < document.getElementById(StartDate).value)
            {
                alert(errorMsg);
                document.getElementById(EndDate).value = "";
            }
            if (document.getElementById(EndDate).value == document.getElementById(StartDate).value)
            {
                alert(errorMsg1);
                document.getElementById(EndDate).value = "";
            }
        }
    }
}

function reshp004Change(pAllReturnMessage)//pAllReturnMessage
{
    //alert ('RESE011.js_reshp004Change()');
    //alert ('pAllReturnMessage='+pAllReturnMessage);
    //debugger ;
    //var pAllReturnMessage="11";
    var tSelectIndex = document.getElementById("MasterPage_MasterPageContent_reshp004_ddl").value;
    if (tSelectIndex == "0")
    {
        //edit by elvis 2011/01/03 Start
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt").disabled = true;
        //edit by elvis 2011/01/03 End
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt").value = "ALL";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").innerHTML = pAllReturnMessage;
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt2hdn").value = "ALL";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt").readOnly = "readonly";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt").style.color = "#808080";
        document.getElementById("MasterPage_MasterPageContent_reshp005_btn").disabled = true;
        document.getElementById("MasterPage_MasterPageContent_reshp005_btn").style.cursor = "default";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").readOnly = "readonly";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").style.color = "#808080";
    }
    else
    {
        //edit by elvis 2011/01/03 Start
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt").disabled = false;
        //edit by elvis 2011/01/03 End
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt").value = "";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").innerHTML = "";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt2hdn").value = "";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt").readOnly = "";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt").style.color = "#000000";
        document.getElementById("MasterPage_MasterPageContent_reshp005_btn").disabled = false;
        document.getElementById("MasterPage_MasterPageContent_reshp005_btn").style.cursor = "hand";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").readOnly = "";
        document.getElementById("MasterPage_MasterPageContent_reshp005_txt2").style.color = "#000000";
    }
}



function uploadAttachment(tReshq008)
{
    if (gIsIEBrowser)
    {
        uploadAttachment_IE(tReshq008);
    }
    else
    {
        uploadAttachment_chrome(tReshq008);
    }
}



function guid()
{
    function s4()
    {
        return Math.floor((1 + Math.random()) * 0x10000)
      .toString(16)
      .substring(1);
    }
    return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
    s4() + '-' + s4() + s4() + s4();
}


//2016/02/25:3.6.6.2:wayne:V00-20150324013:修正簽核時若沒勾選可異動附件卻可以編輯附件 Start
//function uploadAttachment(tReshq008) {
//    var tReturnValue = window.showModalDialog('UploadBoardAttachmentFrame9.aspx', tReshq008, 'dialogHeight:500px; dialogWidth:660px; center:Yes; help:No; resizable:No; scroll=no; status=no;');
//    var txtDisplayToolAttachment = document.getElementById('MasterPage_MasterPageContent_txtDisplayToolAttachment');
//    var count = tw.com.dsc.easyflowDotNet.forms.RESE011.GetAttachmentCount().value;
//    txtDisplayToolAttachment.innerText = count;
//}
//2016/02/25:3.6.6.2:wayne:V00-20150324013:修正簽核時若沒勾選可異動附件卻可以編輯附件 End

function uploadAttachment_chrome(tReshq008)
{
    showDivDialog('UploadBoardAttachmentFrame9.aspx?guid=' + guid(), tReshq008, 'dialogHeight:520px; dialogWidth:660px; center:Yes; help:No; resizable:No; scroll=no; status=no;', uploadAttachment_chrome_callback, false);
    function uploadAttachment_chrome_callback()
    {
        var tReturnValue = gCallbackReturnValue;
        var txtDisplayToolAttachment = document.getElementById('MasterPage_MasterPageContent_txtDisplayToolAttachment');
        var count = tw.com.dsc.easyflowDotNet.forms.RESE011.GetAttachmentCount().value;
        txtDisplayToolAttachment.innerText = count;
    }
}


function uploadAttachment_IE(tReshq008)
{
    var tReturnValue = window.showModalDialog('UploadBoardAttachmentFrame9.aspx?guid=' + guid(), tReshq008, 'dialogHeight:500px; dialogWidth:660px; center:Yes; help:No; resizable:No; scroll=no; status=no;');
    var txtDisplayToolAttachment = document.getElementById('MasterPage_MasterPageContent_txtDisplayToolAttachment');
    var count = tw.com.dsc.easyflowDotNet.forms.RESE011.GetAttachmentCount().value;
    txtDisplayToolAttachment.innerText = count;
}

//edit by litf 20140409 增加单身数据难
function GetDetialRowCount()
{
    var universalID = document.getElementById("MasterPage_universalID").value;
    var tRetVal = tw.com.dsc.easyflowDotNet.forms.RESE011.GetDetialRowCount(universalID);

    if (tRetVal.value == '0')
    {
        var errorMsg = getI18NForSpecial('FD', 'RESE011', 'DetailIsEmpty', '../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
        alert(errorMsg);
        return false;
    }
    else
    {
        return true;
    }
}

//edit by dongsk 2015.04.01 解析及流程设定后附件数量丢失
function setRefresh()
{
    $("#MasterPage_MasterPageContent_hidIsRefreshId").val("Y");
}



function doChromeOnloadSetting()
{
    hiddenCtrl('divInsertTable');
    hiddenCtrl('divCreateLink');
    hiddenCtrl('divCreateLink');
    hiddenCtrl('divDoCopy');
    hiddenCtrl('divDoPaste');
}

function hiddenCtrl(pId)
{
    if (document.getElementById(pId))
    {
        document.getElementById(pId).style.display = 'none';
    }
}


//2019/12/13;6.1.6.7;puruni:V00-20191213002:RESE011 公佈欄新增新版文字編輯區 Start
function EditorCrStatus() {
    var ue = UE.getEditor('myEditor');
    ue.ready(function () {
        ue.setEnabled();
        ue.setContent(document.getElementById("MasterPage_MasterPageContent_resho013_txt").value); 
    });
}
function EditorElStatus() {
    var ue = UE.getEditor('myEditor');
    ue.ready(function () {
        ue.setDisabled();
    });
}


//允許變更內文：例新增、修改狀態
function SetNewEditorEnabled() {
    var ue = UE.getEditor('myEditor');
    ue.ready(function () {
        ue.setEnabled();
    });
}

//不允許變更內文：例查詢狀態
function SetNewEditorDisabled() {
    var ue = UE.getEditor('myEditor');
    ue.ready(function () {
        ue.setDisabled();
    });
}


//取得並更新畫面上的內文
function getEditorContent() {
    var ue = UE.getEditor('myEditor');
    ue.ready(function () {
		//2020/09/26;6.1.6.9;hiro;V00-20200926003;修正公佈欄內容維護作業(BOARD001)修改內文，查看個人區>公佈欄(Board)內文未變更↓
		//ue.setContent(document.getElementById("MasterPage_MasterPageContent_resho013_txt").value);
		//resho013, eshna017有新樣式的內文資料，就顯示新樣式的內文資料；反之顯示舊樣式的內文資料(resho008,eshna006)；預設顯示新樣式的內文資料
		if(document.getElementById("MasterPage_MasterPageContent_resho013_txt").value!="")
			ue.setContent(document.getElementById("MasterPage_MasterPageContent_resho013_txt").value);
		else if(document.getElementById("MasterPage_MasterPageContent_resho008_txt").value!="")
			ue.setContent(unescape(document.getElementById("MasterPage_MasterPageContent_resho008_txt").value));
		else
			ue.setContent(document.getElementById("MasterPage_MasterPageContent_resho013_txt").value);
		//2020/09/26;6.1.6.9;hiro;V00-20200926003;修正公佈欄內容維護作業(BOARD001)修改內文，查看個人區>公佈欄(Board)內文未變更↑
    });
}

function showEditor() {
	//2020/09/26;6.1.6.9;hiro;V00-20200926003;修正公佈欄內容維護作業(BOARD001)修改內文，查看個人區>公佈欄(Board)內文未變更↓
	//var Version = tw.com.dsc.easyflowDotNet.forms.RESE011.GetIeVersion().value;
	//if (Version >= 9) {
	//    if (document.getElementById("MasterPage_MasterPageContent_resho008_txt").value == "") {
	//        document.getElementById("oldEditor").style.display = "none";
	//    }
	//    else{
	//        document.getElementById("newEditor").style.display = "none";
	//    }
	//}
	//else
	//    document.getElementById("newEditor").style.display = "none";
	//resho013, eshna017有新樣式的內文資料，就顯示新樣式的內文資料；反之顯示舊樣式的內文資料(resho008,eshna006)；預設顯示新樣式的內文資料
	if(document.getElementById("MasterPage_MasterPageContent_resho013_txt").value!="")
		document.getElementById("oldEditor").style.display = "none";
	else if(document.getElementById("MasterPage_MasterPageContent_resho008_txt").value!="")
		document.getElementById("newEditor").style.display = "none";
	else
		document.getElementById("oldEditor").style.display = "none";
	//2020/09/26;6.1.6.9;hiro;V00-20200926003;修正公佈欄內容維護作業(BOARD001)修改內文，查看個人區>公佈欄(Board)內文未變更↑
}

//2019/12/13;6.1.6.7;puruni:V00-20191213002:RESE011 公佈欄新增新版文字編輯區 End
//2021/03/10:6.1.16.1:俊詠：S00-20210302004:因FLASH不支援造成圖片無法插入，重新改寫方式。↓
//增加上傳圖片
function addCustomDialog() {
    //IE不支援，原因是到最後插入圖片的時候Ueditor的JS會掛掉
    if (isIE() !== true) {
        window.UE.registerUI(
            "EFInsertImg",
            function (editor, uiName) {
                // 參考http://ueditor.baidu.com/doc/#COMMAND.LIST
                var btn = new window.UE.ui.Button({
                    name: "dialog-button",
                    title: getI18N('FD', 'BOARD002', 'LblSelect'),//上傳圖片
                    cssRules: "background-image: url('../../../src/_Common/JS/ueditor-1.4.2/image/upload.png') !important;background-size: cover;background-repeat: no-repeat;",
                    onclick: function () {
                        // 開圖片上傳窗                        
                        showDivDialog('UploadImage.aspx', '', 'dialogTop:123px; dialogLeft:262px; dialogHeight:200px; dialogWidth:300px; edge: Sunken; center: No; help: No; resizable: Yes; status: No;', UpLoad_callback, false);
                    }
                });
                editor.addListener('selectionchange', function () {
                    var state = editor.queryCommandState(uiName);
                    //按鈕跟隨文本編輯器的狀態決定要disable還是enable
                    if (state === -1) {
                        btn.setDisabled(true);
                        btn.setChecked(false);
                    } else {
                        btn.setDisabled(false);
                        btn.setChecked(state);
                    }
                });
                return btn;
            }
        );
    }
    var toolBar = document.getElementById('ToolBar');
    if (toolBar !== null && toolBar !== undefined) {
        toolBar.style.setProperty("top", "0px", "important");
    }
}

//上傳圖片開窗後
function UpLoad_callback() {
    var tRetValue = gCallbackReturnValue;
    if (tRetValue) {
        //
        afterUpLoad(tRetValue);
    }
}

//把上傳的圖片插入到文本編輯器
function afterUpLoad(url) {
    window.UE.getEditor('myEditor').execCommand("insertimage", {
        src: url
    });
}

//判斷是不是IE瀏覽器
function isIE() {
    var ua = navigator.userAgent.toLowerCase();
    if (ua.match(/rv:([\d.]+)\) like gecko/) !== null || ua.match(/msie ([\d.]+)/) !== null) {
        return true;
    }
    else {
        return false;
    }
}

//2021/03/10:6.1.16.1:俊詠：S00-20210302004:因FLASH不支援造成圖片無法插入，重新改寫方式。↑
//2021/10/21:6.1.16.3:俊詠：A00-20211019002:1.存草稿內容跟附件會清空2.如果是走組織核決權限，且可以決定送單部門，選完部門送出附件會有但內容會清空不送出附件會變成0，內容也會被清空。↓
function srciptSetAttachNumber(count) {
    var txtDisplayToolAttachment = document.getElementById('MasterPage_MasterPageContent_txtDisplayToolAttachment');
    txtDisplayToolAttachment.innerText = count;
}
//2021/10/21:6.1.16.3:俊詠：A00-20211019002:1.存草稿內容跟附件會清空2.如果是走組織核決權限，且可以決定送單部門，選完部門送出附件會有但內容會清空不送出附件會變成0，內容也會被清空。↑
