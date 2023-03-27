//2009/03/10:2.1.1.1:豐穎:A01-980309004:若截止時間小於起始時間，則將截止時間改成與起始時間同一天
//2011/02/08:teppy:3.2.1.4:S00-20101223003:新增一筆參數設定 WindowOpenStyle, 值為 1,2  1.為原本的開窗方式  2.為樹狀的開窗
//2011/03/17:teppy:3.2.1.5:S00-20110106002:新增查詢各年度請假總數功能
//2013/01/02:elvis:3.5.1.3:S00-20121029013:修改為可自行輸入天數、時數和更新SQL
//2014/08/13:elvis:3.5.3.1:V00-20140813001:修正請假單沒輸入日期，按下送出沒反應
//2015/03/12:elvis:3.6.6.3:V00-20150312001:新增支持Chrome開窗

//edit by elvis 2015/03/12 Start
/*
function Redirect()
{
//alert(tw.com.dsc.easyflowDotNet.kernelBasePage.EFBasePage.TEST('A','AAAA'));
var tStyle = "scrollbars=Yes,resizable=Yes";
var efstc003 = document.getElementById("MasterPage_MasterPageContent_efstc003_txt").value;
//edit by teppy 2011/03/17 Start
var efstc011 = document.getElementById("MasterPage_MasterPageContent_efstc011_txt").value;
if (efstc011 == "" || efstc011 == "undefined") {
var date = new Date();
efstc011 = date.getFullYear();
}
//var tUrl = "STD002_LeaveSummary.aspx?query=Yes&strUserID=" + efstc003 ;
var tUrl = "STD002_LeaveSummary.aspx?query=Yes&strUserID=" + efstc003 + " &strYear=" + efstc011;
//edit by teppy 2011/03/17 End
window.open(tUrl, 'STD002_LeaveSummary', tStyle);
}
*/

function Redirect() 
{
    var tStyle = "scrollbars=Yes,resizable=Yes";
    var efstc003 = document.getElementById("MasterPage_MasterPageContent_efstc003_txt").value;

    var efstc011 = document.getElementById("MasterPage_MasterPageContent_efstc011_txt").value;
    if (efstc011 == "" || efstc011 == "undefined") 
    {
        var date = new Date();
        efstc011 = date.getFullYear();
    }

    var tUrl = "STD002_LeaveSummary.aspx?query=Yes&strUserID=" + efstc003 + " &strYear=" + efstc011;

    if (gIsIEBrowser) 
    {
        window.open(tUrl, 'STD002_LeaveSummary', tStyle);
    }
    else 
    {
        showDivDialog(tUrl, "", tStyle, null, false);
    }
}
//edit by elvis 2015/03/12 End

//檢查年份是否為數字，而且不得小於0
function CheckIsNumber(AmoutField) {
    var Amout = document.getElementById(AmoutField).value;
    var errorMsg = '';
    var reg = /^[0-9]*$/;
    if (!reg.test(Amout)) {
        errorMsg = getI18NForSpecial('FD', 'OASI002', 'MSG003', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
        alert(errorMsg);
        return false;
    }   
}


//2014/09/22;hiro;3.6.6.1;A00-20140919002;修正日期控制項不在行事曆上班時間，勾選自行輸入請假天數亦無法送單↓
function BtnCreateToolSendForm_SaveCheck(){
	var errorMsg="";
	//請假人
	var tUserID = $("#MasterPage_MasterPageContent_efstc003_txt").val().trim();
	//起始時間
	var tDateS = $("#MasterPage_MasterPageContent_efstc006_txt").val().trim();
	//截止時間
	var tDateE = $("#MasterPage_MasterPageContent_efstc007_txt").val().trim();
	if(tUserID=="" || tDateS=="" || tDateE=="")
		return true;//必填欄位空白，統一顯示平台欄位未填值格式

	if(tDateS > tDateE){
		//「起始時間」不可晚於「截止時間」！
		errorMsg=getI18NForSpecial('FD', 'STD002', 'MSG002', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');//
		alert(errorMsg);

		//若截止時間小於起始時間，則將截止時間改成與起始時間同一天
		$("#MasterPage_MasterPageContent_efstc007_txt").val(tDateS);
		return false;
	}
	else{
		//檢查起始時間/截止時間是否在行事曆範圍內
		if(checkInCalendarRange()){
			computeDate();
		}
	}

	return true;
}
//2014/09/22;hiro;3.6.6.1;A00-20140919002;修正日期控制項不在行事曆上班時間，勾選自行輸入請假天數亦無法送單↑

//驗證輸入日期
function validateDate()
{
    var errorMsg = '';
    var dateS = document.getElementById("MasterPage_MasterPageContent_efstc006_txt").value;
    var dateE = document.getElementById("MasterPage_MasterPageContent_efstc007_txt").value;
    var userId = document.getElementById("MasterPage_MasterPageContent_efstc003_txt").value;
    //2014/04/14;hiro;支援Chrome↓
	//var langType = document.getElementById('MasterPage$MasterPageContent$hiddenLanguageType').value;
	var langType = $('#MasterPage_MasterPageContent_hiddenLanguageType').val();
    //2014/04/14;hiro;支援Chrome↑

	if (dateS == '' || dateE == '') 
	{
		//2014/09/22;hiro;3.6.6.1;A00-20140919002;修正日期控制項不在行事曆上班時間，勾選自行輸入請假天數亦無法送單↓
		////edit by elvis 2014/08/13 Start
		////return false;
		//return true;
		////edit by elvis 2014/08/13 End
		return false;
		//2014/09/22;hiro;3.6.6.1;A00-20140919002;修正日期控制項不在行事曆上班時間，勾選自行輸入請假天數亦無法送單↑
    }

    if (dateS != '' && dateE != '')
    {
        //訖要大於起
        if (dateS > dateE)
        {
            errorMsg = getI18NForSpecial('FD', 'STD002', 'MSG002', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx')
            //edit by 豐穎 2009/03/10 Start
            var Edate = tw.com.dsc.easyflowDotNet.forms.STD002.GetEndDate(dateS).value
            document.getElementById("MasterPage_MasterPageContent_efstc007_txt").value = Edate;
            alert(errorMsg);
			//2014/09/22;hiro;3.6.6.1;A00-20140919002;修正日期控制項不在行事曆上班時間，勾選自行輸入請假天數亦無法送單↓
			//return true;
			if(checkInCalendarRange()){
				computeDate();
			}
			return false;
			//2014/09/22;hiro;3.6.6.1;A00-20140919002;修正日期控制項不在行事曆上班時間，勾選自行輸入請假天數亦無法送單↑
            //edit by 豐穎 2009/03/10 End
        }
        //edit by elvis 2013/01/02 Start
//        else
//        {
//            //edit by KYL 2012/09/05 Start
//            //errorMsg = tw.com.dsc.easyflowDotNet.forms.STD002.ValidateInputDate(dateS, dateE).value;
//            errorMsg = tw.com.dsc.easyflowDotNet.forms.STD002.ValidateInputDate(dateS, dateE, userId).value;
//            //edit by KYL 2012/09/05 End
//        }
        //edit by elvis 2013/01/02 End
    }

    if (errorMsg != '')
    {       
        alert(errorMsg);
        document.getElementById("MasterPage_MasterPageContent_efstc008_txt").value = '';
        document.getElementById("MasterPage_MasterPageContent_efstc009_txt").value = '';
        return false;
    }
    return true;
}

////edit by 豐穎 2009/03/10 Start
////若截止時間小於起始時間，則將截止時間改成與起始時間同一天
//function Transform_Time(dt)
//{
//    dt =new Date(dt);
//    y = dt.getFullYear();
//    m = Right(("0" + (dt.getMonth() + 1)),2);
//    d = Right(("0" + dt.getDate()),2);
//    hh = Right(("0" + dt.getHours()),2);
//    mm = Right(("0" + dt.getMinutes()),2);
//   date = y + "/" + m + "/" + d +" "+ hh + ":" + mm ;
//    return date;
//}
////edit by 豐穎 2009/03/10 End

//計算天數
function computeDate()
{
    //edit by elvis 2013/01/02 Start
//    var dateS = document.getElementById("MasterPage_MasterPageContent_efstc006_txt").value;
//    var dateE = document.getElementById("MasterPage_MasterPageContent_efstc007_txt").value;
//    var userId = document.getElementById("MasterPage_MasterPageContent_efstc003_txt").value;
//    var result = tw.com.dsc.easyflowDotNet.forms.STD002.CountBusinessLeaveHours(dateS, dateE, userId).value.split('@');
//    document.getElementById("MasterPage_MasterPageContent_efstc008_txt").value = result[0];
//    document.getElementById("MasterPage_MasterPageContent_efstc009_txt").value = result[1];

    var dateS = document.getElementById("MasterPage_MasterPageContent_efstc006_txt").value;
    var dateE = document.getElementById("MasterPage_MasterPageContent_efstc007_txt").value;
    
    if(dateS.length==0 || dateE.length==0)
    {
		return;
	}
	
	if(!document.getElementById("MasterPage_MasterPageContent_efstc012_chk").checked)
	{
        var userId = document.getElementById("MasterPage_MasterPageContent_efstc003_txt").value;
        var result = tw.com.dsc.easyflowDotNet.forms.STD002.CountBusinessLeaveHours(dateS, dateE, userId).value.split('@');
        document.getElementById("MasterPage_MasterPageContent_efstc008_txt").value = result[0];
        document.getElementById("MasterPage_MasterPageContent_efstc009_txt").value = result[1];
    }
    //edit by elvis 2013/01/02 End
}

////2008/09/15:SHIN:A01-970908004:因為會自動做MIMJ所以user所填的值會變回原來的代理人所以就做了以下這段先放在一個隱藏欄位在把值放進去尾隨值
//function CheckData()
//{
//   document.getElementById("MasterPage_MasterPageContent_efstc003_txt2").innerHTML = document.getElementById("MasterPage_MasterPageContent_TextBox1").value;
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
//    var tReturnValue = window.showModalDialog(pPathPath , "", tStyle);
//    if ((tReturnValue != undefined) && (tReturnValue != null) && (tReturnValue != ""))
//    {      
//        document.getElementById(pReturnControlClientID).value = tReturnValue;
//        doValidateII(pReturnControlClientID, pMJ, pReturnControlClientID);
//
//        return true;        
//    }
//}
//
//
////部門多選開窗
//function MultiSelectEmpl(pPathPath, pReturnControlClientID)
//{
//    var tdialogHeight = 520;
//    var tdialogWidth = 780;
//    var tdialogTop = (screen.height - tdialogHeight) / 2;
//    var tdialogLeft = (screen.width - tdialogWidth) / 2;
//    var tStyle = "dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No;";
//    var tReturnValue = window.showModalDialog(pPathPath , "", tStyle);
//    if ((tReturnValue != undefined) && (tReturnValue != null) && (tReturnValue != ""))
//    {
//        var tTemp = "";
//        var tArr1 = tReturnValue.split("├");
//        var tArr2 = new Array();
//
//	    //by yanglr 20100404 如果有追加標誌，則追加到原文本框中 start 
//        if(tReturnValue.indexOf("^Flag=Y") >= 0)
//        {
//            //有追加標誌
//            tTemp = document.getElementById(pReturnControlClientID).value;
//            for(var i=0;i<tArr1.length;i++)
//            {
//                if(tArr1[i] != "")
//                {
//                    tArr2 = tArr1[i].split("§");
//                    if(tTemp.indexOf(tArr2[0] + "-" + tArr2[1] + ";") < 0)
//                    {
//                        tTemp += tArr2[0] + "-" + tArr2[1] + ";";
//                    }
//                }
//            }
//        }
//        else
//        {
//            for(var i=0;i<tArr1.length;i++)
//            {
//                if(tArr1[i] != "")
//                {
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
//    else
//    {
//        if(tReturnValue == "")
//	    {
//		    document.getElementById(pReturnControlClientID).value = "";
//	    }
//        event.returnValue = false;
//        return false;
//    }
//}
////edit by teppy 2011/02/08 End
//2015/03/13;hiro;3.6.6.2;Saucerman專案_支援部門、人員樹狀開窗↑

//edit by elvis 2013/01/02 Start
function CheckIsNumber(pField) {
	if (document.getElementById(pField) != null)
	{
		var tFieldValue = document.getElementById(pField).value;
		if(tFieldValue==""){
			document.getElementById(pField).value=0;
			return true;s
		}

		var errorMsg = '';
		var reg = /^\d+$/;	//只可輸入數字
		if (!reg.test(tFieldValue)) {
			//數值格式不正確
            errorMsg = getI18NForSpecial('FD', 'STD002', 'MSG004', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');

            //2019/04/12;柏瑞;3.6.6.7;G00-20190412001;請假天數輸入非數值型態會一直會一直跳窗顯示無法停止 Start
			//反白         
            //document.getElementById(pField).select();

            if (validateDate()) {
                if (checkInCalendarRange())
                    computeDate();
            }

            if (document.getElementById("MasterPage_MasterPageContent_efstc012_chk").checked)
                document.getElementById(pField).value = "1";
            //2019/04/12;柏瑞;3.6.6.7;G00-20190412001;請假天數輸入非數值型態會一直會一直跳窗顯示無法停止 End
           
			alert(errorMsg);
			return false;
		}
		else{
			if (tFieldValue < 0)
			{
				if(pField=="MasterPage_MasterPageContent_efstf007_txt")//請假天數不可小於0!
				{
                    errorMsg = getI18NForSpecial('Message', 'STD002JS', 'JSMsg001', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');								    
                    //2019/04/12;柏瑞;3.6.6.7;G00-20190412001;請假天數輸入非數值型態會一直會一直跳窗顯示無法停止 Start
				    //反白
				    //document.getElementById(pField).select();

                    if (validateDate()) {
                        if (checkInCalendarRange())
                            computeDate();
                    }

                    if (document.getElementById("MasterPage_MasterPageContent_efstc012_chk").checked)
                        document.getElementById(pField).value = "1";

                    //2019/04/12;柏瑞;3.6.6.7;G00-20190412001;請假天數輸入非數值型態會一直會一直跳窗顯示無法停止 End

				    alert(errorMsg);
				}
				return false;
			}
		}
	}
	return true;
}

function CheckIsFloat(pField) {
	if (document.getElementById(pField) != null)
	{
		var tFieldValue = document.getElementById(pField).value;
		if(tFieldValue==""){
			document.getElementById(pField).value=0;
			return true;
		}

		var errorMsg = '';
		var reg = /^\d+(?:\.\d+)?$/;	//只可輸入數字(含小數)
		if (!reg.test(tFieldValue)) {
			//數值格式不正確
            errorMsg = getI18NForSpecial('FD', 'STD002', 'MSG004', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');

            //2019/04/12;柏瑞;3.6.6.7;G00-20190412001;請假天數輸入非數值型態會一直會一直跳窗顯示無法停止 Start
			//反白
			//document.getElementById(pField).select();

            if (validateDate()) {
                if (checkInCalendarRange())
                    computeDate();
            }

            if (document.getElementById("MasterPage_MasterPageContent_efstc012_chk").checked)
                document.getElementById(pField).value = "0";

            //2019/04/12;柏瑞;3.6.6.7;G00-20190412001;請假天數輸入非數值型態會一直會一直跳窗顯示無法停止 End
			alert(errorMsg);
			return false;
		}
		else{
			if (tFieldValue < 0)
			{
				//請假時數不可小於0！
                errorMsg = getI18NForSpecial('Message', 'STD002JS', 'JSMsg003_1', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');


                //2019/04/12;柏瑞;3.6.6.7;G00-20190412001;請假天數輸入非數值型態會一直會一直跳窗顯示無法停止 Start
				//反白
				//document.getElementById(pField).select();

                if (validateDate()) {
                    if (checkInCalendarRange())
                        computeDate();
                }

                if (document.getElementById("MasterPage_MasterPageContent_efstc012_chk").checked)
                    document.getElementById(pField).value = "0";
                //2019/04/12;柏瑞;3.6.6.7;G00-20190412001;請假天數輸入非數值型態會一直會一直跳窗顯示無法停止 End
				alert(errorMsg);
				return false;
			}
			else if(tFieldValue>=24){
				//請假時數不可大於24！
                errorMsg = getI18NForSpecial('Message', 'STD002JS', 'JSMsg003_2', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');

                //2019/04/12;柏瑞;3.6.6.7;G00-20190412001;請假天數輸入非數值型態會一直會一直跳窗顯示無法停止 Start
				//反白
				//document.getElementById(pField).select();

                if (validateDate()) {
                    if (checkInCalendarRange())
                        computeDate();
                }

                if (document.getElementById("MasterPage_MasterPageContent_efstc012_chk").checked)
                    document.getElementById(pField).value = "0";
                //2019/04/12;柏瑞;3.6.6.7;G00-20190412001;請假天數輸入非數值型態會一直會一直跳窗顯示無法停止 End
				alert(errorMsg);
				return false;
			}
		}
	}
	return true;
}

function checkInCalendarRange(){
	var bCheckHolidayWork=document.getElementById("MasterPage_MasterPageContent_efstc012_chk").checked;

	var errorMsg = '';
	var dateS  = document.getElementById("MasterPage_MasterPageContent_efstc006_txt").value.trim();
	var dateE  = document.getElementById("MasterPage_MasterPageContent_efstc007_txt").value.trim();
	if(dateS.length==0 || dateE.length==0){
		//如果沒有日期，就跳過檢查是不是在行事曆範圍內
		if(bCheckHolidayWork)
			$('#DivNoteList').show('slow');
		else
			$('#DivNoteList').hide();
		return true;
	}
	var userId = document.getElementById("MasterPage_MasterPageContent_efstc003_txt").value;	
	errorMsg = tw.com.dsc.easyflowDotNet.forms.STD002.ValidateInputDate(dateS,dateE,userId).value;
	
	if ( errorMsg != ''){
		$('#DivNoteList').show('slow');
		return false;
	}
	else{
		if(bCheckHolidayWork)
			$('#DivNoteList').show('slow');
		else
			$('#DivNoteList').hide();
	}
		
	return true;
}
//edit by elvis 2013/01/02 End
