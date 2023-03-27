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
		

	}
	else if (tStatus == "APPROVE")
	{
		//簽核時要驗證
		

	}

	//填表及簽核都要驗證
	
	//不允許空白驗證
	var temsar02003 = $('#MasterPage_MasterPageContent_emsar02003_txt');
	if(temsar02003.length>0){
		var temsar02003Value = $('#MasterPage_MasterPageContent_emsar02003_txt').val().trim();
		if (temsar02003Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'EMSAR02', 'emsar02003', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
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
   var tRetVal = tw.com.dsc.easyflowDotNet.forms.EMSAR02.GetDetialRowCount(universalID); 
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
        document.getElementById("MasterPage_MasterPageContent_"+setField).value = tValueA.replace(/├/g,";").replace(/§/g,"-");
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

//2010/10/13 3909陳威弟新增
function emsOnload()
{
    var divContext = document.getElementById("divContext");    
    if(divContext != null)
    {
         divContext.innerHTML = document.getElementById("MasterPage_MasterPageContent_emsar02004_txt").value;         
    }
}