﻿//單頭自訂驗證
function CustomerSaveCheck_Head(tStatus) {
	var tErr = "";
	var tFieldNotFilledMsg = getI18NForSpecial('PSMSG', 'Validation', 'RequriedFieldNotFilled', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tIntErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'IntErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tFloatErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'FloatErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	var tDecimalErrMsg = getI18NForSpecial('PSMSG', 'Validation', 'DecimalErrMsg', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
	if (tStatus == "CREATE") {
		//填表時要驗證
		//Peggy 新增請款單類別警示
		//文字驗証
		var topentype01 = $('#MasterPage_MasterPageContent_opentype01_txt');
		var tErr = '';

		if (topentype01.length > 0) {
			if ('readonly' !== topentype01.attr('readonly') &&
				'disabled' !== topentype01.attr('disabled')) {
				var topentype01Value = topentype01.val();

				// 檢查是否超過長度
				//if (topentype01Value.length > 50) {
				//	// 將錯誤消息添加到輸入字段下方
				//	appendErrorMessage(topentype01, '輸入超過長度');

				//	// 顯示確認彈窗
				//	if (confirm('xx欄位輸入超過長度，確定要提交嗎？')) {
				//		// 用戶點擊確定，繼續提交表單
				//	} else {
				//		// 用戶點擊取消，阻止表單提交
				//		event.preventDefault();
				//	}
				//} else {
				// 清空可能存在的錯誤消息
				clearErrorMessage(topentype01);

				// 如果輸入為空，顯示提示信息
				if (topentype01Value === null || topentype01Value.trim() === '') {
					// 顯示確認彈窗
					if (confirm('【請二次確認支出類別沒有勾選，是因該費用已在報價中或已跟客戶收款的情形】\n\r Đề nghị xác nhận lại loại chi phí chưa chọn, do chi phí này đã có trong báo giá hoặc đã thu phí của khách hàng')) {
						// 用戶點擊確定，繼續提交表單
					} else {
						// 用戶點擊取消，阻止表單提交
						event.preventDefault();
					}
				}
				//}
			}
		}

		// 函數用於在輸入字段下方添加錯誤消息
		function appendErrorMessage(element, message) {
			// 檢查是否已經有錯誤消息元素，如果有，更新文本內容，否則創建一個新的元素
			var errorElement = element.next('.error-message');
			if (errorElement.length === 0) {
				errorElement = $('<div class="error-message"></div>').insertAfter(element);
			}

			// 更新錯誤消息文本
			errorElement.text(message);
			// 添加紅色樣式
			errorElement.css('color', 'red');
		}

		// 函數用於清空輸入字段下方的錯誤消息
		function clearErrorMessage(element) {
			var errorElement = element.next('.error-message');
			if (errorElement.length !== 0) {
				errorElement.remove();
			}
		}


		//Radio Button 驗証
		if ($('#MasterPage_MasterPageContent_chpay_txt').attr('readonly') !== 'readonly') {
			if ($('#MasterPage_MasterPageContent_chpay_txt').length > 0 && document.getElementById('MasterPage_MasterPageContent_chpay_txt').value == '') {
				tErr += getI18NForSpecial('FD', 'ODMFPAYVL01', 'chpay_Err', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '\r\n';
			}
		}

		//20230424 Peggy Star
		//驗證第二個開窗必填
		var _opentype01 = document.getElementById("MasterPage_MasterPageContent_opentype01_txt");
		var _openitem01 = document.getElementById("MasterPage_MasterPageContent_openitem01_txt");
		var _opentype02 = document.getElementById("MasterPage_MasterPageContent_opentype02_txt");
		var _openitem02 = document.getElementById("MasterPage_MasterPageContent_openitem02_txt");
		var _opentype03 = document.getElementById("MasterPage_MasterPageContent_opentype03_txt");
		var _openitem03 = document.getElementById("MasterPage_MasterPageContent_openitem03_txt");
		var _opentype04 = document.getElementById("MasterPage_MasterPageContent_opentype04_txt");
		var _openitem04 = document.getElementById("MasterPage_MasterPageContent_openitem04_txt");
		var _opentype05 = document.getElementById("MasterPage_MasterPageContent_opentype05_txt");
		var _openitem05 = document.getElementById("MasterPage_MasterPageContent_openitem05_txt");

		if (_opentype01 != null && _opentype01.value != "") {
			if (_openitem01.value == "") {
				tErr += "請選擇子項目!" + "\r\n";
			}
		}
		if (_opentype02 != null && _opentype02.value != "") {
			if (_openitem02.value == "") {
				tErr += "請選擇子項目!" + "\r\n";
			}
		}
		if (_opentype03 != null && _opentype03.value != "") {
			if (_openitem03.value == "") {
				tErr += "請選擇子項目!" + "\r\n";
			}
		}
		if (_opentype04 != null && _opentype04.value != "") {
			if (_openitem04.value == "") {
				tErr += "請選擇子項目!" + "\r\n";
			}
		}
		if (_opentype05 != null && _opentype05.value != "") {
			if (_openitem05.value == "") {
				tErr += "請選擇子項目!" + "\r\n";
			}
		}

		//20230424 Peggy End

	}
	else if (tStatus == "APPROVE") {
		//簽核時要驗證

	}

	//填表及簽核都要驗證
	//不允許空白驗證
	var tdatetime1 = $('#MasterPage_MasterPageContent_datetime1_txt');
	if (tdatetime1.length > 0) {
		var tdatetime1Value = $('#MasterPage_MasterPageContent_datetime1_txt').val().trim();
		if (tdatetime1Value.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'datetime1', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tdept = $('#MasterPage_MasterPageContent_dept_txt');
	if (tdept.length > 0) {
		var tdeptValue = $('#MasterPage_MasterPageContent_dept_txt').val().trim();
		if (tdeptValue.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'dept', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//Int格式驗証
	var tinv01 = $('#MasterPage_MasterPageContent_inv01_txt');
	if (tinv01.length > 0) {
		var tinv01Value = $('#MasterPage_MasterPageContent_inv01_txt').val().trim();
		if (tinv01Value.length > 0) {
			if (!/^-?\d+$/.test(tinv01Value)) {
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'inv01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tinv02 = $('#MasterPage_MasterPageContent_inv02_txt');
	if (tinv02.length > 0) {
		var tinv02Value = $('#MasterPage_MasterPageContent_inv02_txt').val().trim();
		if (tinv02Value.length > 0) {
			if (!/^-?\d+$/.test(tinv02Value)) {
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'inv02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//不允許空白驗證
	var tmoney01 = $('#MasterPage_MasterPageContent_money01_txt');
	if (tmoney01.length > 0) {
		var tmoney01Value = $('#MasterPage_MasterPageContent_money01_txt').val().trim();
		if (tmoney01Value.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//float格式驗証
	var tmoney01 = $('#MasterPage_MasterPageContent_money01_txt');
	if (tmoney01.length > 0) {
		var tmoney01Value = $('#MasterPage_MasterPageContent_money01_txt').val().trim();
		if (tmoney01Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney01Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
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
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
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
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
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
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney04Value = tmoney04Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money04_txt').val(Math.round(parseFloat(tmoney04Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney05 = $('#MasterPage_MasterPageContent_money05_txt');
	if (tmoney05.length > 0) {
		var tmoney05Value = $('#MasterPage_MasterPageContent_money05_txt').val().trim();
		if (tmoney05Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney05Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney05Value = tmoney05Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money05_txt').val(Math.round(parseFloat(tmoney05Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmtotal = $('#MasterPage_MasterPageContent_mtotal_txt');
	if (tmtotal.length > 0) {
		var tmtotalValue = $('#MasterPage_MasterPageContent_mtotal_txt').val().trim();
		if (tmtotalValue.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmtotalValue)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'mtotal', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmtotalValue = tmtotalValue.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_mtotal_txt').val(Math.round(parseFloat(tmtotalValue) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//不允許空白驗證
	var tpayee = $('#MasterPage_MasterPageContent_payee_txt');
	if (tpayee.length > 0) {
		var tpayeeValue = $('#MasterPage_MasterPageContent_payee_txt').val().trim();
		if (tpayeeValue.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'payee', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var ttextarea1 = $('#MasterPage_MasterPageContent_textarea1_txt');
	if (ttextarea1.length > 0) {
		var ttextarea1Value = $('#MasterPage_MasterPageContent_textarea1_txt').val().trim();
		if (ttextarea1Value.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'textarea1', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tusername = $('#MasterPage_MasterPageContent_username_txt');
	if (tusername.length > 0) {
		var tusernameValue = $('#MasterPage_MasterPageContent_username_txt').val().trim();
		if (tusernameValue.length == 0) {
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'username', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
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
	//Int格式驗証
	var tinv01 = $('#MasterPage_MasterPageContent_inv01_txt');
	if (tinv01.length > 0) {
		var tinv01Value = $('#MasterPage_MasterPageContent_inv01_txt').val().trim();
		if (tinv01Value.length > 0) {
			if (!/^-?\d+$/.test(tinv01Value)) {
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'inv01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tinv02 = $('#MasterPage_MasterPageContent_inv02_txt');
	if (tinv02.length > 0) {
		var tinv02Value = $('#MasterPage_MasterPageContent_inv02_txt').val().trim();
		if (tinv02Value.length > 0) {
			if (!/^-?\d+$/.test(tinv02Value)) {
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'inv02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//float格式驗証
	var tmoney01 = $('#MasterPage_MasterPageContent_money01_txt');
	if (tmoney01.length > 0) {
		var tmoney01Value = $('#MasterPage_MasterPageContent_money01_txt').val().trim().replace(/\,/g, '');
		if (tmoney01Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney01Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
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
		var tmoney02Value = $('#MasterPage_MasterPageContent_money02_txt').val().trim().replace(/\,/g, '');
		if (tmoney02Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney02Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
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
		var tmoney03Value = $('#MasterPage_MasterPageContent_money03_txt').val().trim().replace(/\,/g, '');
		if (tmoney03Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney03Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
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
		var tmoney04Value = $('#MasterPage_MasterPageContent_money04_txt').val().trim().replace(/\,/g, '');
		if (tmoney04Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney04Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney04Value = tmoney04Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money04_txt').val(Math.round(parseFloat(tmoney04Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney05 = $('#MasterPage_MasterPageContent_money05_txt');
	if (tmoney05.length > 0) {
		var tmoney05Value = $('#MasterPage_MasterPageContent_money05_txt').val().trim().replace(/\,/g, '');
		if (tmoney05Value.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney05Value)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'money05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmoney05Value = tmoney05Value.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_money05_txt').val(Math.round(parseFloat(tmoney05Value) * Math.pow(10, 2)) / Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmtotal = $('#MasterPage_MasterPageContent_mtotal_txt');
	if (tmtotal.length > 0) {
		var tmtotalValue = $('#MasterPage_MasterPageContent_mtotal_txt').val().trim().replace(/\,/g, '');
		if (tmtotalValue.length > 0) {
			if (!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmtotalValue)) {
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'mtotal', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else {
				tmtotalValue = tmtotalValue.replace(/\,/g, '');
				$('#MasterPage_MasterPageContent_mtotal_txt').val(Math.round(parseFloat(tmtotalValue) * Math.pow(10, 2)) / Math.pow(10, 2));
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
		if ($("#MasterPage_MasterPageContent_chkatt01_chk").length > 0) {
			if ($("#MasterPage_MasterPageContent_chkatt01_chk")[0].checked) {
				$("#MasterPage_MasterPageContent_inv01").show();
			}
			else {
				$("#MasterPage_MasterPageContent_inv01").hide();
			}
		}

		if ($("#MasterPage_MasterPageContent_chkatt02_chk").length > 0) {
			if ($("#MasterPage_MasterPageContent_chkatt02_chk")[0].checked) {
				$("#MasterPage_MasterPageContent_inv02").show();
			}
			else {
				$("#MasterPage_MasterPageContent_inv02").hide();
			}
		}

		if ($("#MasterPage_MasterPageContent_chkitem05_chk").length > 0) {
			if ($("#MasterPage_MasterPageContent_chkitem05_chk")[0].checked) {
				$("#MasterPage_MasterPageContent_chkother").show();
			}
			else {
				$("#MasterPage_MasterPageContent_chkother").hide();
			}
		}

		if ($("#MasterPage_MasterPageContent_other_chk").length > 0) {
			if ($("#MasterPage_MasterPageContent_other_chk")[0].checked) {
				$("#MasterPage_MasterPageContent_attother").show();
			}
			else {
				$("#MasterPage_MasterPageContent_attother").hide();
			}
		}

		if ($("#MasterPage_MasterPageContent_chpay_ctrolRadio2").length > 0) {
			if ($("#MasterPage_MasterPageContent_chpay_ctrolRadio2")[0].checked) {
				$("#MasterPage_MasterPageContent_payother").show();
			}
			else {
				$("#MasterPage_MasterPageContent_payother").hide();
			}
		}


	}
}

//20231129 Peggy-子類別預設Disable-S
function InitTriggerOpen() {
	if ($("#MasterPage_MasterPageContent_opentype01_txt").length > 0) {
		if ($("#MasterPage_MasterPageContent_opentype01_txt").val() == "") {
			$('#MasterPage_MasterPageContent_openitem01_txt')[0].style.backgroundColor = '#deecea';
			$('#MasterPage_MasterPageContent_openitem01_txt').val("");
			$('#MasterPage_MasterPageContent_openitem01_txt2').text("");
			if (!$('#MasterPage_MasterPageContent_openitem01_txt').attr("disabled")) {
				$('#MasterPage_MasterPageContent_openitem01_txt').prop("disabled", true);
				$('#MasterPage_MasterPageContent_openitem01_btn').prop("disabled", true);
				$('#MasterPage_MasterPageContent_openitem01_btn').css("cursor", "default");
				$('#MasterPage_MasterPageContent_openitem01_btn').css("pointer-events", "none");
			}
		}
		else {
			$('#MasterPage_MasterPageContent_openitem01_txt')[0].style.backgroundColor = 'white';
			if ($('#MasterPage_MasterPageContent_openitem01_txt').hasClass("PL_ReadOnly")) {
				$('#MasterPage_MasterPageContent_openitem01_txt')[0].style.backgroundColor = '#deecea';
			}
			else if ($('#MasterPage_MasterPageContent_openitem01_txt').attr("disabled")) {
				$('#MasterPage_MasterPageContent_openitem01_txt').prop("disabled", false);
				$('#MasterPage_MasterPageContent_openitem01_btn').prop("disabled", false);
				$('#MasterPage_MasterPageContent_openitem01_btn').css("cursor", "pointer");
				$('#MasterPage_MasterPageContent_openitem01_btn').css("pointer-events", "auto");
			}
		}
	}

	if ($("#MasterPage_MasterPageContent_opentype02_txt").length > 0) {
		if ($("#MasterPage_MasterPageContent_opentype02_txt").val() == "") {
			$('#MasterPage_MasterPageContent_openitem02_txt')[0].style.backgroundColor = '#deecea';
			$('#MasterPage_MasterPageContent_openitem02_txt').val("");
			$('#MasterPage_MasterPageContent_openitem02_txt2').text("");
			if (!$('#MasterPage_MasterPageContent_openitem02_txt').attr("disabled")) {
				$('#MasterPage_MasterPageContent_openitem02_txt').prop("disabled", true);
				$('#MasterPage_MasterPageContent_openitem02_btn').prop("disabled", true);
				$('#MasterPage_MasterPageContent_openitem02_btn').css("cursor", "default");
				$('#MasterPage_MasterPageContent_openitem02_btn').css("pointer-events", "none");
			}
		}
		else {
			$('#MasterPage_MasterPageContent_openitem02_txt')[0].style.backgroundColor = 'white';
			if ($('#MasterPage_MasterPageContent_openitem02_txt').hasClass("PL_ReadOnly")) {
				$('#MasterPage_MasterPageContent_openitem02_txt')[0].style.backgroundColor = '#deecea';
			}
			else if ($('#MasterPage_MasterPageContent_openitem02_txt').attr("disabled")) {
				$('#MasterPage_MasterPageContent_openitem02_txt').prop("disabled", false);
				$('#MasterPage_MasterPageContent_openitem02_btn').prop("disabled", false);
				$('#MasterPage_MasterPageContent_openitem02_btn').css("cursor", "pointer");
				$('#MasterPage_MasterPageContent_openitem02_btn').css("pointer-events", "auto");
			}
		}
	}

	if ($("#MasterPage_MasterPageContent_opentype03_txt").length > 0) {
		if ($("#MasterPage_MasterPageContent_opentype03_txt").val() == "") {
			$('#MasterPage_MasterPageContent_openitem03_txt')[0].style.backgroundColor = '#deecea';
			$('#MasterPage_MasterPageContent_openitem03_txt').val("");
			$('#MasterPage_MasterPageContent_openitem03_txt2').text("");
			if (!$('#MasterPage_MasterPageContent_openitem03_txt').attr("disabled")) {
				$('#MasterPage_MasterPageContent_openitem03_txt').prop("disabled", true);
				$('#MasterPage_MasterPageContent_openitem03_btn').prop("disabled", true);
				$('#MasterPage_MasterPageContent_openitem03_btn').css("cursor", "default");
				$('#MasterPage_MasterPageContent_openitem03_btn').css("pointer-events", "none");
			}
		}
		else {
			$('#MasterPage_MasterPageContent_openitem03_txt')[0].style.backgroundColor = 'white';
			if ($('#MasterPage_MasterPageContent_openitem03_txt').hasClass("PL_ReadOnly")) {
				$('#MasterPage_MasterPageContent_openitem03_txt')[0].style.backgroundColor = '#deecea';
			}
			else if ($('#MasterPage_MasterPageContent_openitem03_txt').attr("disabled")) {
				$('#MasterPage_MasterPageContent_openitem03_txt').prop("disabled", false);
				$('#MasterPage_MasterPageContent_openitem03_btn').prop("disabled", false);
				$('#MasterPage_MasterPageContent_openitem03_btn').css("cursor", "pointer");
				$('#MasterPage_MasterPageContent_openitem03_btn').css("pointer-events", "auto");
			}
		}
	}

	if ($("#MasterPage_MasterPageContent_opentype04_txt").length > 0) {
		if ($("#MasterPage_MasterPageContent_opentype04_txt").val() == "") {
			$('#MasterPage_MasterPageContent_openitem04_txt')[0].style.backgroundColor = '#deecea';
			$('#MasterPage_MasterPageContent_openitem04_txt').val("");
			$('#MasterPage_MasterPageContent_openitem04_txt2').text("");
			if (!$('#MasterPage_MasterPageContent_openitem04_txt').attr("disabled")) {
				$('#MasterPage_MasterPageContent_openitem04_txt').prop("disabled", true);
				$('#MasterPage_MasterPageContent_openitem04_btn').prop("disabled", true);
				$('#MasterPage_MasterPageContent_openitem04_btn').css("cursor", "default");
				$('#MasterPage_MasterPageContent_openitem04_btn').css("pointer-events", "none");
			}
		}
		else {
			$('#MasterPage_MasterPageContent_openitem04_txt')[0].style.backgroundColor = 'white';
			if ($('#MasterPage_MasterPageContent_openitem04_txt').hasClass("PL_ReadOnly")) {
				$('#MasterPage_MasterPageContent_openitem04_txt')[0].style.backgroundColor = '#deecea';
			}
			else if ($('#MasterPage_MasterPageContent_openitem04_txt').attr("disabled")) {
				$('#MasterPage_MasterPageContent_openitem04_txt').prop("disabled", false);
				$('#MasterPage_MasterPageContent_openitem04_btn').prop("disabled", false);
				$('#MasterPage_MasterPageContent_openitem04_btn').css("cursor", "pointer");
				$('#MasterPage_MasterPageContent_openitem04_btn').css("pointer-events", "auto");
			}
		}
	}

	if ($("#MasterPage_MasterPageContent_opentype05_txt").length > 0) {
		if ($("#MasterPage_MasterPageContent_opentype05_txt").val() == "") {
			$('#MasterPage_MasterPageContent_openitem05_txt')[0].style.backgroundColor = '#deecea';
			$('#MasterPage_MasterPageContent_openitem05_txt').val("");
			$('#MasterPage_MasterPageContent_openitem05_txt2').text("");
			if (!$('#MasterPage_MasterPageContent_openitem05_txt').attr("disabled")) {
				$('#MasterPage_MasterPageContent_openitem05_txt').prop("disabled", true);
				$('#MasterPage_MasterPageContent_openitem05_btn').prop("disabled", true);
				$('#MasterPage_MasterPageContent_openitem05_btn').css("cursor", "default");
				$('#MasterPage_MasterPageContent_openitem05_btn').css("pointer-events", "none");
			}
		}
		else {
			$('#MasterPage_MasterPageContent_openitem05_txt')[0].style.backgroundColor = 'white';
			if ($('#MasterPage_MasterPageContent_openitem05_txt').hasClass("PL_ReadOnly")) {
				$('#MasterPage_MasterPageContent_openitem05_txt')[0].style.backgroundColor = '#deecea';
			}
			else if ($('#MasterPage_MasterPageContent_openitem05_txt').attr("disabled")) {
				$('#MasterPage_MasterPageContent_openitem05_txt').prop("disabled", false);
				$('#MasterPage_MasterPageContent_openitem05_btn').prop("disabled", false);
				$('#MasterPage_MasterPageContent_openitem05_btn').css("cursor", "pointer");
				$('#MasterPage_MasterPageContent_openitem05_btn').css("pointer-events", "auto");
			}
		}
	}
}

function InitCalculated() {
	domath_mtotal();

}

function InitOnChangeItem() {

}

function CreateOption(pValue, pText, objselect) {
	var new_option = new Option(pText, pValue);
	objselect.options.add(new_option);
}

function FunOnChange_opentype01() {
	var evt = (event) ? event : window.event;
	var element = evt.srcElement || evt.target;
	//如果是透過 automimj 不觸發
	if (element != null && element.id != null) {
		$('#MasterPage_MasterPageContent_openitem01_txt').val("");
		$('#MasterPage_MasterPageContent_openitem01_txt2').text("");
	}
}//EndFun_FunOnChange_opentype01()

function FunCheckIsChanged_opentype01() {
	var PreSetValue = $('#MasterPage_MasterPageContent_hdnOpenQueryPreSetValue').val();
	if (PreSetValue.length > 0) {
		var aryPreSetValue = PreSetValue.split('§');
		if (aryPreSetValue.length > 1) {
			if ("opentype01" == aryPreSetValue[0] && $('#MasterPage_MasterPageContent_opentype01_txt').val() != aryPreSetValue[1])
				FunOnChange_opentype01();
		}
	}
	else {
		FunOnChange_opentype01();
	}
}//EndFun_FunCheckIsChanged_opentype01()

function FunOnChange_opentype02() {
	var evt = (event) ? event : window.event;
	var element = evt.srcElement || evt.target;
	//如果是透過 automimj 不觸發
	if (element != null && element.id != null) {
		$('#MasterPage_MasterPageContent_openitem02_txt').val("");
		$('#MasterPage_MasterPageContent_openitem02_txt2').text("");
	}
}//EndFun_FunOnChange_opentype02()

function FunCheckIsChanged_opentype02() {
	var PreSetValue = $('#MasterPage_MasterPageContent_hdnOpenQueryPreSetValue').val();
	if (PreSetValue.length > 0) {
		var aryPreSetValue = PreSetValue.split('§');
		if (aryPreSetValue.length > 1) {
			if ("opentype02" == aryPreSetValue[0] && $('#MasterPage_MasterPageContent_opentype02_txt').val() != aryPreSetValue[1])
				FunOnChange_opentype02();
		}
	}
	else {
		FunOnChange_opentype02();
	}
}//EndFun_FunCheckIsChanged_opentype02()

function FunOnChange_opentype03() {
	var evt = (event) ? event : window.event;
	var element = evt.srcElement || evt.target;
	//如果是透過 automimj 不觸發
	if (element != null && element.id != null) {
		$('#MasterPage_MasterPageContent_openitem03_txt').val("");
		$('#MasterPage_MasterPageContent_openitem03_txt2').text("");
	}
}//EndFun_FunOnChange_opentype03()

function FunCheckIsChanged_opentype03() {
	var PreSetValue = $('#MasterPage_MasterPageContent_hdnOpenQueryPreSetValue').val();
	if (PreSetValue.length > 0) {
		var aryPreSetValue = PreSetValue.split('§');
		if (aryPreSetValue.length > 1) {
			if ("opentype03" == aryPreSetValue[0] && $('#MasterPage_MasterPageContent_opentype03_txt').val() != aryPreSetValue[1])
				FunOnChange_opentype03();
		}
	}
	else {
		FunOnChange_opentype03();
	}
}//EndFun_FunCheckIsChanged_opentype03()

function FunOnChange_opentype04() {
	var evt = (event) ? event : window.event;
	var element = evt.srcElement || evt.target;
	//如果是透過 automimj 不觸發
	if (element != null && element.id != null) {
		$('#MasterPage_MasterPageContent_openitem04_txt').val("");
		$('#MasterPage_MasterPageContent_openitem04_txt2').text("");
	}
}//EndFun_FunOnChange_opentype04()

function FunCheckIsChanged_opentype04() {
	var PreSetValue = $('#MasterPage_MasterPageContent_hdnOpenQueryPreSetValue').val();
	if (PreSetValue.length > 0) {
		var aryPreSetValue = PreSetValue.split('§');
		if (aryPreSetValue.length > 1) {
			if ("opentype04" == aryPreSetValue[0] && $('#MasterPage_MasterPageContent_opentype04_txt').val() != aryPreSetValue[1])
				FunOnChange_opentype04();
		}
	}
	else {
		FunOnChange_opentype04();
	}
}//EndFun_FunCheckIsChanged_opentype04()

function FunOnChange_opentype05() {
	var evt = (event) ? event : window.event;
	var element = evt.srcElement || evt.target;
	//如果是透過 automimj 不觸發
	if (element != null && element.id != null) {
		$('#MasterPage_MasterPageContent_openitem05_txt').val("");
		$('#MasterPage_MasterPageContent_openitem05_txt2').text("");
	}
}//EndFun_FunOnChange_opentype05()

function FunCheckIsChanged_opentype05() {
	var PreSetValue = $('#MasterPage_MasterPageContent_hdnOpenQueryPreSetValue').val();
	if (PreSetValue.length > 0) {
		var aryPreSetValue = PreSetValue.split('§');
		if (aryPreSetValue.length > 1) {
			if ("opentype05" == aryPreSetValue[0] && $('#MasterPage_MasterPageContent_opentype05_txt').val() != aryPreSetValue[1])
				FunOnChange_opentype05();
		}
	}
	else {
		FunOnChange_opentype05();
	}
}//EndFun_FunCheckIsChanged_opentype05()



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
				tControlNumValue = tw.com.dsc.easyflowDotNet.forms.ODMFPAYVL01.ajaxGetFixedNum(tControlNumValue, pDecimalPlaces).value;

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

			var tControlWordValue = tw.com.dsc.easyflowDotNet.forms.ODMFPAYVL01.ajaxGetMoneyWord(tControlNumValue).value;
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
	tSubjectSelf += 'MVE一般請款單V2-';

	//自訂主旨+標準主旨
	tSubjectVal = tSubjectSelf + tSubjectTxt;

	if (tSubjectVal.length > 255) { tSubjectVal = tSubjectVal.substring(0, 255); }
	//使用者自訂主旨end

	$("#MasterPage_txtCreateToolSubject_txt").val(tSubjectVal);
}

function domath_mtotal() {
	try {
		if ($("#MasterPage_MasterPageContent_money01_txt").length == 0)
			return;
		var money01 = $("#MasterPage_MasterPageContent_money01_txt").val().trim().replace(/\,/g, '');
		if (isNaN(money01)) {
			$("#MasterPage_MasterPageContent_mtotal_txt").val("");
			return;
		}
		var intmoney01 = money01.length > 0 ? parseFloat(money01) : 0;

		document.getElementById("MasterPage_MasterPageContent_money01_txt").value = Math.round(parseFloat(intmoney01) * Math.pow(10, 2)) / Math.pow(10, 2);
		intmoney01 = parseFloat($("#MasterPage_MasterPageContent_money01_txt").val().trim());

		if ($("#MasterPage_MasterPageContent_money02_txt").length == 0)
			return;
		var money02 = $("#MasterPage_MasterPageContent_money02_txt").val().trim().replace(/\,/g, '');
		if (isNaN(money02)) {
			$("#MasterPage_MasterPageContent_mtotal_txt").val("");
			return;
		}
		var intmoney02 = money02.length > 0 ? parseFloat(money02) : 0;

		document.getElementById("MasterPage_MasterPageContent_money02_txt").value = Math.round(parseFloat(intmoney02) * Math.pow(10, 2)) / Math.pow(10, 2);
		intmoney02 = parseFloat($("#MasterPage_MasterPageContent_money02_txt").val().trim());

		if ($("#MasterPage_MasterPageContent_money03_txt").length == 0)
			return;
		var money03 = $("#MasterPage_MasterPageContent_money03_txt").val().trim().replace(/\,/g, '');
		if (isNaN(money03)) {
			$("#MasterPage_MasterPageContent_mtotal_txt").val("");
			return;
		}
		var intmoney03 = money03.length > 0 ? parseFloat(money03) : 0;

		document.getElementById("MasterPage_MasterPageContent_money03_txt").value = Math.round(parseFloat(intmoney03) * Math.pow(10, 2)) / Math.pow(10, 2);
		intmoney03 = parseFloat($("#MasterPage_MasterPageContent_money03_txt").val().trim());

		if ($("#MasterPage_MasterPageContent_money04_txt").length == 0)
			return;
		var money04 = $("#MasterPage_MasterPageContent_money04_txt").val().trim().replace(/\,/g, '');
		if (isNaN(money04)) {
			$("#MasterPage_MasterPageContent_mtotal_txt").val("");
			return;
		}
		var intmoney04 = money04.length > 0 ? parseFloat(money04) : 0;

		document.getElementById("MasterPage_MasterPageContent_money04_txt").value = Math.round(parseFloat(intmoney04) * Math.pow(10, 2)) / Math.pow(10, 2);
		intmoney04 = parseFloat($("#MasterPage_MasterPageContent_money04_txt").val().trim());

		if ($("#MasterPage_MasterPageContent_money05_txt").length == 0)
			return;
		var money05 = $("#MasterPage_MasterPageContent_money05_txt").val().trim().replace(/\,/g, '');
		if (isNaN(money05)) {
			$("#MasterPage_MasterPageContent_mtotal_txt").val("");
			return;
		}
		var intmoney05 = money05.length > 0 ? parseFloat(money05) : 0;

		document.getElementById("MasterPage_MasterPageContent_money05_txt").value = Math.round(parseFloat(intmoney05) * Math.pow(10, 2)) / Math.pow(10, 2);
		intmoney05 = parseFloat($("#MasterPage_MasterPageContent_money05_txt").val().trim());

		var finalvalue = intmoney01 + intmoney02 + intmoney03 + intmoney04 + intmoney05;
		if (finalvalue == undefined || !isFinite(finalvalue)) {
			$("#MasterPage_MasterPageContent_mtotal_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_mtotal_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_mtotal_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money01_txt").value = OEMFormat(parseFloat(money01).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money02_txt").value = OEMFormat(parseFloat(money02).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money03_txt").value = OEMFormat(parseFloat(money03).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money04_txt").value = OEMFormat(parseFloat(money04).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money05_txt").value = OEMFormat(parseFloat(money05).toFixed(2));
		//^_^  20230411 Peggy 重新加上千份位↑
	} catch (err) {
		$("#MasterPage_MasterPageContent_mtotal_txt").val("");
		var errorMsg = getI18NForSpecial('FD', 'CalculatedSet2', 'MutiLang_04', '../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg + err);
	}
}


//單頭觸發必填欄位驗證
function chkTriggerFieldNull_Head() {
	var tErr = '', tMsg = '';
	var tFieldNotFilledMsg = getI18NForSpecial('PSMSG', 'RequriedFieldNotFilled', '1', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
	if ($("#MasterPage_MasterPageContent_chkatt01_chk").length > 0) {
		if ($("#MasterPage_MasterPageContent_chkatt01_chk")[0].checked) {
			if ($("#MasterPage_MasterPageContent_inv01_txt").val().trim().length == 0) {
				tErr += '[inv01-' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'inv01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + ']' + tFieldNotFilledMsg + '\r\n';
			}
		}
		else {
			$("#MasterPage_MasterPageContent_inv01_txt").val('');
		}
	}

	if ($("#MasterPage_MasterPageContent_chkatt02_chk").length > 0) {
		if ($("#MasterPage_MasterPageContent_chkatt02_chk")[0].checked) {
			if ($("#MasterPage_MasterPageContent_inv02_txt").val().trim().length == 0) {
				tErr += '[inv02-' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'inv02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + ']' + tFieldNotFilledMsg + '\r\n';
			}
		}
		else {
			$("#MasterPage_MasterPageContent_inv02_txt").val('');
		}
	}

	//20230510 Peggy Star
	if ($("#MasterPage_MasterPageContent_chkitem02_chk").length > 0) {
		if ($("#MasterPage_MasterPageContent_chkitem02_chk")[0].checked) {
			if ($("#MasterPage_MasterPageContent_useyear_txt").val().trim().length == 0) {
				tErr += '請確認 "使用年限"  是否有填寫\r\n';
			}
			else
				//if ($("#MasterPage_MasterPageContent_orderno_txt").val().trim().length == 0) {
				//	tErr += '請確認 "訂單號碼" 是否有填寫\r\n';
				//}
				//else
				if ($("#MasterPage_MasterPageContent_chkven_txt").val().trim().length == 0) {
					tErr += '請確認 "使用單位" 是否有填寫\r\n';
				}
		}
		else {
			$("#MasterPage_MasterPageContent_useyear_txt").val('');
		}
	}
	//Peggy End

	if ($("#MasterPage_MasterPageContent_chkitem05_chk").length > 0) {
		if ($("#MasterPage_MasterPageContent_chkitem05_chk")[0].checked) {
			if ($("#MasterPage_MasterPageContent_chkother_txt").val().trim().length == 0) {
				tErr += '[chkother-' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'chkother', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + ']' + tFieldNotFilledMsg + '\r\n';
			}
		}
		else {
			$("#MasterPage_MasterPageContent_chkother_txt").val('');
		}
	}

	if ($("#MasterPage_MasterPageContent_other_chk").length > 0) {
		if ($("#MasterPage_MasterPageContent_other_chk")[0].checked) {
			if ($("#MasterPage_MasterPageContent_attother_txt").val().trim().length == 0) {
				tErr += '[attother-' + getI18NForSpecial('FD', 'ODMFPAYVL01', 'attother', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + ']' + tFieldNotFilledMsg + '\r\n';
			}
		}
		else {
			$("#MasterPage_MasterPageContent_attother_txt").val('');
		}
	}

	if ($("#MasterPage_MasterPageContent_chpay_ctrolRadio2").length > 0) {
		if ($("#MasterPage_MasterPageContent_chpay_ctrolRadio2")[0].checked) {
			if ($("#MasterPage_MasterPageContent_payother_txt").val().trim().length == 0) {
				tErr += '請填寫支付方式\r\n';
			}
		}
		else {
			$("#MasterPage_MasterPageContent_payother_txt").val('');
		}
	}


	if (tErr == '')
		return true;
	else {
		alert(tErr);
		return false;
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
		var bResult = tw.com.dsc.easyflowDotNet.forms.ODMFPAYVL01.ajaxDoDispatchForm(pFormID, pSheetNo, pDispatchFormID).value;
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


//20230424 Peggy Star
//第一個開窗後將第二個窗唯獨或開放，第二個開窗必填
function opentype_change() {
	var open01 = document.getElementById("MasterPage_MasterPageContent_opentype01_txt"); //第一個類別
	var open02 = document.getElementById("MasterPage_MasterPageContent_opentype02_txt"); //第二個類別
	var open03 = document.getElementById("MasterPage_MasterPageContent_opentype03_txt"); //第二個類別
	var open04 = document.getElementById("MasterPage_MasterPageContent_opentype04_txt"); //第二個類別
	var open05 = document.getElementById("MasterPage_MasterPageContent_opentype05_txt"); //第二個類別

	if (open01 != null && open01.value != "") {
		//openitem
		OEMTurnningOnOff("On", "openitem01", true);
	}
	else {
		OEMTurnningOnOff("Off", "openitem01");
	}

	if (open02 != null && open02.value != "") {
		//openitem
		OEMTurnningOnOff("On", "openitem02", true);
	}
	else {
		OEMTurnningOnOff("Off", "openitem02");
	}

	if (open03 != null && open03.value != "") {
		//openitem
		OEMTurnningOnOff("On", "openitem03", true);
	}
	else {
		OEMTurnningOnOff("Off", "openitem03");
	}

	if (open04 != null && open04.value != "") {
		//openitem
		OEMTurnningOnOff("On", "openitem04", true);
	}
	else {
		OEMTurnningOnOff("Off", "openitem04");
	}

	if (open05 != null && open05.value != "") {
		//openitem
		OEMTurnningOnOff("On", "openitem05", true);
	}
	else {
		OEMTurnningOnOff("Off", "openitem05");
	}
}
//20230424 Peggy End

//20230411 Peggy 在這裡做條件判斷, 在aspx 引用OEMSetControl.js
//勾選chkitem02時,才顯示radioButton要勾選
function openRadio() {
	var _chkitem02 = document.getElementById("MasterPage_MasterPageContent_chkitem02_chk").checked;

	if (_chkitem02) {
		OEMTurnningOnOff("On", "chkven_ctrolRadio0,chkven_ctrolRadio1,MasterPage_MasterPageContent_useyear_txt", false);
		//$("#MasterPage_MasterPageContent_orderno_txt").show();

	}
	else {
		document.getElementById("MasterPage_MasterPageContent_chkven_ctrolRadio0").checked = false;
		document.getElementById("MasterPage_MasterPageContent_chkven_ctrolRadio1").checked = false;
		document.getElementById("MasterPage_MasterPageContent_chkven_txt").value = "";
		document.getElementById("MasterPage_MasterPageContent_orderno_txt").value = "";
		document.getElementById("MasterPage_MasterPageContent_useyear_txt").value = "";

		OEMTurnningOnOff("Off", "chkven_ctrolRadio0,chkven_ctrolRadio1,MasterPage_MasterPageContent_useyear_txt");
		/*	$("#MasterPage_MasterPageContent_orderno_txt").hide();*/

	}
}
