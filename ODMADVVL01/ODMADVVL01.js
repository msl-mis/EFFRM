//單頭自訂驗證
function CustomerSaveCheck_Head(tStatus) {
	var tErr = "";
	var tFieldNotFilledMsg = getI18NForSpecial('PSMSG', 'Validation', 'RequriedFieldNotFilled', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tIntErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'IntErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tFloatErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'FloatErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tDecimalErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'DecimalErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	if (tStatus == "CREATE") {
		//填表時要驗證

	}
	else if (tStatus == "APPROVE") {
		//簽核時要驗證

	}

	//填表及簽核都要驗證
	//不允許空白驗證
	var tapplydate = $('#MasterPage_MasterPageContent_applydate_txt');
	if (tapplydate.length > 0) {
		var tapplydateValue = $('#MasterPage_MasterPageContent_applydate_txt').val().trim();
		if (tapplydateValue.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'applydate', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tdept = $('#MasterPage_MasterPageContent_dept_txt');
	if (tdept.length > 0) {
		var tdeptValue = $('#MasterPage_MasterPageContent_dept_txt').val().trim();
		if (tdeptValue.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'dept', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tmoney01 = $('#MasterPage_MasterPageContent_money01_txt');
	if (tmoney01.length > 0) {
		var tmoney01Value = $('#MasterPage_MasterPageContent_money01_txt').val().trim();
		if (tmoney01Value.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'money01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//float格式驗証
	var tmoney01 = $('#MasterPage_MasterPageContent_money01_txt');
	if (tmoney01.length > 0) {
		var tmoney01Value = $('#MasterPage_MasterPageContent_money01_txt').val().trim();
		if (tmoney01Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney01Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'money01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney01Value = tmoney01Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money01_txt').val(Math.round(parseFloat(tmoney01Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney02 = $('#MasterPage_MasterPageContent_money02_txt');
	if (tmoney02.length > 0) {
		var tmoney02Value = $('#MasterPage_MasterPageContent_money02_txt').val().trim();
		if (tmoney02Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney02Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'money02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney02Value = tmoney02Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money02_txt').val(Math.round(parseFloat(tmoney02Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney03 = $('#MasterPage_MasterPageContent_money03_txt');
	if (tmoney03.length > 0) {
		var tmoney03Value = $('#MasterPage_MasterPageContent_money03_txt').val().trim();
		if (tmoney03Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney03Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'money03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney03Value = tmoney03Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money03_txt').val(Math.round(parseFloat(tmoney03Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney04 = $('#MasterPage_MasterPageContent_money04_txt');
	if (tmoney04.length > 0) {
		var tmoney04Value = $('#MasterPage_MasterPageContent_money04_txt').val().trim();
		if (tmoney04Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney04Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'money04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney04Value = tmoney04Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money04_txt').val(Math.round(parseFloat(tmoney04Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//不允許空白驗證
	var tname = $('#MasterPage_MasterPageContent_name_txt');
	if (tname.length > 0) {
		var tnameValue = $('#MasterPage_MasterPageContent_name_txt').val().trim();
		if (tnameValue.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'name', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var ttextarea1 = $('#MasterPage_MasterPageContent_textarea1_txt');
	if (ttextarea1.length > 0) {
		var ttextarea1Value = $('#MasterPage_MasterPageContent_textarea1_txt').val().trim();
		if (ttextarea1Value.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'textarea1', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//float格式驗証
	var ttotalmoney = $('#MasterPage_MasterPageContent_totalmoney_txt');
	if (ttotalmoney.length > 0) {
		var ttotalmoneyValue = $('#MasterPage_MasterPageContent_totalmoney_txt').val().trim();
		if (ttotalmoneyValue.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(ttotalmoneyValue)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'totalmoney', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				ttotalmoneyValue = ttotalmoneyValue.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_totalmoney_txt').val(Math.round(parseFloat(ttotalmoneyValue) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}



	if (tErr == "") {
		return true;
	}
	else {
		alert(tErr);
		return false;
	}
}

//2020/03/25;6.1.13.5;hiro;S00-20200225001;草稿儲存僅做數值驗證，不做其他驗證↓
//草稿數值驗證
function DraftSaveCheck() {
	var tErr = "";
	var tIntErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'IntErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tFloatErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'FloatErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tDecimalErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'DecimalErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	//數值驗證
	//float格式驗証
	var tmoney01 = $('#MasterPage_MasterPageContent_money01_txt');
	if (tmoney01.length > 0) {
		var tmoney01Value = $('#MasterPage_MasterPageContent_money01_txt').val().trim().replace(/\,/g, '');//Peggy移除千分位;
		if (tmoney01Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney01Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'money01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney01Value = tmoney01Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money01_txt').val(Math.round(parseFloat(tmoney01Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney02 = $('#MasterPage_MasterPageContent_money02_txt');
	if (tmoney02.length > 0) {
		var tmoney02Value = $('#MasterPage_MasterPageContent_money02_txt').val().trim().replace(/\,/g, '');//Peggy移除千分位;
		if (tmoney02Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney02Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'money02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney02Value = tmoney02Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money02_txt').val(Math.round(parseFloat(tmoney02Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney03 = $('#MasterPage_MasterPageContent_money03_txt');
	if (tmoney03.length > 0) {
		var tmoney03Value = $('#MasterPage_MasterPageContent_money03_txt').val().trim().replace(/\,/g, '');//Peggy移除千分位;
		if (tmoney03Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney03Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'money03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney03Value = tmoney03Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money03_txt').val(Math.round(parseFloat(tmoney03Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney04 = $('#MasterPage_MasterPageContent_money04_txt');
	if (tmoney04.length > 0) {
		var tmoney04Value = $('#MasterPage_MasterPageContent_money04_txt').val().trim().replace(/\,/g, '');//Peggy移除千分位;
		if (tmoney04Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney04Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'money04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney04Value = tmoney04Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money04_txt').val(Math.round(parseFloat(tmoney04Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var ttotalmoney = $('#MasterPage_MasterPageContent_totalmoney_txt');
	if (ttotalmoney.length > 0) {
		var ttotalmoneyValue = $('#MasterPage_MasterPageContent_totalmoney_txt').val().trim().replace(/\,/g, '');//Peggy移除千分位;
		if (ttotalmoneyValue.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(ttotalmoneyValue)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMADVVL01', 'totalmoney', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				ttotalmoneyValue = ttotalmoneyValue.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_totalmoney_txt').val(Math.round(parseFloat(ttotalmoneyValue) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}



	if (tErr == "") {
		return true;
	}
	else {
		alert(tErr);
		return false;
	}
}
//2020/03/25;6.1.13.5;hiro;S00-20200225001;草稿儲存僅做數值驗證，不做其他驗證↑

//單頭表單簽核鈕驗證單身全部欄位
function CustomerSaveCheck_DetailAllData(pFormId, pUniversalId) {
	var tErr = "";



	if (tErr == "") {
		return true;
	}
	else {
		alert(tErr);
		return false;
	}
}


//單身自訂驗證
function CustomerSaveCheck_Body(tStatus) {
	var tErr = "";
	var tFieldNotFilledMsg = getI18NForSpecial('PSMSG', 'Validation', 'RequriedFieldNotFilled', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tIntErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'IntErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tFloatErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'FloatErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tDecimalErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'DecimalErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	if (tStatus == "CREATE") {
		//填表時要驗證

	}
	else if (tStatus == "APPROVE") {
		//簽核時要驗證

	}

	//填表及簽核都要驗證


	if (tErr == "") {
		return true;
	}
	else {
		alert(tErr);
		return false;
	}
}

String.prototype.trim = function () {
	return this.replace(/^\s+|\s+$/g, "");
}

//填表時顯示提示字串
function InitOpenShowMSG() {
	alert('');
}

function InitTriggerMust(tStatus) {
	//2022/07/15;Folls;C01-20220715005;Radio及checkbox於簽核時無法實現觸發顯示欄位
	if (tStatus == "CREATE" || tStatus == "DISPLAY" || tStatus == "" || tStatus == "APPROVE") {

	}
}

function InitTriggerOpen() {

}

function InitCalculated() {
	domath_totalmoney();

}

function InitOnChangeItem() {

}

function CreateOption(pValue, pText, objselect) {
	var new_option = new Option(pText, pValue);
	objselect.options.add(new_option);
}



function InitNumberToWord() {

}

function getMoneyWord(pNumberContrlID, pDecimalPlaces, pWordControlID) {
	var strErr = "";
	if ($('#MasterPage_MasterPageContent_' + pNumberContrlID + '_txt').length > 0 && $('#MasterPage_MasterPageContent_' + pNumberContrlID + '_txt').is(':visible')) {
		var tControlNumValue = $('#MasterPage_MasterPageContent_' + pNumberContrlID + '_txt').val().trim();
		if (tControlNumValue.length > 0) {
			if (isNaN(tControlNumValue)) {
				//請輸入數值!
				strErr = getI18NForSpecial('PSMSG', 'NumsCheck', 'NumsCheckMSG001', '../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			}
			else {
				//這裡使用者如果輸入超過16進位的數值，就會失真！
				//tControlNumValue = parseFloat(tControlNumValue).toFixed(pDecimalPlaces);
				tControlNumValue = tw.com.dsc.easyflowDotNet.forms.ODMADVVL01.ajaxGetFixedNum(tControlNumValue, pDecimalPlaces).value;

				$('#MasterPage_MasterPageContent_' + pNumberContrlID + '_txt').val(tControlNumValue);
				var iIntegerSTR = "";
				var tDecimalSTR = "";
				if (pDecimalPlaces > 0) {
					//含小數位
					var aryControlNumValue = tControlNumValue.toString().split('.');
					iIntegerSTR = parseInt(aryControlNumValue[0]);
					tDecimalSTR = aryControlNumValue[1];
				}
				else {
					iIntegerSTR = tControlNumValue;
				}

				//if(iIntegerSTR>=10000000000000000 || iIntegerSTR<=-9999999999999999)
				if (iIntegerSTR < 0) {
					if (iIntegerSTR.toString().length > 17)
						//數值溢位!請輸入較大的數值!
						strErr = getI18NForSpecial('Message', 'NumsCheck', 'NumsOverRangMSG001', '../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
				}
				else {
					if (iIntegerSTR.toString().length > 16)
						//數值溢位!請輸入較小的數值!
						strErr = getI18NForSpecial('Message', 'NumsCheck', 'NumsOverRangMSG002', '../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
				}
			}

			if (strErr != "") {
				alert(strErr);
				$('#MasterPage_MasterPageContent_' + pNumberContrlID + '_txt').val("");
				$('#MasterPage_MasterPageContent_' + pWordControlID + '_txt').val("");
				return false;
			}

			var tControlWordValue = tw.com.dsc.easyflowDotNet.forms.ODMADVVL01.ajaxGetMoneyWord(tControlNumValue).value;
			$('#MasterPage_MasterPageContent_' + pWordControlID + '_txt').val(tControlWordValue);
		}
		//2015/09/14;3.7.3.19;hiro;V00-20150914007;修正數值轉大寫，數值為空白時，沒有一併清空轉大寫欄位↓
		else {
			$('#MasterPage_MasterPageContent_' + pWordControlID + '_txt').val("");
		}
		//2015/09/14;3.7.3.19;hiro;V00-20150914007;修正數值轉大寫，數值為空白時，沒有一併清空轉大寫欄位↑
	}
	return true;
}

function InitReadOnly() {

}


function SetCustomSubject() {
	//使用者自訂主旨start
	var tSubjectVal = '';
	var tSubjectTxt = document.getElementById("MasterPage_txtCreateToolSubject_txt").value;
	var tSubjectSelf = '';
	tSubjectSelf += 'MVE預支單-';

	//自訂主旨+標準主旨
	tSubjectVal = tSubjectSelf + tSubjectTxt;

	if (tSubjectVal.length > 255) { tSubjectVal = tSubjectVal.substring(0, 255); }
	//使用者自訂主旨end

	$("#MasterPage_txtCreateToolSubject_txt").val(tSubjectVal);
}

function domath_totalmoney() {
	try {
		if ($("#MasterPage_MasterPageContent_money01_txt").length == 0)
			return;
		var money01 = $("#MasterPage_MasterPageContent_money01_txt").val().trim().replace(/\,/g, '');//Peggy移除千分位;
		if (isNaN(money01)) {
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney01 = money01.length > 0 ? parseFloat(money01) : 0;

		document.getElementById("MasterPage_MasterPageContent_money01_txt").value = Math.round(parseFloat(intmoney01) * Math.pow(10, 2)) / Math.pow(10, 2);
		intmoney01 = parseFloat($("#MasterPage_MasterPageContent_money01_txt").val().trim());

		if ($("#MasterPage_MasterPageContent_money02_txt").length == 0)
			return;
		var money02 = $("#MasterPage_MasterPageContent_money02_txt").val().trim().replace(/\,/g, '');//Peggy移除千分位;
		if (isNaN(money02)) {
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney02 = money02.length > 0 ? parseFloat(money02) : 0;

		document.getElementById("MasterPage_MasterPageContent_money02_txt").value = Math.round(parseFloat(intmoney02) * Math.pow(10, 2)) / Math.pow(10, 2);
		intmoney02 = parseFloat($("#MasterPage_MasterPageContent_money02_txt").val().trim());

		if ($("#MasterPage_MasterPageContent_money03_txt").length == 0)
			return;
		var money03 = $("#MasterPage_MasterPageContent_money03_txt").val().trim().replace(/\,/g, '');//Peggy移除千分位;
		if (isNaN(money03)) {
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney03 = money03.length > 0 ? parseFloat(money03) : 0;

		document.getElementById("MasterPage_MasterPageContent_money03_txt").value = Math.round(parseFloat(intmoney03) * Math.pow(10, 2)) / Math.pow(10, 2);
		intmoney03 = parseFloat($("#MasterPage_MasterPageContent_money03_txt").val().trim());

		if ($("#MasterPage_MasterPageContent_money04_txt").length == 0)
			return;
		var money04 = $("#MasterPage_MasterPageContent_money04_txt").val().trim().replace(/\,/g, '');//Peggy移除千分位;
		if (isNaN(money04)) {
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney04 = money04.length > 0 ? parseFloat(money04) : 0;

		document.getElementById("MasterPage_MasterPageContent_money04_txt").value = Math.round(parseFloat(intmoney04) * Math.pow(10, 2)) / Math.pow(10, 2);
		intmoney04 = parseFloat($("#MasterPage_MasterPageContent_money04_txt").val().trim());

		var finalvalue = intmoney01 + intmoney02 + intmoney03 + intmoney04;
		if (finalvalue == undefined || !isFinite(finalvalue)) {
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_totalmoney_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//重新加回千分位格式Peggy
		document.getElementById("MasterPage_MasterPageContent_money01_txt").value = OEMFormat(parseFloat(intmoney01).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money02_txt").value = OEMFormat(parseFloat(intmoney02).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money03_txt").value = OEMFormat(parseFloat(intmoney03).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money04_txt").value = OEMFormat(parseFloat(intmoney04).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_totalmoney_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));

	} catch (err) {
		$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
		var errorMsg = getI18NForSpecial('FD', 'CalculatedSet2', 'MutiLang_04', '../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg + err);
	}
}


function setSelectPanelValue() {
	var aryFields = [];//單頭、單身多選開窗
	var intFieldsLength = aryFields.length;
	for (var i = 0; i < intFieldsLength; i++) {
		var tField = aryFields[i];
		if ($('#MasterPage_MasterPageContent_DscOpenQuery' + tField + '_txt').length > 0) {
			var hdnValue = $('#MasterPage_MasterPageContent_DscOpenQuery' + tField + '_txt').val();
			$('#MasterPage_MasterPageContent_SelectPanel' + tField + '_hidText').val(hdnValue);
			$('#MasterPage_MasterPageContent_SelectPanel' + tField + '_hidText2').val(hdnValue);

			if ($('#MasterPage_MasterPageContent_SelectPanel' + tField + '_lst').length > 0) {
				$('#MasterPage_MasterPageContent_SelectPanel' + tField + '_lst')[0].options.length = 0;

				if ($('#MasterPage_MasterPageContent_SelectPanel' + tField + '_lstTbx').length > 0) {
					$('#MasterPage_MasterPageContent_SelectPanel' + tField + '_lstTbx').val("");
				}

				if (hdnValue.length > 0) {
					var aryHdnFieldSplit = hdnValue.split('§');
					var intHdnFieldSplitLength = aryHdnFieldSplit.length;
					for (var j = 0; j < intHdnFieldSplitLength; j++) {
						var tShowItem = aryHdnFieldSplit[j];
						tShowItem = tShowItem.replace(/┼┼/g, " ");
						var new_option = new Option(tShowItem, tShowItem);
						$('#MasterPage_MasterPageContent_SelectPanel' + tField + '_lst')[0].options.add(new_option);

						if ($('#MasterPage_MasterPageContent_SelectPanel' + tField + '_lstTbx').length > 0) {
							document.getElementById('MasterPage_MasterPageContent_SelectPanel' + tField + '_lstTbx').value += tShowItem;
							if (j != intHdnFieldSplitLength - 1) {
								document.getElementById('MasterPage_MasterPageContent_SelectPanel' + tField + '_lstTbx').value += '\r\n';
							}
						}
					}
				}
			}
		}
	}
}


function jsDoDispatch(pFormID, pSheetNo, pDispatchFormID) {
	//若您已有編輯此表單資料, 此動作會清除您所編輯的資料! [請問是否繼續?
	var tConfirmSTR = getI18NForSpecial('FD', 'EFBaseMasterPage', 'EFMsgBoxJS007', '../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	if (window.confirm(tConfirmSTR.split('[')[0].toString() + "\r\n\r\n" + tConfirmSTR.split('[')[1].toString())) {
		var bResult = tw.com.dsc.easyflowDotNet.forms.ODMADVVL01.ajaxDoDispatchForm(pFormID, pSheetNo, pDispatchFormID).value;
		var tDispatchFormResult = "";
		if (bResult) {
			//執行派送表單成功!
			tDispatchFormResult = getI18NForSpecial('Message', 'EFWizardForm', 'DispatchFormSuccess', '../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			alert(tDispatchFormResult);
			//Refresh 原頁面避免 Session 錯亂
			location.reload();
		}
		else {
			//執行派送表單失敗!
			tDispatchFormResult = getI18NForSpecial('Message', 'EFWizardForm', 'DispatchFormFail', '../../../src/_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
			alert(tDispatchFormResult);
		}
	}
}


