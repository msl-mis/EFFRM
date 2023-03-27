function checkIntegerFormat()
{
    var tLoan = document.getElementById("MasterPage_MasterPageContent_efstf011_txt").value;
    
	if(tLoan != "")
	{
		var tStrNumber = document.getElementById("MasterPage_MasterPageContent_efstf011_txt").value;
		var tIntNumber = parseInt(document.getElementById("MasterPage_MasterPageContent_efstf011_txt").value);
		var tFloatNumber = parseFloat(document.getElementById("MasterPage_MasterPageContent_efstf011_txt").value);
		
		var tNaNNumber = isNaN(tIntNumber);
		
		if(tNaNNumber == true || tIntNumber != tFloatNumber || tIntNumber != tStrNumber || tIntNumber < 0)
		{
			var tMsgCode = getI18NForSpecial('FD', 'STD004', 'MSG003', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx')
			alert(tMsgCode);

			document.getElementById("MasterPage_MasterPageContent_efstf011_txt").value = "0";
		}
	}
}

function compareDate()
{
    var tStartDate = document.getElementById("MasterPage_MasterPageContent_efstf005_txt").value;
    var tEndDate = document.getElementById("MasterPage_MasterPageContent_efstf006_txt").value;
    
    if(tStartDate != "")
	{
	    if(tEndDate != "")
	    {
	        if(tStartDate > tEndDate)
	        {
	            var tMsgCode = getI18NForSpecial('FD', 'STD004', 'MSG002', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx')
				alert(tMsgCode);
				
				document.getElementById("MasterPage_MasterPageContent_efstf005_txt").value = "";		
				document.getElementById("MasterPage_MasterPageContent_efstf006_txt").value = "";
				document.getElementById("MasterPage_MasterPageContent_efstf007_txt").value = "";
	        }
	    }   	    
	}
}

function computeDate()
{
    var tStartDate = document.getElementById("MasterPage_MasterPageContent_efstf005_txt").value;
    var tEndDate = document.getElementById("MasterPage_MasterPageContent_efstf006_txt").value;
    
    if(tStartDate != "")
	{
	    if(tEndDate != "")
	    {
	        document.getElementById("MasterPage_MasterPageContent_efstf007_txt").value = subtractDate(tStartDate,tEndDate);
	    }   	    
	}
}

function subtractDate(Date1,Date2)
{
    var tYear1 = parseInt(Date1.substr(0,4));
    var tYear2 = parseInt(Date2.substr(0,4));
    var tMonth1 = parseInt(Date1.substr(5,2));
    var tMonth2 = parseInt(Date2.substr(5,2));
    var tDay1 = parseInt(Date1.substr(8,2));
    var tDay2 = parseInt(Date2.substr(8,2));
    var tDate1 = new Date(Date1)
    var tDate2 = new Date(Date2)
    var tDate = parseInt(((tDate2.getTime() - tDate1.getTime()) / (24 * 60 * 60 * 1000))) + 1;
	
	return tDate;
} 

function computeTime()
{
    var tStartDate = document.getElementById("MasterPage_MasterPageContent_efstf005_txt").value;
    var tEndDate = document.getElementById("MasterPage_MasterPageContent_efstf006_txt").value;
    
    if(tStartDate != "")
	{
	    if(tEndDate != "")
	    {
	        document.getElementById("MasterPage_MasterPageContent_efstf008_txt").value = subtractTime(tStartDate,tEndDate);
	    }   	    
	}
}

function subtractTime(Time1,Time2)
{
    var tTime1 = new Date(Time1);
    var tTime2 = new Date(Time2);
    
    var tTime = parseInt(((tTime2.getTime() - tTime1.getTime()) / (60 * 60 * 1000)));
	
	return tTime;
} 

function getReturnValues(setField)
{
    if(document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value != null && document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value != "")
    {       
        var tValueA = unescape(document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value);           
        document.getElementById("MasterPage_MasterPageContent_efstf012_txt").value = tValueA.replace(/├/g,";").replace(/§/g,"-");
        document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value = "";
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
//
//        return true;
//    }
//}
//
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
//
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
//
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
