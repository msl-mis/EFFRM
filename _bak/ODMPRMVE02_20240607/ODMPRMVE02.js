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
	//不允許空白驗證
	var tcontact = $('#MasterPage_MasterPageContent_contact_txt');
	if(tcontact.length>0){
		var tcontactValue = $('#MasterPage_MasterPageContent_contact_txt').val().trim();
		if (tcontactValue.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'contact', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tdatetime1 = $('#MasterPage_MasterPageContent_datetime1_txt');
	if(tdatetime1.length>0){
		var tdatetime1Value = $('#MasterPage_MasterPageContent_datetime1_txt').val().trim();
		if (tdatetime1Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'datetime1', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tdept = $('#MasterPage_MasterPageContent_dept_ddl');
	if(tdept.length>0){
		var tdeptValue = $('#MasterPage_MasterPageContent_dept_ddl').val().trim();
		if (tdeptValue.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'dept', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tmoney01 = $('#MasterPage_MasterPageContent_money01_txt');
	if(tmoney01.length>0){
		var tmoney01Value = $('#MasterPage_MasterPageContent_money01_txt').val().trim();
		if (tmoney01Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//float格式驗証
	var tmoney01 = $('#MasterPage_MasterPageContent_money01_txt');
	if(tmoney01.length>0){
		var tmoney01Value = $('#MasterPage_MasterPageContent_money01_txt').val().trim();
		if (tmoney01Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney01Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney01Value=tmoney01Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money01_txt').val(Math.round(parseFloat(tmoney01Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney02 = $('#MasterPage_MasterPageContent_money02_txt');
	if(tmoney02.length>0){
		var tmoney02Value = $('#MasterPage_MasterPageContent_money02_txt').val().trim();
		if (tmoney02Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney02Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney02Value=tmoney02Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money02_txt').val(Math.round(parseFloat(tmoney02Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney03 = $('#MasterPage_MasterPageContent_money03_txt');
	if(tmoney03.length>0){
		var tmoney03Value = $('#MasterPage_MasterPageContent_money03_txt').val().trim();
		if (tmoney03Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney03Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney03Value=tmoney03Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money03_txt').val(Math.round(parseFloat(tmoney03Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney04 = $('#MasterPage_MasterPageContent_money04_txt');
	if(tmoney04.length>0){
		var tmoney04Value = $('#MasterPage_MasterPageContent_money04_txt').val().trim();
		if (tmoney04Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney04Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney04Value=tmoney04Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money04_txt').val(Math.round(parseFloat(tmoney04Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney05 = $('#MasterPage_MasterPageContent_money05_txt');
	if(tmoney05.length>0){
		var tmoney05Value = $('#MasterPage_MasterPageContent_money05_txt').val().trim();
		if (tmoney05Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney05Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney05Value=tmoney05Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money05_txt').val(Math.round(parseFloat(tmoney05Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney06 = $('#MasterPage_MasterPageContent_money06_txt');
	if(tmoney06.length>0){
		var tmoney06Value = $('#MasterPage_MasterPageContent_money06_txt').val().trim();
		if (tmoney06Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney06Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney06Value=tmoney06Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money06_txt').val(Math.round(parseFloat(tmoney06Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney07 = $('#MasterPage_MasterPageContent_money07_txt');
	if(tmoney07.length>0){
		var tmoney07Value = $('#MasterPage_MasterPageContent_money07_txt').val().trim();
		if (tmoney07Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney07Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney07Value=tmoney07Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money07_txt').val(Math.round(parseFloat(tmoney07Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney08 = $('#MasterPage_MasterPageContent_money08_txt');
	if(tmoney08.length>0){
		var tmoney08Value = $('#MasterPage_MasterPageContent_money08_txt').val().trim();
		if (tmoney08Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney08Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney08Value=tmoney08Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money08_txt').val(Math.round(parseFloat(tmoney08Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney09 = $('#MasterPage_MasterPageContent_money09_txt');
	if(tmoney09.length>0){
		var tmoney09Value = $('#MasterPage_MasterPageContent_money09_txt').val().trim();
		if (tmoney09Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney09Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money09', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney09Value=tmoney09Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money09_txt').val(Math.round(parseFloat(tmoney09Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney10 = $('#MasterPage_MasterPageContent_money10_txt');
	if(tmoney10.length>0){
		var tmoney10Value = $('#MasterPage_MasterPageContent_money10_txt').val().trim();
		if (tmoney10Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney10Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money10', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney10Value=tmoney10Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money10_txt').val(Math.round(parseFloat(tmoney10Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//不允許空白驗證
	var tpayee01 = $('#MasterPage_MasterPageContent_payee01_txt');
	if(tpayee01.length>0){
		var tpayee01Value = $('#MasterPage_MasterPageContent_payee01_txt').val().trim();
		if (tpayee01Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'payee01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//不允許空白驗證
	var tpermoney01 = $('#MasterPage_MasterPageContent_permoney01_txt');
	if(tpermoney01.length>0){
		var tpermoney01Value = $('#MasterPage_MasterPageContent_permoney01_txt').val().trim();
		if (tpermoney01Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//float格式驗証
	var tpermoney01 = $('#MasterPage_MasterPageContent_permoney01_txt');
	if(tpermoney01.length>0){
		var tpermoney01Value = $('#MasterPage_MasterPageContent_permoney01_txt').val().trim();
		if (tpermoney01Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney01Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney01Value=tpermoney01Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney01_txt').val(Math.round(parseFloat(tpermoney01Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney02 = $('#MasterPage_MasterPageContent_permoney02_txt');
	if(tpermoney02.length>0){
		var tpermoney02Value = $('#MasterPage_MasterPageContent_permoney02_txt').val().trim();
		if (tpermoney02Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney02Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney02Value=tpermoney02Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney02_txt').val(Math.round(parseFloat(tpermoney02Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney03 = $('#MasterPage_MasterPageContent_permoney03_txt');
	if(tpermoney03.length>0){
		var tpermoney03Value = $('#MasterPage_MasterPageContent_permoney03_txt').val().trim();
		if (tpermoney03Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney03Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney03Value=tpermoney03Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney03_txt').val(Math.round(parseFloat(tpermoney03Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney04 = $('#MasterPage_MasterPageContent_permoney04_txt');
	if(tpermoney04.length>0){
		var tpermoney04Value = $('#MasterPage_MasterPageContent_permoney04_txt').val().trim();
		if (tpermoney04Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney04Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney04Value=tpermoney04Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney04_txt').val(Math.round(parseFloat(tpermoney04Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney05 = $('#MasterPage_MasterPageContent_permoney05_txt');
	if(tpermoney05.length>0){
		var tpermoney05Value = $('#MasterPage_MasterPageContent_permoney05_txt').val().trim();
		if (tpermoney05Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney05Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney05Value=tpermoney05Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney05_txt').val(Math.round(parseFloat(tpermoney05Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney06 = $('#MasterPage_MasterPageContent_permoney06_txt');
	if(tpermoney06.length>0){
		var tpermoney06Value = $('#MasterPage_MasterPageContent_permoney06_txt').val().trim();
		if (tpermoney06Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney06Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney06Value=tpermoney06Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney06_txt').val(Math.round(parseFloat(tpermoney06Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney07 = $('#MasterPage_MasterPageContent_permoney07_txt');
	if(tpermoney07.length>0){
		var tpermoney07Value = $('#MasterPage_MasterPageContent_permoney07_txt').val().trim();
		if (tpermoney07Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney07Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney07Value=tpermoney07Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney07_txt').val(Math.round(parseFloat(tpermoney07Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney08 = $('#MasterPage_MasterPageContent_permoney08_txt');
	if(tpermoney08.length>0){
		var tpermoney08Value = $('#MasterPage_MasterPageContent_permoney08_txt').val().trim();
		if (tpermoney08Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney08Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney08Value=tpermoney08Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney08_txt').val(Math.round(parseFloat(tpermoney08Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney09 = $('#MasterPage_MasterPageContent_permoney09_txt');
	if(tpermoney09.length>0){
		var tpermoney09Value = $('#MasterPage_MasterPageContent_permoney09_txt').val().trim();
		if (tpermoney09Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney09Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney09', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney09Value=tpermoney09Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney09_txt').val(Math.round(parseFloat(tpermoney09Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney10 = $('#MasterPage_MasterPageContent_permoney10_txt');
	if(tpermoney10.length>0){
		var tpermoney10Value = $('#MasterPage_MasterPageContent_permoney10_txt').val().trim();
		if (tpermoney10Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney10Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney10', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney10Value=tpermoney10Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney10_txt').val(Math.round(parseFloat(tpermoney10Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//不允許空白驗證
	var tqty01 = $('#MasterPage_MasterPageContent_qty01_txt');
	if(tqty01.length>0){
		var tqty01Value = $('#MasterPage_MasterPageContent_qty01_txt').val().trim();
		if (tqty01Value.length==0){
			//欄位不允許空白 !
			tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFieldNotFilledMsg + '\r\n';
		}
	}

	//float格式驗証
	var tqty01 = $('#MasterPage_MasterPageContent_qty01_txt');
	if(tqty01.length>0){
		var tqty01Value = $('#MasterPage_MasterPageContent_qty01_txt').val().trim();
		if (tqty01Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty01Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty01Value=tqty01Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty01_txt').val(Math.round(parseFloat(tqty01Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty02 = $('#MasterPage_MasterPageContent_qty02_txt');
	if(tqty02.length>0){
		var tqty02Value = $('#MasterPage_MasterPageContent_qty02_txt').val().trim();
		if (tqty02Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty02Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty02Value=tqty02Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty02_txt').val(Math.round(parseFloat(tqty02Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty03 = $('#MasterPage_MasterPageContent_qty03_txt');
	if(tqty03.length>0){
		var tqty03Value = $('#MasterPage_MasterPageContent_qty03_txt').val().trim();
		if (tqty03Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty03Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty03Value=tqty03Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty03_txt').val(Math.round(parseFloat(tqty03Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty04 = $('#MasterPage_MasterPageContent_qty04_txt');
	if(tqty04.length>0){
		var tqty04Value = $('#MasterPage_MasterPageContent_qty04_txt').val().trim();
		if (tqty04Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty04Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty04Value=tqty04Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty04_txt').val(Math.round(parseFloat(tqty04Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty05 = $('#MasterPage_MasterPageContent_qty05_txt');
	if(tqty05.length>0){
		var tqty05Value = $('#MasterPage_MasterPageContent_qty05_txt').val().trim();
		if (tqty05Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty05Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty05Value=tqty05Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty05_txt').val(Math.round(parseFloat(tqty05Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty06 = $('#MasterPage_MasterPageContent_qty06_txt');
	if(tqty06.length>0){
		var tqty06Value = $('#MasterPage_MasterPageContent_qty06_txt').val().trim();
		if (tqty06Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty06Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty06Value=tqty06Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty06_txt').val(Math.round(parseFloat(tqty06Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty07 = $('#MasterPage_MasterPageContent_qty07_txt');
	if(tqty07.length>0){
		var tqty07Value = $('#MasterPage_MasterPageContent_qty07_txt').val().trim();
		if (tqty07Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty07Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty07Value=tqty07Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty07_txt').val(Math.round(parseFloat(tqty07Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty08 = $('#MasterPage_MasterPageContent_qty08_txt');
	if(tqty08.length>0){
		var tqty08Value = $('#MasterPage_MasterPageContent_qty08_txt').val().trim();
		if (tqty08Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty08Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty08Value=tqty08Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty08_txt').val(Math.round(parseFloat(tqty08Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty09 = $('#MasterPage_MasterPageContent_qty09_txt');
	if(tqty09.length>0){
		var tqty09Value = $('#MasterPage_MasterPageContent_qty09_txt').val().trim();
		if (tqty09Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty09Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty09', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty09Value=tqty09Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty09_txt').val(Math.round(parseFloat(tqty09Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty10 = $('#MasterPage_MasterPageContent_qty10_txt');
	if(tqty10.length>0){
		var tqty10Value = $('#MasterPage_MasterPageContent_qty10_txt').val().trim();
		if (tqty10Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty10Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty10', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty10Value=tqty10Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty10_txt').val(Math.round(parseFloat(tqty10Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var ttotalmoney = $('#MasterPage_MasterPageContent_totalmoney_txt');
	if(ttotalmoney.length>0){
		var ttotalmoneyValue = $('#MasterPage_MasterPageContent_totalmoney_txt').val().trim();
		if (ttotalmoneyValue.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(ttotalmoneyValue)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'totalmoney', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				ttotalmoneyValue=ttotalmoneyValue.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_totalmoney_txt').val(Math.round(parseFloat(ttotalmoneyValue)*Math.pow(10, 2))/Math.pow(10, 2));
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
	var tmoney01 = $('#MasterPage_MasterPageContent_money01_txt');
	if(tmoney01.length>0){
		var tmoney01Value = $('#MasterPage_MasterPageContent_money01_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if (tmoney01Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney01Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney01Value=tmoney01Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money01_txt').val(Math.round(parseFloat(tmoney01Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney02 = $('#MasterPage_MasterPageContent_money02_txt');
	if(tmoney02.length>0){
		var tmoney02Value = $('#MasterPage_MasterPageContent_money02_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tmoney02Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney02Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney02Value=tmoney02Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money02_txt').val(Math.round(parseFloat(tmoney02Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney03 = $('#MasterPage_MasterPageContent_money03_txt');
	if(tmoney03.length>0){
		var tmoney03Value = $('#MasterPage_MasterPageContent_money03_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tmoney03Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney03Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney03Value=tmoney03Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money03_txt').val(Math.round(parseFloat(tmoney03Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney04 = $('#MasterPage_MasterPageContent_money04_txt');
	if(tmoney04.length>0){
		var tmoney04Value = $('#MasterPage_MasterPageContent_money04_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tmoney04Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney04Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney04Value=tmoney04Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money04_txt').val(Math.round(parseFloat(tmoney04Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney05 = $('#MasterPage_MasterPageContent_money05_txt');
	if(tmoney05.length>0){
		var tmoney05Value = $('#MasterPage_MasterPageContent_money05_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tmoney05Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney05Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney05Value=tmoney05Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money05_txt').val(Math.round(parseFloat(tmoney05Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney06 = $('#MasterPage_MasterPageContent_money06_txt');
	if(tmoney06.length>0){
		var tmoney06Value = $('#MasterPage_MasterPageContent_money06_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tmoney06Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney06Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney06Value=tmoney06Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money06_txt').val(Math.round(parseFloat(tmoney06Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney07 = $('#MasterPage_MasterPageContent_money07_txt');
	if(tmoney07.length>0){
		var tmoney07Value = $('#MasterPage_MasterPageContent_money07_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tmoney07Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney07Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney07Value=tmoney07Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money07_txt').val(Math.round(parseFloat(tmoney07Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney08 = $('#MasterPage_MasterPageContent_money08_txt');
	if(tmoney08.length>0){
		var tmoney08Value = $('#MasterPage_MasterPageContent_money08_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tmoney08Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney08Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney08Value=tmoney08Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money08_txt').val(Math.round(parseFloat(tmoney08Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney09 = $('#MasterPage_MasterPageContent_money09_txt');
	if(tmoney09.length>0){
		var tmoney09Value = $('#MasterPage_MasterPageContent_money09_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tmoney09Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney09Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money09', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney09Value=tmoney09Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money09_txt').val(Math.round(parseFloat(tmoney09Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tmoney10 = $('#MasterPage_MasterPageContent_money10_txt');
	if(tmoney10.length>0){
		var tmoney10Value = $('#MasterPage_MasterPageContent_money10_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tmoney10Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tmoney10Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'money10', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tmoney10Value=tmoney10Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_money10_txt').val(Math.round(parseFloat(tmoney10Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney01 = $('#MasterPage_MasterPageContent_permoney01_txt');
	if(tpermoney01.length>0){
		var tpermoney01Value = $('#MasterPage_MasterPageContent_permoney01_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tpermoney01Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney01Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney01Value=tpermoney01Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney01_txt').val(Math.round(parseFloat(tpermoney01Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney02 = $('#MasterPage_MasterPageContent_permoney02_txt');
	if(tpermoney02.length>0){
		var tpermoney02Value = $('#MasterPage_MasterPageContent_permoney02_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tpermoney02Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney02Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney02Value=tpermoney02Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney02_txt').val(Math.round(parseFloat(tpermoney02Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney03 = $('#MasterPage_MasterPageContent_permoney03_txt');
	if(tpermoney03.length>0){
		var tpermoney03Value = $('#MasterPage_MasterPageContent_permoney03_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tpermoney03Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney03Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney03Value=tpermoney03Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney03_txt').val(Math.round(parseFloat(tpermoney03Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney04 = $('#MasterPage_MasterPageContent_permoney04_txt');
	if(tpermoney04.length>0){
		var tpermoney04Value = $('#MasterPage_MasterPageContent_permoney04_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tpermoney04Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney04Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney04Value=tpermoney04Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney04_txt').val(Math.round(parseFloat(tpermoney04Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney05 = $('#MasterPage_MasterPageContent_permoney05_txt');
	if(tpermoney05.length>0){
		var tpermoney05Value = $('#MasterPage_MasterPageContent_permoney05_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tpermoney05Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney05Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney05Value=tpermoney05Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney05_txt').val(Math.round(parseFloat(tpermoney05Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney06 = $('#MasterPage_MasterPageContent_permoney06_txt');
	if(tpermoney06.length>0){
		var tpermoney06Value = $('#MasterPage_MasterPageContent_permoney06_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tpermoney06Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney06Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney06Value=tpermoney06Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney06_txt').val(Math.round(parseFloat(tpermoney06Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney07 = $('#MasterPage_MasterPageContent_permoney07_txt');
	if(tpermoney07.length>0){
		var tpermoney07Value = $('#MasterPage_MasterPageContent_permoney07_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tpermoney07Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney07Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney07Value=tpermoney07Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney07_txt').val(Math.round(parseFloat(tpermoney07Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney08 = $('#MasterPage_MasterPageContent_permoney08_txt');
	if(tpermoney08.length>0){
		var tpermoney08Value = $('#MasterPage_MasterPageContent_permoney08_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tpermoney08Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney08Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney08Value=tpermoney08Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney08_txt').val(Math.round(parseFloat(tpermoney08Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney09 = $('#MasterPage_MasterPageContent_permoney09_txt');
	if(tpermoney09.length>0){
		var tpermoney09Value = $('#MasterPage_MasterPageContent_permoney09_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tpermoney09Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney09Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney09', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney09Value=tpermoney09Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney09_txt').val(Math.round(parseFloat(tpermoney09Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tpermoney10 = $('#MasterPage_MasterPageContent_permoney10_txt');
	if(tpermoney10.length>0){
		var tpermoney10Value = $('#MasterPage_MasterPageContent_permoney10_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tpermoney10Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tpermoney10Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'permoney10', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tpermoney10Value=tpermoney10Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_permoney10_txt').val(Math.round(parseFloat(tpermoney10Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty01 = $('#MasterPage_MasterPageContent_qty01_txt');
	if(tqty01.length>0){
		var tqty01Value = $('#MasterPage_MasterPageContent_qty01_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tqty01Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty01Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty01Value=tqty01Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty01_txt').val(Math.round(parseFloat(tqty01Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty02 = $('#MasterPage_MasterPageContent_qty02_txt');
	if(tqty02.length>0){
		var tqty02Value = $('#MasterPage_MasterPageContent_qty02_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tqty02Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty02Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty02Value=tqty02Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty02_txt').val(Math.round(parseFloat(tqty02Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty03 = $('#MasterPage_MasterPageContent_qty03_txt');
	if(tqty03.length>0){
		var tqty03Value = $('#MasterPage_MasterPageContent_qty03_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if (tqty03Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty03Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty03Value=tqty03Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty03_txt').val(Math.round(parseFloat(tqty03Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty04 = $('#MasterPage_MasterPageContent_qty04_txt');
	if(tqty04.length>0){
		var tqty04Value = $('#MasterPage_MasterPageContent_qty04_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tqty04Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty04Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty04Value=tqty04Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty04_txt').val(Math.round(parseFloat(tqty04Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty05 = $('#MasterPage_MasterPageContent_qty05_txt');
	if(tqty05.length>0){
		var tqty05Value = $('#MasterPage_MasterPageContent_qty05_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tqty05Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty05Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty05Value=tqty05Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty05_txt').val(Math.round(parseFloat(tqty05Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty06 = $('#MasterPage_MasterPageContent_qty06_txt');
	if(tqty06.length>0){
		var tqty06Value = $('#MasterPage_MasterPageContent_qty06_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tqty06Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty06Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty06Value=tqty06Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty06_txt').val(Math.round(parseFloat(tqty06Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty07 = $('#MasterPage_MasterPageContent_qty07_txt');
	if(tqty07.length>0){
		var tqty07Value = $('#MasterPage_MasterPageContent_qty07_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tqty07Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty07Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty07Value=tqty07Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty07_txt').val(Math.round(parseFloat(tqty07Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty08 = $('#MasterPage_MasterPageContent_qty08_txt');
	if(tqty08.length>0){
		var tqty08Value = $('#MasterPage_MasterPageContent_qty08_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if (tqty08Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty08Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty08Value=tqty08Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty08_txt').val(Math.round(parseFloat(tqty08Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty09 = $('#MasterPage_MasterPageContent_qty09_txt');
	if(tqty09.length>0){
		var tqty09Value = $('#MasterPage_MasterPageContent_qty09_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tqty09Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty09Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty09', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty09Value=tqty09Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty09_txt').val(Math.round(parseFloat(tqty09Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var tqty10 = $('#MasterPage_MasterPageContent_qty10_txt');
	if(tqty10.length>0){
		var tqty10Value = $('#MasterPage_MasterPageContent_qty10_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (tqty10Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tqty10Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'qty10', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tqty10Value=tqty10Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_qty10_txt').val(Math.round(parseFloat(tqty10Value)*Math.pow(10, 2))/Math.pow(10, 2));
			}
		}
	}

	//float格式驗証
	var ttotalmoney = $('#MasterPage_MasterPageContent_totalmoney_txt');
	if(ttotalmoney.length>0){
		var ttotalmoneyValue = $('#MasterPage_MasterPageContent_totalmoney_txt').val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if (ttotalmoneyValue.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(ttotalmoneyValue)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMPRMVE02', 'totalmoney', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				ttotalmoneyValue=ttotalmoneyValue.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_totalmoney_txt').val(Math.round(parseFloat(ttotalmoneyValue)*Math.pow(10, 2))/Math.pow(10, 2));
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
	//2022/07/15;Folls;C01-20220715005;Radio及checkbox於簽核時無法實現觸發顯示欄位
	if(tStatus=="CREATE" || tStatus=="DISPLAY" || tStatus==""|| tStatus=="APPROVE"){

	}
}

function InitTriggerOpen(){

}

function InitCalculated(){
	domath_money01();
	domath_money02();
	domath_money03();
	domath_money04();
	domath_money05();
	domath_money06();
	domath_money07();
	domath_money08();
	domath_money09();
	domath_money10();
	domath_totalmoney();

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
				tControlNumValue = tw.com.dsc.easyflowDotNet.forms.ODMPRMVE02.ajaxGetFixedNum(tControlNumValue, pDecimalPlaces).value;

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

			var tControlWordValue = tw.com.dsc.easyflowDotNet.forms.ODMPRMVE02.ajaxGetMoneyWord(tControlNumValue).value;
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
	var intdeptIndex = document.getElementById('MasterPage_MasterPageContent_dept_ddl').selectedIndex;
	var ddldeptValue = document.getElementById('MasterPage_MasterPageContent_dept_ddl')[intdeptIndex].text;
	tSubjectSelf+='MVE公關費-'+
$('#MasterPage_MasterPageContent_datetime1_txt').val()+'-'+
 ddldeptValue;

	//自訂主旨
	tSubjectVal=tSubjectSelf;

	if(tSubjectVal.length>255){tSubjectVal=tSubjectVal.substring(0,255);}
	//使用者自訂主旨end

	$("#MasterPage_txtCreateToolSubject_txt").val(tSubjectVal);
}

function domath_money01()
{
	try{
		if($("#MasterPage_MasterPageContent_permoney01_txt").length==0)
			return;
		var permoney01 = $("#MasterPage_MasterPageContent_permoney01_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if(isNaN(permoney01)){
			$("#MasterPage_MasterPageContent_money01_txt").val("");
						domath_totalmoney();
			return;
		}
		var intpermoney01 = permoney01.length>0?parseFloat(permoney01):0;

		document.getElementById("MasterPage_MasterPageContent_permoney01_txt").value=Math.round(parseFloat(intpermoney01)*Math.pow(10, 2))/Math.pow(10, 2);
		intpermoney01 = parseFloat($("#MasterPage_MasterPageContent_permoney01_txt").val().trim());

		if($("#MasterPage_MasterPageContent_qty01_txt").length==0)
			return;
		var qty01 = $("#MasterPage_MasterPageContent_qty01_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if(isNaN(qty01)){
			$("#MasterPage_MasterPageContent_money01_txt").val("");
						domath_totalmoney();
			return;
		}
		var intqty01 = qty01.length>0?parseFloat(qty01):0;

		document.getElementById("MasterPage_MasterPageContent_qty01_txt").value=Math.round(parseFloat(intqty01)*Math.pow(10, 2))/Math.pow(10, 2);
		intqty01 = parseFloat($("#MasterPage_MasterPageContent_qty01_txt").val().trim());

		var finalvalue = intpermoney01*intqty01;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_money01_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_money01_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓		
		document.getElementById("MasterPage_MasterPageContent_permoney01_txt").value = OEMFormat(parseFloat(permoney01).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_qty01_txt").value = OEMFormat(parseFloat(qty01).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money01_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	}catch(err){
		$("#MasterPage_MasterPageContent_money01_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
		domath_totalmoney();
}
function domath_money02()
{
	try{
		if($("#MasterPage_MasterPageContent_permoney02_txt").length==0)
			return;
		var permoney02 = $("#MasterPage_MasterPageContent_permoney02_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if(isNaN(permoney02)){
			$("#MasterPage_MasterPageContent_money02_txt").val("");
						domath_totalmoney();
			return;
		}
		var intpermoney02 = permoney02.length>0?parseFloat(permoney02):0;

		document.getElementById("MasterPage_MasterPageContent_permoney02_txt").value=Math.round(parseFloat(intpermoney02)*Math.pow(10, 2))/Math.pow(10, 2);
		intpermoney02 = parseFloat($("#MasterPage_MasterPageContent_permoney02_txt").val().trim());

		if($("#MasterPage_MasterPageContent_qty02_txt").length==0)
			return;
		var qty02 = $("#MasterPage_MasterPageContent_qty02_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;;
		if(isNaN(qty02)){
			$("#MasterPage_MasterPageContent_money02_txt").val("");
						domath_totalmoney();
			return;
		}
		var intqty02 = qty02.length>0?parseFloat(qty02):0;

		document.getElementById("MasterPage_MasterPageContent_qty02_txt").value=Math.round(parseFloat(intqty02)*Math.pow(10, 2))/Math.pow(10, 2);
		intqty02 = parseFloat($("#MasterPage_MasterPageContent_qty02_txt").val().trim());

		var finalvalue = intpermoney02*intqty02;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_money02_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_money02_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_permoney02_txt").value = OEMFormat(parseFloat(permoney02).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_qty02_txt").value = OEMFormat(parseFloat(qty02).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money02_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	}catch(err){
		$("#MasterPage_MasterPageContent_money02_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
		domath_totalmoney();
}
function domath_money03()
{
	try{
		if($("#MasterPage_MasterPageContent_permoney03_txt").length==0)
			return;
		var permoney03 = $("#MasterPage_MasterPageContent_permoney03_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(permoney03)){
			$("#MasterPage_MasterPageContent_money03_txt").val("");
						domath_totalmoney();
			return;
		}
		var intpermoney03 = permoney03.length>0?parseFloat(permoney03):0;

		document.getElementById("MasterPage_MasterPageContent_permoney03_txt").value=Math.round(parseFloat(intpermoney03)*Math.pow(10, 2))/Math.pow(10, 2);
		intpermoney03 = parseFloat($("#MasterPage_MasterPageContent_permoney03_txt").val().trim());

		if($("#MasterPage_MasterPageContent_qty03_txt").length==0)
			return;
		var qty03 = $("#MasterPage_MasterPageContent_qty03_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(qty03)){
			$("#MasterPage_MasterPageContent_money03_txt").val("");
						domath_totalmoney();
			return;
		}
		var intqty03 = qty03.length>0?parseFloat(qty03):0;

		document.getElementById("MasterPage_MasterPageContent_qty03_txt").value=Math.round(parseFloat(intqty03)*Math.pow(10, 2))/Math.pow(10, 2);
		intqty03 = parseFloat($("#MasterPage_MasterPageContent_qty03_txt").val().trim());

		var finalvalue = intpermoney03*intqty03;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_money03_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_money03_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_permoney03_txt").value = OEMFormat(parseFloat(permoney03).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_qty03_txt").value = OEMFormat(parseFloat(qty03).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money03_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	}catch(err){
		$("#MasterPage_MasterPageContent_money03_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
		domath_totalmoney();
}
function domath_money04()
{
	try{
		if($("#MasterPage_MasterPageContent_permoney04_txt").length==0)
			return;
		var permoney04 = $("#MasterPage_MasterPageContent_permoney04_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(permoney04)){
			$("#MasterPage_MasterPageContent_money04_txt").val("");
						domath_totalmoney();
			return;
		}
		var intpermoney04 = permoney04.length>0?parseFloat(permoney04):0;

		document.getElementById("MasterPage_MasterPageContent_permoney04_txt").value=Math.round(parseFloat(intpermoney04)*Math.pow(10, 2))/Math.pow(10, 2);
		intpermoney04 = parseFloat($("#MasterPage_MasterPageContent_permoney04_txt").val().trim());

		if($("#MasterPage_MasterPageContent_qty04_txt").length==0)
			return;
		var qty04 = $("#MasterPage_MasterPageContent_qty04_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(qty04)){
			$("#MasterPage_MasterPageContent_money04_txt").val("");
						domath_totalmoney();
			return;
		}
		var intqty04 = qty04.length>0?parseFloat(qty04):0;

		document.getElementById("MasterPage_MasterPageContent_qty04_txt").value=Math.round(parseFloat(intqty04)*Math.pow(10, 2))/Math.pow(10, 2);
		intqty04 = parseFloat($("#MasterPage_MasterPageContent_qty04_txt").val().trim());

		var finalvalue = intpermoney04*intqty04;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_money04_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_money04_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_permoney04_txt").value = OEMFormat(parseFloat(permoney04).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_qty04_txt").value = OEMFormat(parseFloat(qty04).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money04_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	}catch(err){
		$("#MasterPage_MasterPageContent_money04_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
		domath_totalmoney();
}
function domath_money05()
{
	try{
		if($("#MasterPage_MasterPageContent_permoney05_txt").length==0)
			return;
		var permoney05 = $("#MasterPage_MasterPageContent_permoney05_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(permoney05)){
			$("#MasterPage_MasterPageContent_money05_txt").val("");
						domath_totalmoney();
			return;
		}
		var intpermoney05 = permoney05.length>0?parseFloat(permoney05):0;

		document.getElementById("MasterPage_MasterPageContent_permoney05_txt").value=Math.round(parseFloat(intpermoney05)*Math.pow(10, 2))/Math.pow(10, 2);
		intpermoney05 = parseFloat($("#MasterPage_MasterPageContent_permoney05_txt").val().trim());

		if($("#MasterPage_MasterPageContent_qty05_txt").length==0)
			return;
		var qty05 = $("#MasterPage_MasterPageContent_qty05_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(qty05)){
			$("#MasterPage_MasterPageContent_money05_txt").val("");
						domath_totalmoney();
			return;
		}
		var intqty05 = qty05.length>0?parseFloat(qty05):0;

		document.getElementById("MasterPage_MasterPageContent_qty05_txt").value=Math.round(parseFloat(intqty05)*Math.pow(10, 2))/Math.pow(10, 2);
		intqty05 = parseFloat($("#MasterPage_MasterPageContent_qty05_txt").val().trim());

		var finalvalue = intpermoney05*intqty05;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_money05_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_money05_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_permoney05_txt").value = OEMFormat(parseFloat(permoney05).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_qty05_txt").value = OEMFormat(parseFloat(qty05).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money05_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	}catch(err){
		$("#MasterPage_MasterPageContent_money05_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
		domath_totalmoney();
}
function domath_money06()
{
	try{
		if($("#MasterPage_MasterPageContent_permoney06_txt").length==0)
			return;
		var permoney06 = $("#MasterPage_MasterPageContent_permoney06_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(permoney06)){
			$("#MasterPage_MasterPageContent_money06_txt").val("");
						domath_totalmoney();
			return;
		}
		var intpermoney06 = permoney06.length>0?parseFloat(permoney06):0;

		document.getElementById("MasterPage_MasterPageContent_permoney06_txt").value=Math.round(parseFloat(intpermoney06)*Math.pow(10, 2))/Math.pow(10, 2);
		intpermoney06 = parseFloat($("#MasterPage_MasterPageContent_permoney06_txt").val().trim());

		if($("#MasterPage_MasterPageContent_qty06_txt").length==0)
			return;
		var qty06 = $("#MasterPage_MasterPageContent_qty06_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(qty06)){
			$("#MasterPage_MasterPageContent_money06_txt").val("");
						domath_totalmoney();
			return;
		}
		var intqty06 = qty06.length>0?parseFloat(qty06):0;

		document.getElementById("MasterPage_MasterPageContent_qty06_txt").value=Math.round(parseFloat(intqty06)*Math.pow(10, 2))/Math.pow(10, 2);
		intqty06 = parseFloat($("#MasterPage_MasterPageContent_qty06_txt").val().trim());

		var finalvalue = intpermoney06*intqty06;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_money06_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_money06_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_permoney06_txt").value = OEMFormat(parseFloat(permoney06).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_qty06_txt").value = OEMFormat(parseFloat(qty06).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money06_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	}catch(err){
		$("#MasterPage_MasterPageContent_money06_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
		domath_totalmoney();
}
function domath_money07()
{
	try{
		if($("#MasterPage_MasterPageContent_permoney07_txt").length==0)
			return;
		var permoney07 = $("#MasterPage_MasterPageContent_permoney07_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(permoney07)){
			$("#MasterPage_MasterPageContent_money07_txt").val("");
						domath_totalmoney();
			return;
		}
		var intpermoney07 = permoney07.length>0?parseFloat(permoney07):0;

		document.getElementById("MasterPage_MasterPageContent_permoney07_txt").value=Math.round(parseFloat(intpermoney07)*Math.pow(10, 2))/Math.pow(10, 2);
		intpermoney07 = parseFloat($("#MasterPage_MasterPageContent_permoney07_txt").val().trim());

		if($("#MasterPage_MasterPageContent_qty07_txt").length==0)
			return;
		var qty07 = $("#MasterPage_MasterPageContent_qty07_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(qty07)){
			$("#MasterPage_MasterPageContent_money07_txt").val("");
						domath_totalmoney();
			return;
		}
		var intqty07 = qty07.length>0?parseFloat(qty07):0;

		document.getElementById("MasterPage_MasterPageContent_qty07_txt").value=Math.round(parseFloat(intqty07)*Math.pow(10, 2))/Math.pow(10, 2);
		intqty07 = parseFloat($("#MasterPage_MasterPageContent_qty07_txt").val().trim());

		var finalvalue = intpermoney07*intqty07;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_money07_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_money07_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_permoney07_txt").value = OEMFormat(parseFloat(permoney07).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_qty07_txt").value = OEMFormat(parseFloat(qty07).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money07_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	}catch(err){
		$("#MasterPage_MasterPageContent_money07_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
		domath_totalmoney();
}
function domath_money08()
{
	try{
		if($("#MasterPage_MasterPageContent_permoney08_txt").length==0)
			return;
		var permoney08 = $("#MasterPage_MasterPageContent_permoney08_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(permoney08)){
			$("#MasterPage_MasterPageContent_money08_txt").val("");
						domath_totalmoney();
			return;
		}
		var intpermoney08 = permoney08.length>0?parseFloat(permoney08):0;

		document.getElementById("MasterPage_MasterPageContent_permoney08_txt").value=Math.round(parseFloat(intpermoney08)*Math.pow(10, 2))/Math.pow(10, 2);
		intpermoney08 = parseFloat($("#MasterPage_MasterPageContent_permoney08_txt").val().trim());

		if($("#MasterPage_MasterPageContent_qty08_txt").length==0)
			return;
		var qty08 = $("#MasterPage_MasterPageContent_qty08_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(qty08)){
			$("#MasterPage_MasterPageContent_money08_txt").val("");
						domath_totalmoney();
			return;
		}
		var intqty08 = qty08.length>0?parseFloat(qty08):0;

		document.getElementById("MasterPage_MasterPageContent_qty08_txt").value=Math.round(parseFloat(intqty08)*Math.pow(10, 2))/Math.pow(10, 2);
		intqty08 = parseFloat($("#MasterPage_MasterPageContent_qty08_txt").val().trim());

		var finalvalue = intpermoney08*intqty08;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_money08_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_money08_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_permoney08_txt").value = OEMFormat(parseFloat(permoney08).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_qty08_txt").value = OEMFormat(parseFloat(qty08).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money08_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	}catch(err){
		$("#MasterPage_MasterPageContent_money08_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
		domath_totalmoney();
}
function domath_money09()
{
	try{
		if($("#MasterPage_MasterPageContent_permoney09_txt").length==0)
			return;
		var permoney09 = $("#MasterPage_MasterPageContent_permoney09_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(permoney09)){
			$("#MasterPage_MasterPageContent_money09_txt").val("");
						domath_totalmoney();
			return;
		}
		var intpermoney09 = permoney09.length>0?parseFloat(permoney09):0;

		document.getElementById("MasterPage_MasterPageContent_permoney09_txt").value=Math.round(parseFloat(intpermoney09)*Math.pow(10, 2))/Math.pow(10, 2);
		intpermoney09 = parseFloat($("#MasterPage_MasterPageContent_permoney09_txt").val().trim());

		if($("#MasterPage_MasterPageContent_qty09_txt").length==0)
			return;
		var qty09 = $("#MasterPage_MasterPageContent_qty09_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(qty09)){
			$("#MasterPage_MasterPageContent_money09_txt").val("");
						domath_totalmoney();
			return;
		}
		var intqty09 = qty09.length>0?parseFloat(qty09):0;

		document.getElementById("MasterPage_MasterPageContent_qty09_txt").value=Math.round(parseFloat(intqty09)*Math.pow(10, 2))/Math.pow(10, 2);
		intqty09 = parseFloat($("#MasterPage_MasterPageContent_qty09_txt").val().trim());

		var finalvalue = intpermoney09*intqty09;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_money09_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_money09_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_permoney09_txt").value = OEMFormat(parseFloat(permoney09).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_qty09_txt").value = OEMFormat(parseFloat(qty09).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money09_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	}catch(err){
		$("#MasterPage_MasterPageContent_money09_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
		domath_totalmoney();
}
function domath_money10()
{
	try{
		if($("#MasterPage_MasterPageContent_permoney10_txt").length==0)
			return;
		var permoney10 = $("#MasterPage_MasterPageContent_permoney10_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(permoney10)){
			$("#MasterPage_MasterPageContent_money10_txt").val("");
						domath_totalmoney();
			return;
		}
		var intpermoney10 = permoney10.length>0?parseFloat(permoney10):0;

		document.getElementById("MasterPage_MasterPageContent_permoney10_txt").value=Math.round(parseFloat(intpermoney10)*Math.pow(10, 2))/Math.pow(10, 2);
		intpermoney10 = parseFloat($("#MasterPage_MasterPageContent_permoney10_txt").val().trim());

		if($("#MasterPage_MasterPageContent_qty10_txt").length==0)
			return;
		var qty10 = $("#MasterPage_MasterPageContent_qty10_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位
		if(isNaN(qty10)){
			$("#MasterPage_MasterPageContent_money10_txt").val("");
						domath_totalmoney();
			return;
		}
		var intqty10 = qty10.length>0?parseFloat(qty10):0;

		document.getElementById("MasterPage_MasterPageContent_qty10_txt").value=Math.round(parseFloat(intqty10)*Math.pow(10, 2))/Math.pow(10, 2);
		intqty10 = parseFloat($("#MasterPage_MasterPageContent_qty10_txt").val().trim());

		var finalvalue = intpermoney10*intqty10;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_money10_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_money10_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_permoney10_txt").value = OEMFormat(parseFloat(permoney10).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_qty10_txt").value = OEMFormat(parseFloat(qty10).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money10_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	}catch(err){
		$("#MasterPage_MasterPageContent_money10_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
		domath_totalmoney();
}
function domath_totalmoney()
{
	try{
		if($("#MasterPage_MasterPageContent_money01_txt").length==0)
			return;
		var money01 = $("#MasterPage_MasterPageContent_money01_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(money01)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney01 = money01.length>0?parseFloat(money01):0;

		document.getElementById("MasterPage_MasterPageContent_money01_txt").value=Math.round(parseFloat(intmoney01)*Math.pow(10, 2))/Math.pow(10, 2);
		intmoney01 = parseFloat($("#MasterPage_MasterPageContent_money01_txt").val().trim());

		if($("#MasterPage_MasterPageContent_money02_txt").length==0)
			return;
		var money02 = $("#MasterPage_MasterPageContent_money02_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(money02)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney02 = money02.length>0?parseFloat(money02):0;

		document.getElementById("MasterPage_MasterPageContent_money02_txt").value=Math.round(parseFloat(intmoney02)*Math.pow(10, 2))/Math.pow(10, 2);
		intmoney02 = parseFloat($("#MasterPage_MasterPageContent_money02_txt").val().trim());

		if($("#MasterPage_MasterPageContent_money03_txt").length==0)
			return;
		var money03 = $("#MasterPage_MasterPageContent_money03_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(money03)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney03 = money03.length>0?parseFloat(money03):0;

		document.getElementById("MasterPage_MasterPageContent_money03_txt").value=Math.round(parseFloat(intmoney03)*Math.pow(10, 2))/Math.pow(10, 2);
		intmoney03 = parseFloat($("#MasterPage_MasterPageContent_money03_txt").val().trim());

		if($("#MasterPage_MasterPageContent_money04_txt").length==0)
			return;
		var money04 = $("#MasterPage_MasterPageContent_money04_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(money04)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney04 = money04.length>0?parseFloat(money04):0;

		document.getElementById("MasterPage_MasterPageContent_money04_txt").value=Math.round(parseFloat(intmoney04)*Math.pow(10, 2))/Math.pow(10, 2);
		intmoney04 = parseFloat($("#MasterPage_MasterPageContent_money04_txt").val().trim());

		if($("#MasterPage_MasterPageContent_money05_txt").length==0)
			return;
		var money05 = $("#MasterPage_MasterPageContent_money05_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(money05)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney05 = money05.length>0?parseFloat(money05):0;

		document.getElementById("MasterPage_MasterPageContent_money05_txt").value=Math.round(parseFloat(intmoney05)*Math.pow(10, 2))/Math.pow(10, 2);
		intmoney05 = parseFloat($("#MasterPage_MasterPageContent_money05_txt").val().trim());

		if($("#MasterPage_MasterPageContent_money06_txt").length==0)
			return;
		var money06 = $("#MasterPage_MasterPageContent_money06_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(money06)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney06 = money06.length>0?parseFloat(money06):0;

		document.getElementById("MasterPage_MasterPageContent_money06_txt").value=Math.round(parseFloat(intmoney06)*Math.pow(10, 2))/Math.pow(10, 2);
		intmoney06 = parseFloat($("#MasterPage_MasterPageContent_money06_txt").val().trim());

		if($("#MasterPage_MasterPageContent_money07_txt").length==0)
			return;
		var money07 = $("#MasterPage_MasterPageContent_money07_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(money07)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney07 = money07.length>0?parseFloat(money07):0;

		document.getElementById("MasterPage_MasterPageContent_money07_txt").value=Math.round(parseFloat(intmoney07)*Math.pow(10, 2))/Math.pow(10, 2);
		intmoney07 = parseFloat($("#MasterPage_MasterPageContent_money07_txt").val().trim());

		if($("#MasterPage_MasterPageContent_money08_txt").length==0)
			return;
		var money08 = $("#MasterPage_MasterPageContent_money08_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(money08)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney08 = money08.length>0?parseFloat(money08):0;

		document.getElementById("MasterPage_MasterPageContent_money08_txt").value=Math.round(parseFloat(intmoney08)*Math.pow(10, 2))/Math.pow(10, 2);
		intmoney08 = parseFloat($("#MasterPage_MasterPageContent_money08_txt").val().trim());

		if($("#MasterPage_MasterPageContent_money09_txt").length==0)
			return;
		var money09 = $("#MasterPage_MasterPageContent_money09_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(money09)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney09 = money09.length>0?parseFloat(money09):0;

		document.getElementById("MasterPage_MasterPageContent_money09_txt").value=Math.round(parseFloat(intmoney09)*Math.pow(10, 2))/Math.pow(10, 2);
		intmoney09 = parseFloat($("#MasterPage_MasterPageContent_money09_txt").val().trim());

		if($("#MasterPage_MasterPageContent_money10_txt").length==0)
			return;
		var money10 = $("#MasterPage_MasterPageContent_money10_txt").val().trim().replace(/\,/g, ''); //20231117 Peggy 先移除千份位;
		if(isNaN(money10)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}
		var intmoney10 = money10.length>0?parseFloat(money10):0;

		document.getElementById("MasterPage_MasterPageContent_money10_txt").value=Math.round(parseFloat(intmoney10)*Math.pow(10, 2))/Math.pow(10, 2);
		intmoney10 = parseFloat($("#MasterPage_MasterPageContent_money10_txt").val().trim());

		var finalvalue = intmoney01+intmoney02+intmoney03+intmoney04+intmoney05+intmoney06+intmoney07+intmoney08+intmoney09+intmoney10;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_totalmoney_txt").value = Math.round(parseFloat(finalvalue) * Math.pow(10, 2)) / Math.pow(10, 2);
		//^_^ 20230411 Peggy 重新加上千份位↓
		document.getElementById("MasterPage_MasterPageContent_money01_txt").value = OEMFormat(parseFloat(money01).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money02_txt").value = OEMFormat(parseFloat(money02).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money03_txt").value = OEMFormat(parseFloat(money03).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money04_txt").value = OEMFormat(parseFloat(money04).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money05_txt").value = OEMFormat(parseFloat(money05).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money06_txt").value = OEMFormat(parseFloat(money06).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money07_txt").value = OEMFormat(parseFloat(money07).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money08_txt").value = OEMFormat(parseFloat(money08).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money09_txt").value = OEMFormat(parseFloat(money09).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_money10_txt").value = OEMFormat(parseFloat(money10).toFixed(2));
		document.getElementById("MasterPage_MasterPageContent_totalmoney_txt").value = OEMFormat(parseFloat(finalvalue).toFixed(2));
	    //^_^  20230411 Peggy 重新加上千份位↑
	}catch(err){
		$("#MasterPage_MasterPageContent_totalmoney_txt").val("");
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
		var bResult = tw.com.dsc.easyflowDotNet.forms.ODMPRMVE02.ajaxDoDispatchForm(pFormID, pSheetNo, pDispatchFormID).value;
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


