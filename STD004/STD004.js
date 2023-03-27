//2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↓
function CheckIsNumber(pField) {
    if (document.getElementById(pField) != null) {
        var tFieldValue = document.getElementById(pField).value;
        if (tFieldValue == "") {
            document.getElementById(pField).value = 0;
            return true;
        }

        var errorMsg = '';
        var reg = /^\d+$/;	//只可輸入數字
        if (!reg.test(tFieldValue)) {
            //數值格式不正確
            errorMsg = getI18NForSpecial('FD', 'STD004', 'MSG003', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');

            //2019/4/12:柏瑞:3.6.6.4:G00-20190412004:出差天數以及出差時數已及暫借款輸入非數值型態會一直跳窗顯示無法停止 Start
            //反白
            //document.getElementById(pField).select();

            if (pField == "MasterPage_MasterPageContent_efstf011_txt") {
                document.getElementById(pField).value = 0;
            }
            else {
                if (document.getElementById("MasterPage_MasterPageContent_efstf014_chk").checked)
                    document.getElementById(pField).value = 0;
                else {
                    if (checkInCalendarRange()) {
                        computeDate();
                    }
                }
            }

            //2019/4/12:柏瑞:3.6.6.4:G00-20190412004:出差天數以及出差時數已及暫借款輸入非數值型態會一直跳窗顯示無法停止 End

            alert(errorMsg);
            return false;
        }
        else {
            if (tFieldValue < 0) {
                if (pField == "MasterPage_MasterPageContent_efstf007_txt")//出差天數不可小於0!
                    errorMsg = getI18NForSpecial('Message', 'STD004JS', 'JSMsg001', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
                else if (pField == "MasterPage_MasterPageContent_efstf011_txt")//暫借款不可小於0!
                    errorMsg = getI18NForSpecial('Message', 'STD004JS', 'JSMsg002', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');

                //2019/4/12:柏瑞:3.6.6.4:G00-20190412004:出差天數以及出差時數已及暫借款輸入非數值型態會一直跳窗顯示無法停止 Start
                //反白
                //document.getElementById(pField).select();

                if (pField == "MasterPage_MasterPageContent_efstf011_txt") {
                    document.getElementById(pField).value = 0;
                }
                else {
                    if (document.getElementById("MasterPage_MasterPageContent_efstf014_chk").checked)
                        document.getElementById(pField).value = 0;
                    else {
                        if (checkInCalendarRange()) {
                            computeDate();
                        }
                    }

                }
                alert(errorMsg);

                //2019/4/12:柏瑞:3.6.6.4:G00-20190412004:出差天數以及出差時數已及暫借款輸入非數值型態會一直跳窗顯示無法停止 End
                return false;
            }
        }
    }
    return true;
}

function CheckIsFloat(pField) {
    if (document.getElementById(pField) != null) {
        var tFieldValue = document.getElementById(pField).value;
        if (tFieldValue == "") {
            document.getElementById(pField).value = 0;
            return true;
        }

        var errorMsg = '';
        var reg = /^\d+(?:\.\d+)?$/;	//只可輸入數字(含小數)
        if (!reg.test(tFieldValue)) {
            //數值格式不正確
            errorMsg = getI18NForSpecial('FD', 'STD004', 'MSG003', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
            //2019/4/12:柏瑞:3.6.6.4:G00-20190412004:出差天數以及出差時數已及暫借款輸入非數值型態會一直跳窗顯示無法停止 Start
            //反白
            //document.getElementById(pField).select();

            if (document.getElementById("MasterPage_MasterPageContent_efstf014_chk").checked)
                document.getElementById(pField).value = 0;
            else {
                if (checkInCalendarRange()) {
                    computeDate();
                }
            }

            alert(errorMsg);
            //2019/4/12:柏瑞:3.6.6.4:G00-20190412004:出差天數以及出差時數已及暫借款輸入非數值型態會一直跳窗顯示無法停止 End
            return false;
        }
        else {
            if (tFieldValue < 0) {
                //出差時數不可小於0！
                errorMsg = getI18NForSpecial('Message', 'STD004JS', 'JSMsg003_1', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');

                //2019/4/12:柏瑞:3.6.6.4:G00-20190412004:出差天數以及出差時數已及暫借款輸入非數值型態會一直跳窗顯示無法停止 Start
                //反白
                //document.getElementById(pField).select();

                if (document.getElementById("MasterPage_MasterPageContent_efstf014_chk").checked)
                    document.getElementById(pField).value = 0;
                else {
                    if (checkInCalendarRange()) {
                        computeDate();
                    }
                }

                alert(errorMsg);

                //2019/4/12:柏瑞:3.6.6.4:G00-20190412004:出差天數以及出差時數已及暫借款輸入非數值型態會一直跳窗顯示無法停止 End
                return false;
            }
            else if (tFieldValue >= 24) {
                //出差時數不可大於24！
                errorMsg = getI18NForSpecial('Message', 'STD004JS', 'JSMsg003_2', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');

                //2019/4/12:柏瑞:3.6.6.4:G00-20190412004:出差天數以及出差時數已及暫借款輸入非數值型態會一直跳窗顯示無法停止 Start
                //反白
                //document.getElementById(pField).select();

                if (document.getElementById("MasterPage_MasterPageContent_efstf014_chk").checked)
                    document.getElementById(pField).value = 0;
                else {
                    if (checkInCalendarRange()) {
                        computeDate();
                    }
                }

                alert(errorMsg);

                //2019/4/12:柏瑞:3.6.6.4:G00-20190412004:出差天數以及出差時數已及暫借款輸入非數值型態會一直跳窗顯示無法停止 End
                return false;
            }
        }
    }
    return true;
}
//2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↑

function checkIntegerFormat() {
    var tLoan = document.getElementById("MasterPage_MasterPageContent_efstf011_txt").value;
    if (tLoan != "") {
        var tStrNumber = document.getElementById("MasterPage_MasterPageContent_efstf011_txt").value;
        var tIntNumber = parseInt(document.getElementById("MasterPage_MasterPageContent_efstf011_txt").value);
        var tFloatNumber = parseFloat(document.getElementById("MasterPage_MasterPageContent_efstf011_txt").value);
        var tNaNNumber = isNaN(tIntNumber);
        if (tNaNNumber == true || tIntNumber != tFloatNumber || tIntNumber != tStrNumber || tIntNumber < 0) {
            var tMsgCode = getI18NForSpecial('FD', 'STD004', 'MSG003', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx')
            alert(tMsgCode);
            document.getElementById("MasterPage_MasterPageContent_efstf011_txt").value = "0";
        }
    }
}


//2014/09/23;hiro;3.6.6.1;V00-20140923001;修正起始時間、截止時間空白，按下送出沒反應↓
function BtnCreateToolSendForm_SaveCheck() {
    var errorMsg = "";
    //請假人
    var tUserID = $("#MasterPage_MasterPageContent_efstf003_txt").val().trim();
    //起始時間
    var tDateS = $("#MasterPage_MasterPageContent_efstf005_txt").val().trim();
    //截止時間
    var tDateE = $("#MasterPage_MasterPageContent_efstf006_txt").val().trim();
    if (tUserID == "" || tDateS == "" || tDateE == "")
        return true;//必填欄位空白，統一顯示平台欄位未填值格式

    if (tDateS > tDateE) {
        $("#MasterPage_MasterPageContent_efstf006_txt").val("");
        $("#MasterPage_MasterPageContent_efstf007_txt").val("");
        $("#MasterPage_MasterPageContent_efstf008_txt").val("");
        //「起始時間」不可晚於「截止時間」！
        errorMsg = getI18NForSpecial('FD', 'STD004', 'MSG002', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');//
        alert(errorMsg);
        return false;
    }
    else {
        //檢查起始時間/截止時間是否在行事曆範圍內
        if (checkInCalendarRange()) {
            computeDate();
        }
    }

    return true;
}
//2014/09/23;hiro;3.6.6.1;V00-20140923001;修正起始時間、截止時間空白，按下送出沒反應↑


//2011/12/28:teppy:3.3.3.1:A00-20111228001:修正起始日期設定晚於截止日期會跳三次提示視窗↓
//驗證輸入日期
function validateDate() {
    var errorMsg = '';
    var dateS = document.getElementById("MasterPage_MasterPageContent_efstf005_txt").value;
    var dateE = document.getElementById("MasterPage_MasterPageContent_efstf006_txt").value;
    var userId = document.getElementById("MasterPage_MasterPageContent_efstf003_txt").value;
    var langType = document.getElementById('MasterPage_MasterPageContent_hiddenLanguageType').value;
    if (dateS == '' || dateE == '') {
        return false;
    }
    if (dateS != '' && dateE != '') {
        //訖要大於起        if (dateS > dateE) {
            errorMsg = getI18NForSpecial('FD', 'STD004', 'MSG002', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx')
        }
        //2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↓
        //else
        //{
        //	errorMsg = tw.com.dsc.easyflowDotNet.forms.STD004.ValidateInputDate(dateS,dateE,userId,langType).value;
        //}
        //2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↑
    }
    if (errorMsg != '') {
        document.getElementById("MasterPage_MasterPageContent_efstf006_txt").value = '';
        document.getElementById("MasterPage_MasterPageContent_efstf007_txt").value = '';
        document.getElementById("MasterPage_MasterPageContent_efstf008_txt").value = '';
        alert(errorMsg);
        return false;
    }
    return true;
}
//2011/12/28:teppy:3.3.3.1:A00-20111228001:修正起始日期設定晚於截止日期會跳三次提示視窗↑

//2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↓
function checkInCalendarRange() {
    var bCheckHolidayWork = document.getElementById("MasterPage_MasterPageContent_efstf014_chk").checked;

    var errorMsg = '';
    var dateS = document.getElementById("MasterPage_MasterPageContent_efstf005_txt").value.trim();
    var dateE = document.getElementById("MasterPage_MasterPageContent_efstf006_txt").value.trim();
    if (dateS.length == 0 || dateE.length == 0) {
        //如果沒有日期，就跳過檢查是不是在行事曆範圍內
        if (bCheckHolidayWork)
            $('#DivNoteList').show('slow');
        else
            $('#DivNoteList').hide();
        return true;
    }
    var userId = document.getElementById("MasterPage_MasterPageContent_efstf003_txt").value;
    var langType = document.getElementById('MasterPage_MasterPageContent_hiddenLanguageType').value;
    errorMsg = tw.com.dsc.easyflowDotNet.forms.STD004.ValidateInputDate(dateS, dateE, userId, langType).value;

    if (errorMsg != '') {
        $('#DivNoteList').show('slow');
        return false;
    }
    else {
        if (bCheckHolidayWork)
            $('#DivNoteList').show('slow');
        else
            $('#DivNoteList').hide();
    }

    return true;
}
//2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↑

//計算天數
function computeDate() {
    var dateS = document.getElementById("MasterPage_MasterPageContent_efstf005_txt").value;
    var dateE = document.getElementById("MasterPage_MasterPageContent_efstf006_txt").value;
    if (dateS.length == 0 || dateE.length == 0) {
        return;
    }
    //2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↓
    if (!document.getElementById("MasterPage_MasterPageContent_efstf014_chk").checked) {
        //2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↑
        var userId = document.getElementById("MasterPage_MasterPageContent_efstf003_txt").value;
        var langType = document.getElementById('MasterPage_MasterPageContent_hiddenLanguageType').value;
        var result = tw.com.dsc.easyflowDotNet.forms.STD004.CountBusinessLeaveHours(dateS, dateE, userId).value.split('@');
        document.getElementById("MasterPage_MasterPageContent_efstf007_txt").value = result[0];
        document.getElementById("MasterPage_MasterPageContent_efstf008_txt").value = result[1];
        //2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↓
    }
    //2012/02/22:hiro:3.3.3.2:S00-20120117002:修改為允許假日出差↑
}
//2013/07/01:jarvis:3.6.1.1:S00-20130626002:1.修正多選開窗皆改為唯讀。↓
//function getReturnValues(setField)
//{
//    if(document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value != null && document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value != "")
//    {
//        var tValueA = unescape(document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value);
//        document.getElementById("MasterPage_MasterPageContent_efstf012_txt").value = tValueA.replace(/├/g,";").replace(/§/g,"-");
//        document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value = "";
//    }
//}
function getMultiOpenWindowValues(setField) {
    if (event.returnValue != false && document.getElementById("MasterPage_MasterPageContent_edReceiver_txt") != null) {
        var tValueA = unescape(document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value);
        document.getElementById(setField).value = "";
        var tArr1 = tValueA.split("├");
        var tArr2 = new Array();
        for (var i = 0; i < tArr1.length; i++) {
            if (tArr1[i] != "") {
                tArr2 = tArr1[i].split("§");
                if (tArr2.length > 1)
                    document.getElementById(setField).value += tArr2[0] + "-" + tArr2[1] + ";";
                else
                    document.getElementById(setField).value += tArr2[0] + ";";
            }
        }
        document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value = "";
    }
}
//2013/07/01:jarvis:3.6.1.1:S00-20130626002:1.修正多選開窗皆改為唯讀。↑
////2008/09/15:SHIN:A01-970908004:因為會自動做MIMJ所以user所填的值會變回原來的代理人所以就做了以下這段先放在一個隱藏欄位在把值放進去尾隨值
//function CheckData()
//{
//   document.getElementById("MasterPage_MasterPageContent_efstf003_txt2").innerHTML = document.getElementById("MasterPage_MasterPageContent_TextBox1").value;
//}

//2015/03/13;hiro;3.6.6.2;Saucerman專案_支援部門、人員樹狀開窗↓
////edit by teppy 2011/02/08 Start
////部門單選開窗
//function SingleSelectEmpl(pPathPath, pReturnControlClientID, pMJ)
//{
//    var tdialogHeight = 520;
//    var tdialogWidth = 780;
//    var tdialogTop = (screen.height - tdialogHeight) / 2;
//    var tdialogLeft = (screen.width - tdialogWidth) / 2;
//    var tStyle = "dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No;";
//    var tReturnValue = window.showModalDialog(pPathPath, "", tStyle);
//    if ((tReturnValue != undefined) && (tReturnValue != null) && (tReturnValue != ""))
//    {
//        document.getElementById(pReturnControlClientID).value = tReturnValue;
//        doValidateII(pReturnControlClientID, pMJ, pReturnControlClientID);
//        return true;
//    }
//}
//
////2013/07/01:jarvis:3.6.1.1:S00-20130626002:2.樹狀Text開窗，自動勾選已存在的資料。↓
//////部門多選開窗
////function MultiSelectEmpl(pPathPath, pReturnControlClientID) {
////    var tdialogHeight = 520;
////    var tdialogWidth = 780;
////    var tdialogTop = (screen.height - tdialogHeight) / 2;
////    var tdialogLeft = (screen.width - tdialogWidth) / 2;
////    var tStyle = "dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No;";
////    var tReturnValue = window.showModalDialog(pPathPath, "", tStyle);
////    if ((tReturnValue != undefined) && (tReturnValue != null) && (tReturnValue != "")) {
////        var tTemp = "";
////        var tArr1 = tReturnValue.split("├");
////        var tArr2 = new Array();
////        //by yanglr 20100404 如果有追加標誌，則追加到原文本框中 start
////        if (tReturnValue.indexOf("^Flag=Y") >= 0) {
////            //有追加標誌
////            tTemp = document.getElementById(pReturnControlClientID).value;
////            for (var i = 0; i < tArr1.length; i++) {
////                if (tArr1[i] != "") {
////                    tArr2 = tArr1[i].split("§");
////                    if (tTemp.indexOf(tArr2[0] + "-" + tArr2[1] + ";") < 0) {
////                        tTemp += tArr2[0] + "-" + tArr2[1] + ";";
////                    }
////                }
////            }
////        }
////        else {
////            for (var i = 0; i < tArr1.length; i++) {
////                if (tArr1[i] != "") {
////                    tArr2 = tArr1[i].split("§");
////                    tTemp += tArr2[0] + "-" + tArr2[1] + ";";
////                }
////            }
////        }
////        //by yanglr 20100404 如果有追加標誌，則追加到原文本框中 end
////        document.getElementById(pReturnControlClientID).value = tTemp;
////        return true;
////    }
////    else {
////        //edit by teppy 2011/03/15 Start
////        //若使用者未選值，仍舊保留原有項目
////        //if (tReturnValue == "") {
////        //document.getElementById(pReturnControlClientID).value = "";
////        //}
////        //edit by teppy 2011/03/15 End
////        event.returnValue = false;
////        return false;
////    }
////}
//function MultiSelectEmpl(pPathPath, pReturnControlClientID)
//{
//    var tdialogHeight = 520;
//    var tdialogWidth = 780;
//    var tdialogTop = (screen.height - tdialogHeight) / 2;
//    var tdialogLeft = (screen.width - tdialogWidth) / 2;
//    var tStyle = "dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No;";
//    //將既存資料帶過去
//    var tExistData = document.getElementById(pReturnControlClientID).value;
//    tExistData = tExistData.replace(/-/g, "§");
//    tExistData = tExistData.replace(/;/g, "┼");
//    if (tExistData.length > 0)
//    {
//        tExistData = tExistData.substring(0, tExistData.length - 1);
//    }
//    pPathPath = pPathPath + "&ExistData=" + encodeURI(tExistData);
//    var tReturnValue = window.showModalDialog(pPathPath, "", tStyle);
//
//    if ((tReturnValue != undefined) && (tReturnValue != null))
//    {
//        var objTargetValue = "";
//        var tArr1 = tReturnValue.split("├");
//        var tArr2 = new Array();
//
//        document.getElementById(pReturnControlClientID).value = "";//先清空hide欄位
//        objTargetValue = document.getElementById(pReturnControlClientID).value;
//        for (var i = 0; i < tArr1.length; i++)
//        {
//            if (tArr1[i] != "")
//            {
//                tArr2 = tArr1[i].split("§");
//                //MI回傳值1個以上時，僅顯示第1、2個MI回傳值，部門、人員開窗都會回傳至少兩個回傳值
//                objTargetValue += tArr2[0] + "-" + tArr2[1] + ";";
//            }
//        }
//
//        document.getElementById(pReturnControlClientID).value = objTargetValue;
//
//        return true;
//    }
//    else
//    {
//        //不做任何動作
//        event.returnValue = false;
//        return false;
//    }
//}
////2013/07/01:jarvis:3.6.1.1:S00-20130626002:2.樹狀Text開窗，自動勾選已存在的資料。↑
////edit by teppy 2011/02/08 End
//2015/03/13;hiro;3.6.6.2;Saucerman專案_支援部門、人員樹狀開窗↑
