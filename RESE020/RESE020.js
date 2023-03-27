
function getMultiOpenWindowValues(setField, sss)
{
    if (event.returnValue != false && document.getElementById("MasterPage_MasterPageContent_edReceiver_txt")!=null)
    {
        var tValueA = unescape(document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value);
        document.getElementById(setField).value = "";
        
        var tArr1 = tValueA.split("├");
        var tArr2 = new Array();
        for (var i = 0; i < tArr1.length; i++) 
        {
            if (tArr1[i] != "") 
            {
                tArr2 = tArr1[i].split("§");
                if(tArr2.length>1)
                    document.getElementById(setField).value += tArr2[0] + "-" + tArr2[1] + ";";
                else
                    document.getElementById(setField).value += tArr2[0] + ";";
            }
        }
        
        document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value = "";
    }
    event.returnValue = false;
}

function Redirect(TextId, obj) {
    if (document.getElementById(TextId).value == null || document.getElementById(TextId).value == "") {
        var tMsgCode = "";
        if (obj == "emp") {
            tMsgCode = getI18NForSpecial('FD', 'OASE004', 'MSG04', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
        }
        else {
            tMsgCode = getI18NForSpecial('FD', 'OASE004', 'MSG05', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
        }
        alert(tMsgCode);
        event.returnValue = false;
    }
    else {
        //取得所有人員的員編
        var AllEmp = document.getElementById(TextId).value.split(";");
        var EmpId;
        var tHid_1 = ""; //記錄所有的員編
        for (var j = 0; j < AllEmp.length; j++) {
            if (AllEmp[j] != "" && AllEmp[j] != null) {
                EmpId = AllEmp[j].split("-");
                tHid_1 += EmpId[0];
                tHid_1 += "@";
            }
        }
        tHid_1 = tHid_1.substring(0, tHid_1.length - 1);
        tw.com.dsc.easyflowDotNet.forms.RESE020.setSessionValue(document.getElementById(TextId).value);
        
        var tStyle = "scrollbars=Yes,resizable=Yes,height=450,width=400,location=no,top=200,left=250";
        
        //到人员删除页面
        var tUrl = "RESE020_del.aspx?ReturnObjectID=" + TextId + "&query=Yes&EmpID=" + tHid_1 + "&oaste011_txt=" + document.getElementById(TextId).value;
        
        window.open(encodeURI(tUrl), 'RESE020_del', tStyle);
        event.returnValue = false;
    }
}

function delchoose(tField) {
    var grid = document.getElementById(tField);
    for (var i = 1; i < grid.rows.length; i++) {
        grid.rows[i].cells[0].firstChild.childNodes[0].checked =false;
    }
}

function allchoose(tField) {
    var grid = document.getElementById(tField);
    for (var i = 1; i < grid.rows.length; i++) {
        grid.rows[i].cells[0].firstChild.childNodes[0].checked = true;
    }
}

function getReturnValue()
{   
    if (document.getElementById("MasterPage_MasterPageContent_DscTextBox2_txt").value != '')
    {
        var cust_no = document.getElementById("MasterPage_MasterPageContent_DscTextBox2_txt").value.split('§')[0];     //客戶代號       
        var cust_name = document.getElementById("MasterPage_MasterPageContent_DscTextBox2_txt").value.split('§')[1];   //客戶簡稱              
        var cust_sys = document.getElementById("MasterPage_MasterPageContent_DscTextBox2_txt").value.split('§')[2];    //系統別
        var cust_company = document.getElementById("MasterPage_MasterPageContent_DscTextBox2_txt").value.split('§')[3];//公司別

        document.getElementById("MasterPage_MasterPageContent_resgb011_txt").value = cust_no; 
        document.getElementById("MasterPage_MasterPageContent_resgb011_txt2").innerHTML = cust_name; 
        document.getElementById("MasterPage_MasterPageContent_resgb095_txt").value = cust_sys; 
        document.getElementById("MasterPage_MasterPageContent_resgb096_txt").value = cust_company; 
        
        call_server(cust_no,cust_sys,cust_company);
    }            
} 

//取得客戶代號相關資訊
function call_server(cust_no,cust_sys,cust_company) 
{   
    var reValue = tw.com.dsc.easyflowDotNet.forms.RESE020.resgb011_onchange(cust_no,cust_sys,cust_company).value;
    
    if (reValue == "")
    {
        return ;
    }
    else
    {
        var tValue = reValue.split('|');
        
        document.getElementById("MasterPage_MasterPageContent_resgb012_txt").value = tValue[0]; //公司網址
        document.getElementById("MasterPage_MasterPageContent_resgb013_txt").value = tValue[1]; //身份證字號/統編
        document.getElementById("MasterPage_MasterPageContent_resgb014_txt").value = tValue[2]; //電話號碼(一)
        document.getElementById("MasterPage_MasterPageContent_resgb015_txt").value = tValue[3]; //連絡人
        document.getElementById("MasterPage_MasterPageContent_resgb016_txt").value = tValue[4]; //電話號碼(二)
        document.getElementById("MasterPage_MasterPageContent_resgb017_txt").value = tValue[5]; //E-Mail
        document.getElementById("MasterPage_MasterPageContent_resgb018_txt").value = tValue[6]; //傳真號碼
        document.getElementById("MasterPage_MasterPageContent_resgb019_txt").value = tValue[7]; //聯絡地址
    }   
}

function resgb011_onChange() 
{
    var cust_no = document.getElementById("MasterPage_MasterPageContent_resgb011_txt").value;        
    var cust_sys = document.getElementById("MasterPage_MasterPageContent_resgb095_txt").value; 
    var cust_company = document.getElementById("MasterPage_MasterPageContent_resgb096_txt").value; 
    
    var reValue = tw.com.dsc.easyflowDotNet.forms.RESE020.getresgb011Name(cust_no,cust_sys,cust_company).value;
    
    if (reValue == "")
    {
        return ;
    }
    else
    {
        document.getElementById("MasterPage_MasterPageContent_resgb011_txt2").innerHTML = reValue;
    }       
}

//單頭自訂驗證
//2013/02/04:3.5.1.48:hiro:S00-20120626008:雙檔表單簽核鈕增加單身驗證功能↓
function CustomerSaveCheck_Head(tStatus)
//2013/02/04:3.5.1.48:hiro:S00-20120626008:雙檔表單簽核鈕增加單身驗證功能↑
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


//2013/02/04:3.5.1.48:hiro:S00-20120626008:雙檔表單簽核鈕增加單身驗證功能↓
//單頭表單簽核鈕驗證單身全部欄位
function CustomerSaveCheck_DetailAllData(pFormId, pUniversalId)
{
	var tErr = "";

	

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
//2013/02/04:3.5.1.48:hiro:S00-20120626008:雙檔表單簽核鈕增加單身驗證功能↑


//單身自訂驗證
//2013/02/04:3.5.1.48:hiro:S00-20120626008:雙檔表單簽核鈕增加單身驗證功能↓
function CustomerSaveCheck_Body(tStatus)
//2013/02/04:3.5.1.48:hiro:S00-20120626008:雙檔表單簽核鈕增加單身驗證功能↑
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


function SetCustomSubject()
{
	//使用者自訂主旨start
	var tSubjectVal='';
	var tSubjectTxt=document.getElementById("MasterPage_txtCreateToolSubject_txt").value;
	var tSubjectSelf='';
	 tSubjectVal=tSubjectTxt;
	$("#MasterPage_txtCreateToolSubject_txt").val(tSubjectVal);
}

//2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：欄位計算、單身資料加總↓
String.prototype.trim = function () {
	return this.replace(/^\s+|\s+$/g, "");
}
//2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：欄位計算、單身資料加總↑

//2010/06/01:3.2.1.15:hiro:S00-20100323002:功能新增：新增CheckBox或RadioButton觸發必填TextBox元件↓
function InitVisiable()
{

}
//2010/06/01:3.2.1.15:hiro:S00-20100323002:功能新增：新增CheckBox或RadioButton觸發必填TextBox元件↑

//2011/01/25:3.2.1.20:hiro:S00-20101005001:新增連動式下拉選單控制項↓
function InitOnChangeItem()
{

}

function CreateOption(pValue,pText,objselect)
{
	var new_option = new Option(pText,pValue);
	objselect.options.add(new_option);
}


//2011/01/25:3.2.1.20:hiro:S00-20101005001:新增連動式下拉選單控制項↑

//2012/06/04:3.5.1.1:hiro:S00-20120214003:員工開窗改為唯讀，避免手動key入離職員工(暫緩)↓
function InitReadOnly()
{

}
//2012/06/04:3.5.1.1:hiro:S00-20120214003:員工開窗改為唯讀，避免手動key入離職員工(暫緩)↑

//2011/03/09:3.2.1.26:hiro:S00-20110218003:增加人員樹型開窗功能(參考teppy的程式段)↓
//單選開窗
function SingleSelectEmpl(pPathPath, pReturnControlClientID, pMJ) {
	var tdialogHeight = 520;
	var tdialogWidth = 780;
	var tdialogTop = (screen.height - tdialogHeight) / 2;
	var tdialogLeft = (screen.width - tdialogWidth) / 2;
	var tStyle = "dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No;";
	var tReturnValue = window.showModalDialog(pPathPath, "", tStyle);
	if ((tReturnValue != undefined) && (tReturnValue != null) && (tReturnValue != "")) {
		document.getElementById(pReturnControlClientID).value = tReturnValue;
		doValidateII(pReturnControlClientID, pMJ, pReturnControlClientID);
		return true;
	}
}

//多選開窗
function MultiSelectEmpl(pPathPath, pReturnControlClientID, pType) {
	var tdialogHeight = 520;
	var tdialogWidth = 780;
	var tdialogTop = (screen.height - tdialogHeight) / 2;
	var tdialogLeft = (screen.width - tdialogWidth) / 2;
	var tStyle = "dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No;";
	//將既存資料帶過去
	var tExistData = $('#'+pReturnControlClientID).val();
	tExistData = tExistData.replace(/-/g, "§");
	tExistData = tExistData.replace(/;/g, "┼");
	if(tExistData.length>0){
		tExistData = tExistData.substring(0, tExistData.length-1);
	}
	pPathPath = pPathPath+"&ExistData="+encodeURI(tExistData);
	var tReturnValue = window.showModalDialog(pPathPath, "", tStyle);

	if ((tReturnValue != undefined) && (tReturnValue != null)) {
		var objTargetValue = "";
		var tArr1 = tReturnValue.split("├");
		var tArr2 = new Array();

		if(pType==1){//第一種多選開窗方式
			var objTarget = document.getElementById(pReturnControlClientID+"_lst"); //目標List
			for (var i = 0; i < tArr1.length; i++) {
				if (tArr1[i] != "") {
					tArr2 = tArr1[i].split("§");

					//檢查是否已存在
					var bHadExist = false;
					for(var j=0;j<objTarget.options.length;j++)
					{
						if(tArr2[0] + " " + tArr2[1] == objTarget.options[j].text){
							bHadExist=true;
							break;
						}
					}
					if(bHadExist)
						continue;

					if($('#'+pReturnControlClientID+'_hidText').val().length>0 && i<tArr1.length)//畫面上已有值存在，前面要加一個分隔符號
						document.getElementById(pReturnControlClientID+'_hidText').value += "§";

					//產生一個option元件
					var opt = document.createElement("option");
					//指定opt的value及text
					opt.text = tArr2[0] + " " + tArr2[1];
					opt.value = tArr2[0] + " " + tArr2[1];
					//把opt加到目標List裡
					objTarget.options.add(opt);

					document.getElementById(pReturnControlClientID+'_hidText').value += tArr2[0] + " " + tArr2[1];
				}
			}
		}
		else{//第二種多選開窗方式
			$('#'+pReturnControlClientID).val("");//先清空hide欄位
			objTargetValue = document.getElementById(pReturnControlClientID).value;
			for (var i = 0; i < tArr1.length; i++) {
				if (tArr1[i] != "") {
					tArr2 = tArr1[i].split("§");
					//MI回傳值1個以上時，僅顯示第1、2個MI回傳值，部門、人員開窗都會回傳至少兩個回傳值
					objTargetValue += tArr2[0] + "-" + tArr2[1] + ";";
				}
			}
		}

		if(pType==1)
			document.getElementById(pReturnControlClientID+'_hidText2').value = document.getElementById(pReturnControlClientID+'_hidText').value;
		else
			document.getElementById(pReturnControlClientID).value = objTargetValue;

		return true;
	}
	else {
		//不做任何動作
		event.returnValue = false;
		return false;
	}
}
//2013/06/25:3.6.1.7:hiro:S00-20130621001:2.修正人員、部門樹狀多選開窗。↑
//2011/03/09:3.2.1.26:hiro:S00-20110218003:增加人員樹型開窗功能(參考teppy的程式段)↑

//2012/11/28:3.5.1.34:hiro:S00-20120321002:1.增加日期、日期時間計算功能。↓
function CheckCompareDate(pStartID, pEndID, pCompareType)
{
	if ($("#MasterPage_MasterPageContent_"+pStartID+"_txt").length>0 && $("#MasterPage_MasterPageContent_"+pEndID+"_txt").length>0){
		var tStartDateTime = $("#MasterPage_MasterPageContent_"+pStartID+"_txt").val();
		var tEndDateTime = $("#MasterPage_MasterPageContent_"+pEndID+"_txt").val();
		if(tStartDateTime!="" && tEndDateTime!=""){
			//2013/04/16:3.5.1.60:hiro:S00-20130329001:修改日期計算，天數相減計算結果加1↓
			//if(tEndDateTime<=tStartDateTime){
			//	var strErr=""
			//	if(pCompareType=="yyyyMMdd")
			//		strErr = getI18NForSpecial('Message','Common','MsgDateTimeError01','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			//	else if(pCompareType=="HHmm")
			//		strErr = getI18NForSpecial('Message','Common','MsgDateTimeError02','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			//	alert(strErr);
			//	$("#MasterPage_MasterPageContent_"+pEndID+"_txt").val("");
			//	return false;
			//}
			var strErr=""
			if(pCompareType=="yyyyMMdd"){
				if(tEndDateTime<tStartDateTime)
					strErr = getI18NForSpecial('Message','Common','MsgDateTimeError01','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			}
			else if(pCompareType=="HHmm"){
				if(tEndDateTime<=tStartDateTime)
					strErr = getI18NForSpecial('Message','Common','MsgDateTimeError02','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			}

			if(strErr!=""){
				alert(strErr);
				$("#MasterPage_MasterPageContent_"+pEndID+"_txt").val("");
				return false;
			}
			//2013/04/16:3.5.1.60:hiro:S00-20130329001:修改日期計算，天數相減計算結果加1↑
			return true;
		}
	}
	return false;
}
//2012/11/28:3.5.1.34:hiro:S00-20120321002:1.增加日期、日期時間計算功能。↑

//2013/01/24:3.5.1.43:hiro:S00-20130109001:雙檔作業的單身，支援組合多選開窗。↓
function setSelectPanelValue()
{
	var aryFields = [];//單頭、單身多選開窗
	var intFieldsLength = aryFields.length;
	for(var i=0;i<intFieldsLength;i++){
		var tField=aryFields[i];
		if($('#MasterPage_MasterPageContent_DscOpenQuery'+tField+'_txt').length>0){
			var hdnValue = $('#MasterPage_MasterPageContent_DscOpenQuery'+tField+'_txt').val();
			$('#MasterPage_MasterPageContent_SelectPanel'+tField+'_hidText').val(hdnValue);
			$('#MasterPage_MasterPageContent_SelectPanel'+tField+'_hidText2').val(hdnValue);

			if($('#MasterPage_MasterPageContent_SelectPanel'+tField+'_lst').length>0){
				$('#MasterPage_MasterPageContent_SelectPanel'+tField+'_lst')[0].options.length=0;
				if(hdnValue.length>0){
					var aryHdnFieldSplit = hdnValue.split('§');
					var intHdnFieldSplitLength = aryHdnFieldSplit.length;
					for (var j = 0; j < intHdnFieldSplitLength; j++){
						var tShowItem = aryHdnFieldSplit[j];
						tShowItem=tShowItem.replace(/┼┼/g, " ");
						var new_option = new Option(tShowItem, tShowItem);
						$('#MasterPage_MasterPageContent_SelectPanel'+tField+'_lst')[0].options.add(new_option);
					}
				}
			}
		}
	}
}
//2013/01/24:3.5.1.43:hiro:S00-20130109001:雙檔作業的單身，支援組合多選開窗。↑

//2013/06/07:3.6.1.4:hiro:S00-20130401009:增加數值自動轉換大寫金額格式↓
function InitNumberToWord()
{

}

function getMoneyWord(pNumberContrlID, pDecimalPlaces, pWordControlID)
{
	var strErr="";
	if($('#MasterPage_MasterPageContent_'+pNumberContrlID+'_txt').length>0){
		var tControlNumValue = $('#MasterPage_MasterPageContent_'+pNumberContrlID+'_txt').val().trim();
		if(tControlNumValue.length>0){
			if(isNaN(tControlNumValue)) {
				//請輸入數值!
				strErr = getI18NForSpecial('PSMSG','NumsCheck','NumsCheckMSG001','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			}
			else{
				//這裡使用者如果輸入超過16進位的數值，就會失真！
				//tControlNumValue = parseFloat(tControlNumValue).toFixed(pDecimalPlaces);
				tControlNumValue = tw.com.dsc.easyflowDotNet.forms.RESE020.ajaxGetFixedNum(tControlNumValue, pDecimalPlaces).value;

				$('#MasterPage_MasterPageContent_'+pNumberContrlID+'_txt').val(tControlNumValue);
				var iIntegerSTR="";
				var tDecimalSTR="";
				if(pDecimalPlaces>0){
					//含小數位
					var aryControlNumValue = tControlNumValue.toString().split('.');
					iIntegerSTR = parseInt(aryControlNumValue[0]);
					tDecimalSTR = aryControlNumValue[1];
				}
				else{
					iIntegerSTR = tControlNumValue;
				}

				//if(iIntegerSTR>=10000000000000000 || iIntegerSTR<=-9999999999999999)
				if(iIntegerSTR<0){
					if(iIntegerSTR.toString().length>17)
						//數值溢位!請輸入較大的數值!
						strErr = getI18NForSpecial('Message','NumsCheck','NumsOverRangMSG001','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
				}
				else{
					if(iIntegerSTR.toString().length>16)
						//數值溢位!請輸入較小的數值!
						strErr = getI18NForSpecial('Message','NumsCheck','NumsOverRangMSG002','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
				}
			}

			if(strErr!=""){
				alert(strErr);
				$('#MasterPage_MasterPageContent_'+pNumberContrlID+'_txt').val("");
				$('#MasterPage_MasterPageContent_'+pWordControlID+'_txt').val("");
				return false;
			}

			var tControlWordValue = tw.com.dsc.easyflowDotNet.forms.RESE020.ajaxGetMoneyWord(tControlNumValue).value;
			$('#MasterPage_MasterPageContent_'+pWordControlID+'_txt').val(tControlWordValue);
		}
	}
	return true;
}
//2013/06/07:3.6.1.4:hiro:S00-20130401009:增加數值自動轉換大寫金額格式↑
