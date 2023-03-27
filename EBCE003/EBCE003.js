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
		//請款單單身檢查
        var universalID = document.getElementById("MasterPage_universalID").value; 
        var tRetVal = tw.com.dsc.easyflowDotNet.forms.EBCE003.GetDetial1Update(universalID).value;
        
        //未更新單身資料時
        if (tRetVal =="N")
        {
        	//2014/08/25:3.6.6.1:jarvis:V00-20140825001:EBC支援英文語系↓
            //if(confirm("未更新請款單單身的請款日期，是否繼續送單？")==false)
            //未更新請款單單身的請款日期，是否繼續送單？
            if(confirm(getI18NForSpecial('FD', 'EBCE003', 'MSG001', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx'))==false)
            //2014/08/25:3.6.6.1:jarvis:V00-20140825001:EBC支援英文語系↑
            {
            	return false;
            }
        }
		

	}
	else if (tStatus == "APPROVE")
	{
		//簽核時要驗證
		//最後一關時，檢查若有填寫請款日期，核發日期是否也有一並填寫！！
		//var tRetVal = tw.com.dsc.easyflowDotNet.forms.EBCE003.LastFlow().value;     
	}

	//填表及簽核都要驗證

	
	//不允許空白驗證
	var tebctk003 = $('#MasterPage_MasterPageContent_ebctk003_txt');
	if(tebctk003.length>0){
		var tebctk003Value = $('#MasterPage_MasterPageContent_ebctk003_txt').val().trim();
		if (tebctk003Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'EBCE003', 'ebctk003', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}


	//不允許空白驗證
	var tebctk005 = $('#MasterPage_MasterPageContent_ebctk005_txt');
	if(tebctk005.length>0){
		var tebctk005Value = $('#MasterPage_MasterPageContent_ebctk005_txt').val().trim();
		if (tebctk005Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'EBCE003', 'ebctk005', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tebctk006 = $('#MasterPage_MasterPageContent_ebctk006_txt');
	if(tebctk006.length>0){
		var tebctk006Value = $('#MasterPage_MasterPageContent_ebctk006_txt').val().trim();
		if (tebctk006Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'EBCE003', 'ebctk006', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tebctk007 = $('#MasterPage_MasterPageContent_ebctk007_txt');
	if(tebctk007.length>0){
		var tebctk007Value = $('#MasterPage_MasterPageContent_ebctk007_txt').val().trim();
		if (tebctk007Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'EBCE003', 'ebctk007', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tebctk008 = $('#MasterPage_MasterPageContent_ebctk008_txt');
	if(tebctk008.length>0){
		var tebctk008Value = $('#MasterPage_MasterPageContent_ebctk008_txt').val().trim();
		if (tebctk008Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'EBCE003', 'ebctk008', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

   
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

	
	//不允許空白驗證
	var tebctl004 = $('#MasterPage_MasterPageContent_ebctl004_txt');
	if(tebctl004.length>0){
		var tebctl004Value = $('#MasterPage_MasterPageContent_ebctl004_txt').val().trim();
		if (tebctl004Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'EBCE003_d01', 'ebctl004', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tebctl005 = $('#MasterPage_MasterPageContent_ebctl005_txt');
	if(tebctl005.length>0){
		var tebctl005Value = $('#MasterPage_MasterPageContent_ebctl005_txt').val().trim();
		if (tebctl005Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'EBCE003_d01', 'ebctl005', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

   
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


function GetDetialRowCount()
{ 
	var universalID = document.getElementById("MasterPage_universalID").value; 
	var tRetVal = tw.com.dsc.easyflowDotNet.forms.EBCE003.GetDetialRowCount(universalID); 
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

function SetCustomSubject()
{
	var SubjectVal=document.getElementById("MasterPage_txtCreateToolSubject_txt").value;
	$("#MasterPage_txtCreateToolSubject_txt").val(SubjectVal);
}

	
//2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↓
function getMultiOpenWindowValues(setField)
{
	if(document.getElementById("MasterPage_MasterPageContent_edReceiver_txt")!=null && document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value != null && document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value != "")
	{
		var tValueA = unescape(document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value);
		//2011/06/07:3.3.1.1:hiro:Q00-20110607001:修正人員多選開窗物件，應僅帶回人員工號-人員姓名，不應呈現人員工號-人員姓名-部門代號-部門名稱↓
		//document.getElementById("MasterPage_MasterPageContent_"+setField).value = tValueA.replace(/├/g,";").replace(/§/g,"-");
		document.getElementById("MasterPage_MasterPageContent_"+setField).value="";
		var tArr1 = tValueA.split("├");
		var tArr2 = new Array();
		for (var i = 0; i < tArr1.length; i++) {
			if (tArr1[i] != "") {
				tArr2 = tArr1[i].split("§");
				//2011/12/12:3.3.3.11:hiro:S00-20111212002:表單精靈NewOpenQuery控制項，多選開窗的儲存格式請修改成empl、dept控制項的多選開窗儲存格式↓
				//document.getElementById("MasterPage_MasterPageContent_"+setField).value += tArr2[0] + "-" + tArr2[1] + ";";
				//MI回傳值1個以上時，僅顯示第1、2個MI回傳值
				if(tArr2.length>1)
					document.getElementById("MasterPage_MasterPageContent_"+setField).value += tArr2[0] + "-" + tArr2[1] + ";";
				else
					document.getElementById("MasterPage_MasterPageContent_"+setField).value += tArr2[0] + ";";
				//2011/12/12:3.3.3.11:hiro:S00-20111212002:表單精靈NewOpenQuery控制項，多選開窗的儲存格式請修改成empl、dept控制項的多選開窗儲存格式↑
			}
		}
		//2011/06/07:3.3.1.1:hiro:Q00-20110607001:修正人員多選開窗物件，應僅帶回人員工號-人員姓名，不應呈現人員工號-人員姓名-部門代號-部門名稱↑
		document.getElementById("MasterPage_MasterPageContent_edReceiver_txt").value = "";
	}
}
//2010/06/01:3.2.1.13:hiro:S00-20100323002:功能新增：新增人員、日期、部門(含多選開窗)元件↑

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
	var tReturnValue = window.showModalDialog(pPathPath, "", tStyle);
	
	if ((tReturnValue != undefined) && (tReturnValue != null) && (tReturnValue != "")) {
		var objTargetValue = "";
		var tArr1 = tReturnValue.split("├");
		var tArr2 = new Array();

		if (tReturnValue.indexOf("^Flag=Y") >= 0) {//如果有追加標誌，則追加到原文本框中
			if(pType==1){//第一種多選開窗方式
				var objTarget = document.getElementById(pReturnControlClientID+"_lst"); //目標List
				for (var i = 0; i < tArr1.length; i++) {
					if (tArr1[i] != "") {
						tArr2 = tArr1[i].split("§");

						var bHadExist = false;
						for(var j=0;j<objTarget.options.length;j++)
						{
							if(tArr2[0] + " " + tArr2[1] == objTarget.options[j].text)
								bHadExist=true;
						}
						if(bHadExist)
							continue;

						if(objTarget.options.length>0 && i<tArr1.length)//畫面上已有值存在，前面要加一個分隔符號
							document.getElementById(pReturnControlClientID+'_hidText').value += "§";

						//產生一個option元件
						var opt = document.createElement("option");
						//把opt加到目標List裡
						objTarget.options.add(opt);
						//指定opt的value及text
						opt.text = tArr2[0] + " " + tArr2[1];
						opt.value = tArr2[0] + " " + tArr2[1];

						document.getElementById(pReturnControlClientID+'_hidText').value += tArr2[0] + " " + tArr2[1];
					}
				}
			}
			else{//第二種多選開窗方式
				//有追加標誌
				objTargetValue = document.getElementById(pReturnControlClientID).value;
				for (var i = 0; i < tArr1.length; i++) {
					if (tArr1[i] != "") {
						tArr2 = tArr1[i].split("§");
						if (objTargetValue.indexOf(tArr2[0] + "-" + tArr2[1] + ";") < 0) {//不存在該資料時，才追加到欄位之中
							objTargetValue += tArr2[0] + "-" + tArr2[1] + ";";
						}
					}
				}
			}
		}
		else {//沒有追加標誌
			if(pType==1){//第一種多選開窗方式
				$('#'+pReturnControlClientID+'_hidText').val("");//沒有追加，則先清空hide欄位
				var objTarget = document.getElementById(pReturnControlClientID+"_lst"); //目標List
				for (var i = 0; i < tArr1.length; i++) {
					if (tArr1[i] != "") {
						tArr2 = tArr1[i].split("§");
						
						if($('#'+pReturnControlClientID+'_hidText').val().length>0 && i<tArr1.length)//畫面上已有值存在，前面要加一個分隔符號
							document.getElementById(pReturnControlClientID+'_hidText').value += "§";

						//產生一個option元件
						var opt = document.createElement("option");
						//把opt加到目標List裡
						objTarget.options.add(opt);
						//指定opt的value及text
						opt.text = tArr2[0] + " " + tArr2[1];
						opt.value = tArr2[0] + " " + tArr2[1];

						document.getElementById(pReturnControlClientID+'_hidText').value += tArr2[0] + " " + tArr2[1];
					}
				}
			}
			else{//第二種多選開窗方式
				$('#'+pReturnControlClientID).val("");//沒有追加，則先清空hide欄位
				objTargetValue = document.getElementById(pReturnControlClientID).value;
				for (var i = 0; i < tArr1.length; i++) {
					if (tArr1[i] != "") {
						tArr2 = tArr1[i].split("§");
						objTargetValue += tArr2[0] + "-" + tArr2[1] + ";";
					}
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
//2011/03/09:3.2.1.26:hiro:S00-20110218003:增加人員樹型開窗功能(參考teppy的程式段)↑

//隱藏單身欄位 Key3
function HideKey3()
{
	var objTxt = document.getElementById('MasterPage_MasterPageContent_ebctl003_txt'); if(objTxt != null){ objTxt.style.display = "none" };
	var objLbl = document.getElementById('MasterPage_MasterPageContent_ebctl003_lbl'); if(objLbl != null){ objLbl.style.display = "none" };
}

function getBodyDetail()
{
    var universalID = document.getElementById("MasterPage_universalID").value;

    var tebctk003 = document.getElementById("MasterPage_MasterPageContent_ebctk003_txt");//專案代號
    var tebctk005 = document.getElementById("MasterPage_MasterPageContent_ebctk005_txt");//工程小項
    var tebctk006 = document.getElementById("MasterPage_MasterPageContent_ebctk006_txt");//廠商代號    
    
    //2016/02/16:3.6.6.2:wayne:V00-20160216001:修改選擇工程小項值被清空 Start
    var tPostBacked = document.getElementById('MasterPage_MasterPageContent_PostBacked_txt').value;
    //if (tebctk003.value != "" && tebctk005.value != "" && tebctk006.value != "")
    if (tebctk003.value != "" && tebctk005.value != "" && tebctk006.value != "" && tPostBacked == 'True')
    //2016/02/16:3.6.6.2:wayne:V00-20160216001:修改選擇工程小項值被清空 End
    {
        var tRetVal = tw.com.dsc.easyflowDotNet.forms.EBCE003.SetBodyDetail(universalID,tebctk003.value,tebctk005.value,tebctk006.value).value;     
        document.getElementById("MasterPage_MasterPageContent_ebctk010_txt").value = tRetVal;

        //2016/02/16:3.6.6.2:wayne:V00-20160216001:修改選擇工程小項值被清空 Start
        document.getElementById('MasterPage_MasterPageContent_PostBacked_txt').value = 'False';
        //2016/02/16:3.6.6.2:wayne:V00-20160216001:修改選擇工程小項值被清空 End

        document.getElementById("MasterPage_MasterPageContent_btnSelectData").click();
    }
    //2016/02/16:3.6.6.2:wayne:V00-20160216001:修改選擇工程小項值被清空 Start
    //else
    //{
    //    document.getElementById('MasterPage_MasterPageContent_PostBacked_txt').value = 'True';
    //}
    //2016/02/16:3.6.6.2:wayne:V00-20160216001:修改選擇工程小項值被清空 End
}

function setFormat(pFields)
{
     var tFields =  document.getElementById("MasterPage_MasterPageContent_" + pFields + "_txt").value;
    tFields = tFields.replace(",", "");

     if(tFields != "")
     {
       var result = tw.com.dsc.easyflowDotNet.forms.EBCE003.GetFormat(tFields).value;   //在去呼叫ajax的GetAmount()方法
       document.getElementById("MasterPage_MasterPageContent_" + pFields + "_txt").value = result;   //再將GetAmount()方法return的值回填到金額欄位
     }
}

//若修改003專案代號時，若005工程小項及006廠商代號有值，則清掉
function clear005006()
{
    
    if (document.getElementById("MasterPage_MasterPageContent_ebctk005_txt").value != "")
    {
        document.getElementById("MasterPage_MasterPageContent_ebctk005_txt").value = "";
        document.getElementById("MasterPage_MasterPageContent_ebctk005_txt2").innerText = "";
        document.getElementById("MasterPage_MasterPageContent_ebctk005_txt2hdn").value = "";        
    }
    
    if (document.getElementById("MasterPage_MasterPageContent_ebctk006_txt").value != "")
    {
        document.getElementById("MasterPage_MasterPageContent_ebctk006_txt").value = "";
        document.getElementById("MasterPage_MasterPageContent_ebctk006_txt2").innerText = "";
        document.getElementById("MasterPage_MasterPageContent_ebctk006_txt2hdn").value = "";  
        document.getElementById("MasterPage_MasterPageContent_ebctk007_txt").value = "";
        document.getElementById("MasterPage_MasterPageContent_ebctk008_txt").value = "";
      
    }
    
}


//若修改006廠商代號，若005工程小項有值，則清掉
function clear005()
{
    if (document.getElementById("MasterPage_MasterPageContent_ebctk005_txt").value != "")
    {
        document.getElementById("MasterPage_MasterPageContent_ebctk005_txt").value = "";
        document.getElementById("MasterPage_MasterPageContent_ebctk005_txt2").innerText = "";
        document.getElementById("MasterPage_MasterPageContent_ebctk005_txt2hdn").value = "";        
    }
}

//2014/06/09:jarvis:3.6.3.2:S00-20140425007:修正EBC模組↓
function ebctk006onChange()
{
    var bResult = tw.com.dsc.easyflowDotNet.forms.EBCE003.AjaxGetData($("#MasterPage_MasterPageContent_ebctk006_txt").val()).value;
    if (bResult == "") 
    {
        $("#MasterPage_MasterPageContent_ebctk007_txt").val("");
        $("#MasterPage_MasterPageContent_ebctk008_txt").val("");
    }
    else 
    {
        var AryData = bResult.split("§");
        $("#MasterPage_MasterPageContent_ebctk007_txt").val(AryData[0]);
        $("#MasterPage_MasterPageContent_ebctk008_txt").val(AryData[1]);
    }
}
//2014/06/09:jarvis:3.6.3.2:S00-20140425007:修正EBC模組↑

//2016/03/03:3.6.6.3:wayne:V00-20160303003:修改單身點擊儲存按鈕無法儲存 Start
function setPostedBack() {
    //2016/06/27:3.6.6.6:wayne:V00-20160629001:單身資料無法儲存 Start
    //document.getElementById('MasterPage_MasterPageContent_PostBacked_txt').value = 'False';
    document.getElementById('MasterPage_MasterPageContent_PostBacked_txt').value = 'True';
    //2016/06/27:3.6.6.6:wayne:V00-20160629001:單身資料無法儲存 End
}
//2016/03/03:3.6.6.3:wayne:V00-20160303003:修改單身點擊儲存按鈕無法儲存 End