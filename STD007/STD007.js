function countAmount(pCountControl , pMoneyControl , pReturnControl)
{
    var tCount = document.getElementById(pCountControl).value.replace(/ /g,"");
    var tMoney = document.getElementById(pMoneyControl).value.replace(/ /g,"");
    if ((tCount != "") && (tMoney != ""))
    {
        tCount = parseFloat(tCount);
        tMoney = parseFloat(tMoney);
     //2008/07/11:Q00-970711002:數值四捨五入後取兩位
        var Sum= tCount*tMoney
        Sum =Math.round(parseFloat(Sum)*100)/100;
        document.getElementById(pReturnControl).value = Sum;
    }
}

//2008/03/4:Q00-970303001:增加判斷表單明細是否有資料
function GetDetialRowCount()
{
   var universalID = document.getElementById("MasterPage_universalID").value;
   var tRetVal = tw.com.dsc.easyflowDotNet.forms.STD007.GetDetialRowCount(universalID);
    if(tRetVal.value == '0')
    {
      var errorMsg = getI18NForSpecial('FD', 'STD007', 'MsgDatechecked','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
          alert(errorMsg);
          return false;
    }
    else
    {
        return true;
    }
}

//2015/03/13;hiro;3.6.6.1;Saucerman專案_支援部門、人員樹狀開窗↓
////edit by teppy 2011/02/08 Start
////部門單選開窗
//function SingleSelectEmpl(pPathPath, pReturnControlClientID,pMJ) {
//    var tdialogHeight = 520;
//    var tdialogWidth = 780;
//    var tdialogTop = (screen.height - tdialogHeight) / 2;
//    var tdialogLeft = (screen.width - tdialogWidth) / 2;
//    var tStyle = "dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No;";
//    var tReturnValue = window.showModalDialog(pPathPath, "", tStyle);
//    if ((tReturnValue != undefined) && (tReturnValue != null) && (tReturnValue != "")) {
//        document.getElementById(pReturnControlClientID).value = tReturnValue;
//        doValidateII(pReturnControlClientID, pMJ, pReturnControlClientID);
//        return true;
//    }
//}
//
////部門多選開窗
//function MultiSelectEmpl(pPathPath, pReturnControlClientID) {
//    var tdialogHeight = 520;
//    var tdialogWidth = 780;
//    var tdialogTop = (screen.height - tdialogHeight) / 2;
//    var tdialogLeft = (screen.width - tdialogWidth) / 2;
//    var tStyle = "dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No;";
//    var tReturnValue = window.showModalDialog(pPathPath, "", tStyle);
//    if ((tReturnValue != undefined) && (tReturnValue != null) && (tReturnValue != "")) {
//        var tTemp = "";
//        var tArr1 = tReturnValue.split("├");
//        var tArr2 = new Array();
//        //by yanglr 20100404 如果有追加標誌，則追加到原文本框中 start
//        if (tReturnValue.indexOf("^Flag=Y") >= 0) {
//            //有追加標誌
//            tTemp = document.getElementById(pReturnControlClientID).value;
//            for (var i = 0; i < tArr1.length; i++) {
//                if (tArr1[i] != "") {
//                    tArr2 = tArr1[i].split("§");
//                    if (tTemp.indexOf(tArr2[0] + "-" + tArr2[1] + ";") < 0) {
//                        tTemp += tArr2[0] + "-" + tArr2[1] + ";";
//                    }
//                }
//            }
//        }
//        else {
//            for (var i = 0; i < tArr1.length; i++) {
//                if (tArr1[i] != "") {
//                    tArr2 = tArr1[i].split("§");
//                    tTemp += tArr2[0] + "-" + tArr2[1] + ";";
//                }
//            }
//        }
//        //by yanglr 20100404 如果有追加標誌，則追加到原文本框中 end
//        document.getElementById(pReturnControlClientID).value = tTemp;
//        return true;
//    }
//    else {
//        if (tReturnValue == "") {
//            document.getElementById(pReturnControlClientID).value = "";
//        }
//        event.returnValue = false;
//        return false;
//    }
//}
////edit by teppy 2011/02/08 End
//2015/03/13;hiro;3.6.6.1;Saucerman專案_支援部門、人員樹狀開窗↑

//2011/9/28:teppy:3.3.1.1:V00-20110901001：修改單價欄位可輸入小數點，V00-20110428006：因程式未簽入，補上數量及單價欄位驗證功能↓
function CheckIsNumber(Field) {
    var value = document.getElementById(Field).value;
    var errorMsg = '';
    if (Field == "MasterPage_MasterPageContent_efstj007_txt")//數量只可輸入整數
    {
        var reg = /^[0-9]*$/;   //只可輸入數字
    }
    else {                                                   //單價可輸入數字及小數點
        //2016/03/17:3.6.6.3:wayne:V00-20151106001:單價若輸入格式為英文+數字會直接通過檢查 Start
        //var reg = /[0-9]|\./; //可輸入數字跟小數點
        var reg = /^(\-|\+)?([0-9]+(\.[0-9]+)?|Infinity)$/;
        //2016/03/17:3.6.6.3:wayne:V00-20151106001:單價若輸入格式為英文+數字會直接通過檢查 End
    }

    if (value != "") {
        if (!reg.test(value)) {
            errorMsg = getI18NForSpecial('FD', 'OASI002', 'MSG003', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx')
            //反白
            document.getElementById(Field).select();
            document.getElementById(Field).value = "";
            alert(errorMsg);
            return false;
        }
        else {
            if (value < 0) {
                errorMsg = getI18NForSpecial('FD', 'OASI002', 'MSG004', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx')
                //反白
                document.getElementById(Field).select();
                document.getElementById(Field).value = "";
                alert(errorMsg);
                return false;
            }
            else {
                return true;
            }
        }
    }
}
//2011/9/28:teppy:3.3.1.1:V00-20110901001：修改單價欄位可輸入小數點，V00-20110428006：因程式未簽入，補上數量及單價欄位驗證功能↑