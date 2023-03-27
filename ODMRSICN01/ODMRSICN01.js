//單頭自訂驗證
function CustomerSaveCheck_Head(tStatus)
{
	var tErr = "";
	var tFieldNotFilledMsg = getI18NForSpecial('PSMSG', 'Validation', 'RequriedFieldNotFilled', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tIntErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'IntErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tFloatErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'FloatErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tDecimalErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'DecimalErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	if (tStatus == "CREATE")
	{
		//填表時要驗證

	}
	else if (tStatus == "APPROVE")
	{
		//簽核時要驗證

	}

	//填表及簽核都要驗證
	//float格式驗証
	var tamt01 = $('#MasterPage_MasterPageContent_amt01_txt');
	if(tamt01.length>0){
		var tamt01Value = $('#MasterPage_MasterPageContent_amt01_txt').val().trim();
		if (tamt01Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt01Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt01Value=tamt01Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt01_txt').val(parseFloat(tamt01Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt02 = $('#MasterPage_MasterPageContent_amt02_txt');
	if(tamt02.length>0){
		var tamt02Value = $('#MasterPage_MasterPageContent_amt02_txt').val().trim();
		if (tamt02Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt02Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt02Value=tamt02Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt02_txt').val(parseFloat(tamt02Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt03 = $('#MasterPage_MasterPageContent_amt03_txt');
	if(tamt03.length>0){
		var tamt03Value = $('#MasterPage_MasterPageContent_amt03_txt').val().trim();
		if (tamt03Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt03Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt03Value=tamt03Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt03_txt').val(parseFloat(tamt03Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt04 = $('#MasterPage_MasterPageContent_amt04_txt');
	if(tamt04.length>0){
		var tamt04Value = $('#MasterPage_MasterPageContent_amt04_txt').val().trim();
		if (tamt04Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt04Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt04Value=tamt04Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt04_txt').val(parseFloat(tamt04Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt05 = $('#MasterPage_MasterPageContent_amt05_txt');
	if(tamt05.length>0){
		var tamt05Value = $('#MasterPage_MasterPageContent_amt05_txt').val().trim();
		if (tamt05Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt05Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt05Value=tamt05Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt05_txt').val(parseFloat(tamt05Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt06 = $('#MasterPage_MasterPageContent_amt06_txt');
	if(tamt06.length>0){
		var tamt06Value = $('#MasterPage_MasterPageContent_amt06_txt').val().trim();
		if (tamt06Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt06Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt06Value=tamt06Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt06_txt').val(parseFloat(tamt06Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt07 = $('#MasterPage_MasterPageContent_amt07_txt');
	if(tamt07.length>0){
		var tamt07Value = $('#MasterPage_MasterPageContent_amt07_txt').val().trim();
		if (tamt07Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt07Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt07Value=tamt07Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt07_txt').val(parseFloat(tamt07Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt08 = $('#MasterPage_MasterPageContent_amt08_txt');
	if(tamt08.length>0){
		var tamt08Value = $('#MasterPage_MasterPageContent_amt08_txt').val().trim();
		if (tamt08Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt08Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt08Value=tamt08Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt08_txt').val(parseFloat(tamt08Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt09 = $('#MasterPage_MasterPageContent_amt09_txt');
	if(tamt09.length>0){
		var tamt09Value = $('#MasterPage_MasterPageContent_amt09_txt').val().trim();
		if (tamt09Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt09Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt09', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt09Value=tamt09Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt09_txt').val(parseFloat(tamt09Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt10 = $('#MasterPage_MasterPageContent_amt10_txt');
	if(tamt10.length>0){
		var tamt10Value = $('#MasterPage_MasterPageContent_amt10_txt').val().trim();
		if (tamt10Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt10Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt10', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt10Value=tamt10Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt10_txt').val(parseFloat(tamt10Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var ttotamt = $('#MasterPage_MasterPageContent_totamt_txt');
	if(ttotamt.length>0){
		var ttotamtValue = $('#MasterPage_MasterPageContent_totamt_txt').val().trim();
		if (ttotamtValue.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(ttotamtValue)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'totamt', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				ttotamtValue=ttotamtValue.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_totamt_txt').val(parseFloat(ttotamtValue).toFixed(2));
			}
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

//2020/03/25;6.1.13.5;hiro;S00-20200225001;草稿儲存僅做數值驗證，不做其他驗證↓
//草稿數值驗證
function DraftSaveCheck(){
	var tErr = "";
	var tIntErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'IntErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tFloatErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'FloatErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tDecimalErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'DecimalErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	//數值驗證
	//float格式驗証
	var tamt01 = $('#MasterPage_MasterPageContent_amt01_txt');
	if(tamt01.length>0){
		var tamt01Value = $('#MasterPage_MasterPageContent_amt01_txt').val().trim();
		if (tamt01Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt01Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt01Value=tamt01Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt01_txt').val(parseFloat(tamt01Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt02 = $('#MasterPage_MasterPageContent_amt02_txt');
	if(tamt02.length>0){
		var tamt02Value = $('#MasterPage_MasterPageContent_amt02_txt').val().trim();
		if (tamt02Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt02Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt02Value=tamt02Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt02_txt').val(parseFloat(tamt02Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt03 = $('#MasterPage_MasterPageContent_amt03_txt');
	if(tamt03.length>0){
		var tamt03Value = $('#MasterPage_MasterPageContent_amt03_txt').val().trim();
		if (tamt03Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt03Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt03Value=tamt03Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt03_txt').val(parseFloat(tamt03Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt04 = $('#MasterPage_MasterPageContent_amt04_txt');
	if(tamt04.length>0){
		var tamt04Value = $('#MasterPage_MasterPageContent_amt04_txt').val().trim();
		if (tamt04Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt04Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt04Value=tamt04Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt04_txt').val(parseFloat(tamt04Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt05 = $('#MasterPage_MasterPageContent_amt05_txt');
	if(tamt05.length>0){
		var tamt05Value = $('#MasterPage_MasterPageContent_amt05_txt').val().trim();
		if (tamt05Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt05Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt05Value=tamt05Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt05_txt').val(parseFloat(tamt05Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt06 = $('#MasterPage_MasterPageContent_amt06_txt');
	if(tamt06.length>0){
		var tamt06Value = $('#MasterPage_MasterPageContent_amt06_txt').val().trim();
		if (tamt06Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt06Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt06Value=tamt06Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt06_txt').val(parseFloat(tamt06Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt07 = $('#MasterPage_MasterPageContent_amt07_txt');
	if(tamt07.length>0){
		var tamt07Value = $('#MasterPage_MasterPageContent_amt07_txt').val().trim();
		if (tamt07Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt07Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt07Value=tamt07Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt07_txt').val(parseFloat(tamt07Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt08 = $('#MasterPage_MasterPageContent_amt08_txt');
	if(tamt08.length>0){
		var tamt08Value = $('#MasterPage_MasterPageContent_amt08_txt').val().trim();
		if (tamt08Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt08Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt08Value=tamt08Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt08_txt').val(parseFloat(tamt08Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt09 = $('#MasterPage_MasterPageContent_amt09_txt');
	if(tamt09.length>0){
		var tamt09Value = $('#MasterPage_MasterPageContent_amt09_txt').val().trim();
		if (tamt09Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt09Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt09', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt09Value=tamt09Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt09_txt').val(parseFloat(tamt09Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var tamt10 = $('#MasterPage_MasterPageContent_amt10_txt');
	if(tamt10.length>0){
		var tamt10Value = $('#MasterPage_MasterPageContent_amt10_txt').val().trim();
		if (tamt10Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tamt10Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'amt10', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tamt10Value=tamt10Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_amt10_txt').val(parseFloat(tamt10Value).toFixed(2));
			}
		}
	}

	//float格式驗証
	var ttotamt = $('#MasterPage_MasterPageContent_totamt_txt');
	if(ttotamt.length>0){
		var ttotamtValue = $('#MasterPage_MasterPageContent_totamt_txt').val().trim();
		if (ttotamtValue.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(ttotamtValue)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMRSICN01', 'totamt', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				ttotamtValue=ttotamtValue.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_totamt_txt').val(parseFloat(ttotamtValue).toFixed(2));
			}
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
//2020/03/25;6.1.13.5;hiro;S00-20200225001;草稿儲存僅做數值驗證，不做其他驗證↑

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


//單身自訂驗證
function CustomerSaveCheck_Body(tStatus)
{
	var tErr = "";
	var tFieldNotFilledMsg = getI18NForSpecial('PSMSG', 'Validation', 'RequriedFieldNotFilled', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tIntErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'IntErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tFloatErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'FloatErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tDecimalErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'DecimalErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
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

String.prototype.trim = function () {
	return this.replace(/^\s+|\s+$/g, "");
}

//填表時顯示提示字串
function InitOpenShowMSG(){
	alert('');
}

function InitTriggerMust(tStatus){
	if(tStatus=="CREATE" || tStatus=="DISPLAY" || tStatus==""){

	}
}

function InitTriggerOpen(){

}

function InitCalculated(){
	domath_totamt();

}

function InitOnChangeItem()
{

}

function CreateOption(pValue,pText,objselect)
{
	var new_option = new Option(pText,pValue);
	objselect.options.add(new_option);
}



function InitNumberToWord()
{

}

function getMoneyWord(pNumberContrlID, pDecimalPlaces, pWordControlID)
{
	var strErr="";
	if($('#MasterPage_MasterPageContent_'+pNumberContrlID+'_txt').length>0 && $('#MasterPage_MasterPageContent_'+pNumberContrlID+'_txt').is(':visible')){
		var tControlNumValue = $('#MasterPage_MasterPageContent_'+pNumberContrlID+'_txt').val().trim();
		if(tControlNumValue.length>0){
			if(isNaN(tControlNumValue)) {
				//請輸入數值!
				strErr = getI18NForSpecial('PSMSG','NumsCheck','NumsCheckMSG001','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			}
			else{
				//這裡使用者如果輸入超過16進位的數值，就會失真！
				//tControlNumValue = parseFloat(tControlNumValue).toFixed(pDecimalPlaces);
				tControlNumValue = tw.com.dsc.easyflowDotNet.forms.ODMRSICN01.ajaxGetFixedNum(tControlNumValue, pDecimalPlaces).value;

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

			var tControlWordValue = tw.com.dsc.easyflowDotNet.forms.ODMRSICN01.ajaxGetMoneyWord(tControlNumValue).value;
			$('#MasterPage_MasterPageContent_'+pWordControlID+'_txt').val(tControlWordValue);
		}
		//2015/09/14;3.7.3.19;hiro;V00-20150914007;修正數值轉大寫，數值為空白時，沒有一併清空轉大寫欄位↓
		else {
			$('#MasterPage_MasterPageContent_'+pWordControlID+'_txt').val("");
		}
		//2015/09/14;3.7.3.19;hiro;V00-20150914007;修正數值轉大寫，數值為空白時，沒有一併清空轉大寫欄位↑
	}
	return true;
}

function InitReadOnly()
{

}


function SetCustomSubject()
{
	//使用者自訂主旨start
	var tSubjectVal='';
	var tSubjectTxt=document.getElementById("MasterPage_txtCreateToolSubject_txt").value;
	var tSubjectSelf='';
	tSubjectSelf+='CN辭工扣社保明細-';

	//自訂主旨+標準主旨
	tSubjectVal=tSubjectSelf+tSubjectTxt;

	if(tSubjectVal.length>255){tSubjectVal=tSubjectVal.substring(0,255);}
	//使用者自訂主旨end

	$("#MasterPage_txtCreateToolSubject_txt").val(tSubjectVal);
}

function domath_totamt()
{
	try{
		if($("#MasterPage_MasterPageContent_amt01_txt").length==0)
			return;
		var amt01 = $("#MasterPage_MasterPageContent_amt01_txt").val().trim();
		if(isNaN(amt01)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intamt01 = amt01.length>0?parseFloat(amt01):0;

		document.getElementById("MasterPage_MasterPageContent_amt01_txt").value=parseFloat(intamt01).toFixed(2);
		intamt01 = parseFloat($("#MasterPage_MasterPageContent_amt01_txt").val().trim());

		if($("#MasterPage_MasterPageContent_amt02_txt").length==0)
			return;
		var amt02 = $("#MasterPage_MasterPageContent_amt02_txt").val().trim();
		if(isNaN(amt02)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intamt02 = amt02.length>0?parseFloat(amt02):0;

		document.getElementById("MasterPage_MasterPageContent_amt02_txt").value=parseFloat(intamt02).toFixed(2);
		intamt02 = parseFloat($("#MasterPage_MasterPageContent_amt02_txt").val().trim());

		if($("#MasterPage_MasterPageContent_amt03_txt").length==0)
			return;
		var amt03 = $("#MasterPage_MasterPageContent_amt03_txt").val().trim();
		if(isNaN(amt03)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intamt03 = amt03.length>0?parseFloat(amt03):0;

		document.getElementById("MasterPage_MasterPageContent_amt03_txt").value=parseFloat(intamt03).toFixed(2);
		intamt03 = parseFloat($("#MasterPage_MasterPageContent_amt03_txt").val().trim());

		if($("#MasterPage_MasterPageContent_amt04_txt").length==0)
			return;
		var amt04 = $("#MasterPage_MasterPageContent_amt04_txt").val().trim();
		if(isNaN(amt04)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intamt04 = amt04.length>0?parseFloat(amt04):0;

		document.getElementById("MasterPage_MasterPageContent_amt04_txt").value=parseFloat(intamt04).toFixed(2);
		intamt04 = parseFloat($("#MasterPage_MasterPageContent_amt04_txt").val().trim());

		if($("#MasterPage_MasterPageContent_amt05_txt").length==0)
			return;
		var amt05 = $("#MasterPage_MasterPageContent_amt05_txt").val().trim();
		if(isNaN(amt05)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intamt05 = amt05.length>0?parseFloat(amt05):0;

		document.getElementById("MasterPage_MasterPageContent_amt05_txt").value=parseFloat(intamt05).toFixed(2);
		intamt05 = parseFloat($("#MasterPage_MasterPageContent_amt05_txt").val().trim());

		if($("#MasterPage_MasterPageContent_amt06_txt").length==0)
			return;
		var amt06 = $("#MasterPage_MasterPageContent_amt06_txt").val().trim();
		if(isNaN(amt06)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intamt06 = amt06.length>0?parseFloat(amt06):0;

		document.getElementById("MasterPage_MasterPageContent_amt06_txt").value=parseFloat(intamt06).toFixed(2);
		intamt06 = parseFloat($("#MasterPage_MasterPageContent_amt06_txt").val().trim());

		if($("#MasterPage_MasterPageContent_amt07_txt").length==0)
			return;
		var amt07 = $("#MasterPage_MasterPageContent_amt07_txt").val().trim();
		if(isNaN(amt07)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intamt07 = amt07.length>0?parseFloat(amt07):0;

		document.getElementById("MasterPage_MasterPageContent_amt07_txt").value=parseFloat(intamt07).toFixed(2);
		intamt07 = parseFloat($("#MasterPage_MasterPageContent_amt07_txt").val().trim());

		if($("#MasterPage_MasterPageContent_amt08_txt").length==0)
			return;
		var amt08 = $("#MasterPage_MasterPageContent_amt08_txt").val().trim();
		if(isNaN(amt08)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intamt08 = amt08.length>0?parseFloat(amt08):0;

		document.getElementById("MasterPage_MasterPageContent_amt08_txt").value=parseFloat(intamt08).toFixed(2);
		intamt08 = parseFloat($("#MasterPage_MasterPageContent_amt08_txt").val().trim());

		if($("#MasterPage_MasterPageContent_amt09_txt").length==0)
			return;
		var amt09 = $("#MasterPage_MasterPageContent_amt09_txt").val().trim();
		if(isNaN(amt09)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intamt09 = amt09.length>0?parseFloat(amt09):0;

		document.getElementById("MasterPage_MasterPageContent_amt09_txt").value=parseFloat(intamt09).toFixed(2);
		intamt09 = parseFloat($("#MasterPage_MasterPageContent_amt09_txt").val().trim());

		if($("#MasterPage_MasterPageContent_amt10_txt").length==0)
			return;
		var amt10 = $("#MasterPage_MasterPageContent_amt10_txt").val().trim();
		if(isNaN(amt10)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intamt10 = amt10.length>0?parseFloat(amt10):0;

		document.getElementById("MasterPage_MasterPageContent_amt10_txt").value=parseFloat(intamt10).toFixed(2);
		intamt10 = parseFloat($("#MasterPage_MasterPageContent_amt10_txt").val().trim());

		var finalvalue = intamt01+intamt02+intamt03+intamt04+intamt05+intamt06+intamt07+intamt08+intamt09+intamt10;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_totamt_txt").value=parseFloat(finalvalue).toFixed(2);
	}catch(err){
		$("#MasterPage_MasterPageContent_totamt_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
}


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

				if($('#MasterPage_MasterPageContent_SelectPanel'+tField+'_lstTbx').length>0){
					$('#MasterPage_MasterPageContent_SelectPanel'+tField+'_lstTbx').val("");
				}

				if(hdnValue.length>0){
					var aryHdnFieldSplit = hdnValue.split('§');
					var intHdnFieldSplitLength = aryHdnFieldSplit.length;
					for (var j = 0; j < intHdnFieldSplitLength; j++){
						var tShowItem = aryHdnFieldSplit[j];
						tShowItem=tShowItem.replace(/┼┼/g, " ");
						var new_option = new Option(tShowItem, tShowItem);
						$('#MasterPage_MasterPageContent_SelectPanel'+tField+'_lst')[0].options.add(new_option);

						if($('#MasterPage_MasterPageContent_SelectPanel'+tField+'_lstTbx').length>0){
							document.getElementById('MasterPage_MasterPageContent_SelectPanel' + tField + '_lstTbx').value += tShowItem;
							if (j != intHdnFieldSplitLength - 1)
							{
								document.getElementById('MasterPage_MasterPageContent_SelectPanel' + tField + '_lstTbx').value += '\r\n';
							}
						}
					}
				}
			}
		}
	}
}


function jsDoDispatch(pFormID, pSheetNo, pDispatchFormID){
	//若您已有編輯此表單資料, 此動作會清除您所編輯的資料! [請問是否繼續?
	var tConfirmSTR = getI18NForSpecial('FD','EFBaseMasterPage','EFMsgBoxJS007','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	if(window.confirm(tConfirmSTR.split('[')[0].toString() + "\r\n\r\n" + tConfirmSTR.split('[')[1].toString())){
		var bResult = tw.com.dsc.easyflowDotNet.forms.ODMRSICN01.ajaxDoDispatchForm(pFormID, pSheetNo, pDispatchFormID).value;
		var tDispatchFormResult="";
		if(bResult){
			//執行派送表單成功!
			tDispatchFormResult=getI18NForSpecial('Message','EFWizardForm','DispatchFormSuccess','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			alert(tDispatchFormResult);
			//Refresh 原頁面避免 Session 錯亂
			location.reload();
		}
		else{
			//執行派送表單失敗!
			tDispatchFormResult=getI18NForSpecial('Message','EFWizardForm','DispatchFormFail','../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			alert(tDispatchFormResult);
		}
	}
}


