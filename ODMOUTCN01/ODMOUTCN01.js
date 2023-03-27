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
	//Int格式驗証
	var tamt01 = $('#MasterPage_MasterPageContent_amt01_txt');
	if(tamt01.length>0){
		var tamt01Value = $('#MasterPage_MasterPageContent_amt01_txt').val().trim();
		if (tamt01Value.length>0){
			if(!/^-?\d+$/.test(tamt01Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt02 = $('#MasterPage_MasterPageContent_amt02_txt');
	if(tamt02.length>0){
		var tamt02Value = $('#MasterPage_MasterPageContent_amt02_txt').val().trim();
		if (tamt02Value.length>0){
			if(!/^-?\d+$/.test(tamt02Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt03 = $('#MasterPage_MasterPageContent_amt03_txt');
	if(tamt03.length>0){
		var tamt03Value = $('#MasterPage_MasterPageContent_amt03_txt').val().trim();
		if (tamt03Value.length>0){
			if(!/^-?\d+$/.test(tamt03Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt04 = $('#MasterPage_MasterPageContent_amt04_txt');
	if(tamt04.length>0){
		var tamt04Value = $('#MasterPage_MasterPageContent_amt04_txt').val().trim();
		if (tamt04Value.length>0){
			if(!/^-?\d+$/.test(tamt04Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt05 = $('#MasterPage_MasterPageContent_amt05_txt');
	if(tamt05.length>0){
		var tamt05Value = $('#MasterPage_MasterPageContent_amt05_txt').val().trim();
		if (tamt05Value.length>0){
			if(!/^-?\d+$/.test(tamt05Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt06 = $('#MasterPage_MasterPageContent_amt06_txt');
	if(tamt06.length>0){
		var tamt06Value = $('#MasterPage_MasterPageContent_amt06_txt').val().trim();
		if (tamt06Value.length>0){
			if(!/^-?\d+$/.test(tamt06Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt07 = $('#MasterPage_MasterPageContent_amt07_txt');
	if(tamt07.length>0){
		var tamt07Value = $('#MasterPage_MasterPageContent_amt07_txt').val().trim();
		if (tamt07Value.length>0){
			if(!/^-?\d+$/.test(tamt07Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt08 = $('#MasterPage_MasterPageContent_amt08_txt');
	if(tamt08.length>0){
		var tamt08Value = $('#MasterPage_MasterPageContent_amt08_txt').val().trim();
		if (tamt08Value.length>0){
			if(!/^-?\d+$/.test(tamt08Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty01 = $('#MasterPage_MasterPageContent_outqty01_txt');
	if(toutqty01.length>0){
		var toutqty01Value = $('#MasterPage_MasterPageContent_outqty01_txt').val().trim();
		if (toutqty01Value.length>0){
			if(!/^-?\d+$/.test(toutqty01Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty02 = $('#MasterPage_MasterPageContent_outqty02_txt');
	if(toutqty02.length>0){
		var toutqty02Value = $('#MasterPage_MasterPageContent_outqty02_txt').val().trim();
		if (toutqty02Value.length>0){
			if(!/^-?\d+$/.test(toutqty02Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty03 = $('#MasterPage_MasterPageContent_outqty03_txt');
	if(toutqty03.length>0){
		var toutqty03Value = $('#MasterPage_MasterPageContent_outqty03_txt').val().trim();
		if (toutqty03Value.length>0){
			if(!/^-?\d+$/.test(toutqty03Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty04 = $('#MasterPage_MasterPageContent_outqty04_txt');
	if(toutqty04.length>0){
		var toutqty04Value = $('#MasterPage_MasterPageContent_outqty04_txt').val().trim();
		if (toutqty04Value.length>0){
			if(!/^-?\d+$/.test(toutqty04Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty05 = $('#MasterPage_MasterPageContent_outqty05_txt');
	if(toutqty05.length>0){
		var toutqty05Value = $('#MasterPage_MasterPageContent_outqty05_txt').val().trim();
		if (toutqty05Value.length>0){
			if(!/^-?\d+$/.test(toutqty05Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty06 = $('#MasterPage_MasterPageContent_outqty06_txt');
	if(toutqty06.length>0){
		var toutqty06Value = $('#MasterPage_MasterPageContent_outqty06_txt').val().trim();
		if (toutqty06Value.length>0){
			if(!/^-?\d+$/.test(toutqty06Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty07 = $('#MasterPage_MasterPageContent_outqty07_txt');
	if(toutqty07.length>0){
		var toutqty07Value = $('#MasterPage_MasterPageContent_outqty07_txt').val().trim();
		if (toutqty07Value.length>0){
			if(!/^-?\d+$/.test(toutqty07Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty08 = $('#MasterPage_MasterPageContent_outqty08_txt');
	if(toutqty08.length>0){
		var toutqty08Value = $('#MasterPage_MasterPageContent_outqty08_txt').val().trim();
		if (toutqty08Value.length>0){
			if(!/^-?\d+$/.test(toutqty08Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var ttotamt = $('#MasterPage_MasterPageContent_totamt_txt');
	if(ttotamt.length>0){
		var ttotamtValue = $('#MasterPage_MasterPageContent_totamt_txt').val().trim();
		if (ttotamtValue.length>0){
			if(!/^-?\d+$/.test(ttotamtValue)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'totamt', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//float格式驗証
	var tuniprice01 = $('#MasterPage_MasterPageContent_uniprice01_txt');
	if(tuniprice01.length>0){
		var tuniprice01Value = $('#MasterPage_MasterPageContent_uniprice01_txt').val().trim();
		if (tuniprice01Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice01Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice01Value=tuniprice01Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice01_txt').val(parseFloat(tuniprice01Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice02 = $('#MasterPage_MasterPageContent_uniprice02_txt');
	if(tuniprice02.length>0){
		var tuniprice02Value = $('#MasterPage_MasterPageContent_uniprice02_txt').val().trim();
		if (tuniprice02Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice02Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice02Value=tuniprice02Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice02_txt').val(parseFloat(tuniprice02Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice03 = $('#MasterPage_MasterPageContent_uniprice03_txt');
	if(tuniprice03.length>0){
		var tuniprice03Value = $('#MasterPage_MasterPageContent_uniprice03_txt').val().trim();
		if (tuniprice03Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice03Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice03Value=tuniprice03Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice03_txt').val(parseFloat(tuniprice03Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice04 = $('#MasterPage_MasterPageContent_uniprice04_txt');
	if(tuniprice04.length>0){
		var tuniprice04Value = $('#MasterPage_MasterPageContent_uniprice04_txt').val().trim();
		if (tuniprice04Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice04Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice04Value=tuniprice04Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice04_txt').val(parseFloat(tuniprice04Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice05 = $('#MasterPage_MasterPageContent_uniprice05_txt');
	if(tuniprice05.length>0){
		var tuniprice05Value = $('#MasterPage_MasterPageContent_uniprice05_txt').val().trim();
		if (tuniprice05Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice05Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice05Value=tuniprice05Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice05_txt').val(parseFloat(tuniprice05Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice06 = $('#MasterPage_MasterPageContent_uniprice06_txt');
	if(tuniprice06.length>0){
		var tuniprice06Value = $('#MasterPage_MasterPageContent_uniprice06_txt').val().trim();
		if (tuniprice06Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice06Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice06Value=tuniprice06Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice06_txt').val(parseFloat(tuniprice06Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice07 = $('#MasterPage_MasterPageContent_uniprice07_txt');
	if(tuniprice07.length>0){
		var tuniprice07Value = $('#MasterPage_MasterPageContent_uniprice07_txt').val().trim();
		if (tuniprice07Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice07Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice07Value=tuniprice07Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice07_txt').val(parseFloat(tuniprice07Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice08 = $('#MasterPage_MasterPageContent_uniprice08_txt');
	if(tuniprice08.length>0){
		var tuniprice08Value = $('#MasterPage_MasterPageContent_uniprice08_txt').val().trim();
		if (tuniprice08Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice08Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice08Value=tuniprice08Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice08_txt').val(parseFloat(tuniprice08Value).toFixed(4));
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
	//Int格式驗証
	var tamt01 = $('#MasterPage_MasterPageContent_amt01_txt');
	if(tamt01.length>0){
		var tamt01Value = $('#MasterPage_MasterPageContent_amt01_txt').val().trim();
		if (tamt01Value.length>0){
			if(!/^-?\d+$/.test(tamt01Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt02 = $('#MasterPage_MasterPageContent_amt02_txt');
	if(tamt02.length>0){
		var tamt02Value = $('#MasterPage_MasterPageContent_amt02_txt').val().trim();
		if (tamt02Value.length>0){
			if(!/^-?\d+$/.test(tamt02Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt03 = $('#MasterPage_MasterPageContent_amt03_txt');
	if(tamt03.length>0){
		var tamt03Value = $('#MasterPage_MasterPageContent_amt03_txt').val().trim();
		if (tamt03Value.length>0){
			if(!/^-?\d+$/.test(tamt03Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt04 = $('#MasterPage_MasterPageContent_amt04_txt');
	if(tamt04.length>0){
		var tamt04Value = $('#MasterPage_MasterPageContent_amt04_txt').val().trim();
		if (tamt04Value.length>0){
			if(!/^-?\d+$/.test(tamt04Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt05 = $('#MasterPage_MasterPageContent_amt05_txt');
	if(tamt05.length>0){
		var tamt05Value = $('#MasterPage_MasterPageContent_amt05_txt').val().trim();
		if (tamt05Value.length>0){
			if(!/^-?\d+$/.test(tamt05Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt06 = $('#MasterPage_MasterPageContent_amt06_txt');
	if(tamt06.length>0){
		var tamt06Value = $('#MasterPage_MasterPageContent_amt06_txt').val().trim();
		if (tamt06Value.length>0){
			if(!/^-?\d+$/.test(tamt06Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt07 = $('#MasterPage_MasterPageContent_amt07_txt');
	if(tamt07.length>0){
		var tamt07Value = $('#MasterPage_MasterPageContent_amt07_txt').val().trim();
		if (tamt07Value.length>0){
			if(!/^-?\d+$/.test(tamt07Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var tamt08 = $('#MasterPage_MasterPageContent_amt08_txt');
	if(tamt08.length>0){
		var tamt08Value = $('#MasterPage_MasterPageContent_amt08_txt').val().trim();
		if (tamt08Value.length>0){
			if(!/^-?\d+$/.test(tamt08Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'amt08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty01 = $('#MasterPage_MasterPageContent_outqty01_txt');
	if(toutqty01.length>0){
		var toutqty01Value = $('#MasterPage_MasterPageContent_outqty01_txt').val().trim();
		if (toutqty01Value.length>0){
			if(!/^-?\d+$/.test(toutqty01Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty02 = $('#MasterPage_MasterPageContent_outqty02_txt');
	if(toutqty02.length>0){
		var toutqty02Value = $('#MasterPage_MasterPageContent_outqty02_txt').val().trim();
		if (toutqty02Value.length>0){
			if(!/^-?\d+$/.test(toutqty02Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty03 = $('#MasterPage_MasterPageContent_outqty03_txt');
	if(toutqty03.length>0){
		var toutqty03Value = $('#MasterPage_MasterPageContent_outqty03_txt').val().trim();
		if (toutqty03Value.length>0){
			if(!/^-?\d+$/.test(toutqty03Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty04 = $('#MasterPage_MasterPageContent_outqty04_txt');
	if(toutqty04.length>0){
		var toutqty04Value = $('#MasterPage_MasterPageContent_outqty04_txt').val().trim();
		if (toutqty04Value.length>0){
			if(!/^-?\d+$/.test(toutqty04Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty05 = $('#MasterPage_MasterPageContent_outqty05_txt');
	if(toutqty05.length>0){
		var toutqty05Value = $('#MasterPage_MasterPageContent_outqty05_txt').val().trim();
		if (toutqty05Value.length>0){
			if(!/^-?\d+$/.test(toutqty05Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty06 = $('#MasterPage_MasterPageContent_outqty06_txt');
	if(toutqty06.length>0){
		var toutqty06Value = $('#MasterPage_MasterPageContent_outqty06_txt').val().trim();
		if (toutqty06Value.length>0){
			if(!/^-?\d+$/.test(toutqty06Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty07 = $('#MasterPage_MasterPageContent_outqty07_txt');
	if(toutqty07.length>0){
		var toutqty07Value = $('#MasterPage_MasterPageContent_outqty07_txt').val().trim();
		if (toutqty07Value.length>0){
			if(!/^-?\d+$/.test(toutqty07Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var toutqty08 = $('#MasterPage_MasterPageContent_outqty08_txt');
	if(toutqty08.length>0){
		var toutqty08Value = $('#MasterPage_MasterPageContent_outqty08_txt').val().trim();
		if (toutqty08Value.length>0){
			if(!/^-?\d+$/.test(toutqty08Value)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'outqty08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//Int格式驗証
	var ttotamt = $('#MasterPage_MasterPageContent_totamt_txt');
	if(ttotamt.length>0){
		var ttotamtValue = $('#MasterPage_MasterPageContent_totamt_txt').val().trim();
		if (ttotamtValue.length>0){
			if(!/^-?\d+$/.test(ttotamtValue)){
				//輸入的資料不符合int數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'totamt', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tIntErrMsg + '\r\n';
			}
		}
	}

	//float格式驗証
	var tuniprice01 = $('#MasterPage_MasterPageContent_uniprice01_txt');
	if(tuniprice01.length>0){
		var tuniprice01Value = $('#MasterPage_MasterPageContent_uniprice01_txt').val().trim();
		if (tuniprice01Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice01Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice01', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice01Value=tuniprice01Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice01_txt').val(parseFloat(tuniprice01Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice02 = $('#MasterPage_MasterPageContent_uniprice02_txt');
	if(tuniprice02.length>0){
		var tuniprice02Value = $('#MasterPage_MasterPageContent_uniprice02_txt').val().trim();
		if (tuniprice02Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice02Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice02', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice02Value=tuniprice02Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice02_txt').val(parseFloat(tuniprice02Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice03 = $('#MasterPage_MasterPageContent_uniprice03_txt');
	if(tuniprice03.length>0){
		var tuniprice03Value = $('#MasterPage_MasterPageContent_uniprice03_txt').val().trim();
		if (tuniprice03Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice03Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice03', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice03Value=tuniprice03Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice03_txt').val(parseFloat(tuniprice03Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice04 = $('#MasterPage_MasterPageContent_uniprice04_txt');
	if(tuniprice04.length>0){
		var tuniprice04Value = $('#MasterPage_MasterPageContent_uniprice04_txt').val().trim();
		if (tuniprice04Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice04Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice04', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice04Value=tuniprice04Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice04_txt').val(parseFloat(tuniprice04Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice05 = $('#MasterPage_MasterPageContent_uniprice05_txt');
	if(tuniprice05.length>0){
		var tuniprice05Value = $('#MasterPage_MasterPageContent_uniprice05_txt').val().trim();
		if (tuniprice05Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice05Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice05', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice05Value=tuniprice05Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice05_txt').val(parseFloat(tuniprice05Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice06 = $('#MasterPage_MasterPageContent_uniprice06_txt');
	if(tuniprice06.length>0){
		var tuniprice06Value = $('#MasterPage_MasterPageContent_uniprice06_txt').val().trim();
		if (tuniprice06Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice06Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice06', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice06Value=tuniprice06Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice06_txt').val(parseFloat(tuniprice06Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice07 = $('#MasterPage_MasterPageContent_uniprice07_txt');
	if(tuniprice07.length>0){
		var tuniprice07Value = $('#MasterPage_MasterPageContent_uniprice07_txt').val().trim();
		if (tuniprice07Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice07Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice07', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice07Value=tuniprice07Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice07_txt').val(parseFloat(tuniprice07Value).toFixed(4));
			}
		}
	}

	//float格式驗証
	var tuniprice08 = $('#MasterPage_MasterPageContent_uniprice08_txt');
	if(tuniprice08.length>0){
		var tuniprice08Value = $('#MasterPage_MasterPageContent_uniprice08_txt').val().trim();
		if (tuniprice08Value.length>0){
			if(!/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(tuniprice08Value)){
				//輸入的資料不符合float數值格式 !
				tErr += '「' + getI18NForSpecial('FD', 'ODMOUTCN01', 'uniprice08', '../../_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx') + '」  ' + tFloatErrMsg + '\r\n';
			}
			else{
				tuniprice08Value=tuniprice08Value.replace(/\,/g,'');
				$('#MasterPage_MasterPageContent_uniprice08_txt').val(parseFloat(tuniprice08Value).toFixed(4));
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
	domath_amt01();
	domath_amt02();
	domath_amt03();
	domath_amt04();
	domath_amt05();
	domath_amt06();
	domath_amt07();
	domath_amt08();
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
				tControlNumValue = tw.com.dsc.easyflowDotNet.forms.ODMOUTCN01.ajaxGetFixedNum(tControlNumValue, pDecimalPlaces).value;

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

			var tControlWordValue = tw.com.dsc.easyflowDotNet.forms.ODMOUTCN01.ajaxGetMoneyWord(tControlNumValue).value;
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
	tSubjectSelf+='CN協外加工扣款憑證-'+
$('#MasterPage_MasterPageContent_firm_txt').val();

	//自訂主旨
	tSubjectVal=tSubjectSelf;

	if(tSubjectVal.length>255){tSubjectVal=tSubjectVal.substring(0,255);}
	//使用者自訂主旨end

	$("#MasterPage_txtCreateToolSubject_txt").val(tSubjectVal);
}

function domath_amt01()
{
	try{
		if($("#MasterPage_MasterPageContent_outqty01_txt").length==0)
			return;
		var outqty01 = $("#MasterPage_MasterPageContent_outqty01_txt").val().trim();
		if(isNaN(outqty01)){
			$("#MasterPage_MasterPageContent_amt01_txt").val("");
			return;
		}
		var intoutqty01 = outqty01.length>0?parseFloat(outqty01):0;

		document.getElementById("MasterPage_MasterPageContent_outqty01_txt").value=Math.round(intoutqty01);
		intoutqty01 = parseFloat($("#MasterPage_MasterPageContent_outqty01_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice01_txt").length==0)
			return;
		var uniprice01 = $("#MasterPage_MasterPageContent_uniprice01_txt").val().trim();
		if(isNaN(uniprice01)){
			$("#MasterPage_MasterPageContent_amt01_txt").val("");
			return;
		}
		var intuniprice01 = uniprice01.length>0?parseFloat(uniprice01):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice01_txt").value=parseFloat(intuniprice01).toFixed(4);
		intuniprice01 = parseFloat($("#MasterPage_MasterPageContent_uniprice01_txt").val().trim());

		var finalvalue = intoutqty01*intuniprice01;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_amt01_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_amt01_txt").value=Math.round(finalvalue);
	}catch(err){
		$("#MasterPage_MasterPageContent_amt01_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
}
function domath_amt02()
{
	try{
		if($("#MasterPage_MasterPageContent_outqty02_txt").length==0)
			return;
		var outqty02 = $("#MasterPage_MasterPageContent_outqty02_txt").val().trim();
		if(isNaN(outqty02)){
			$("#MasterPage_MasterPageContent_amt02_txt").val("");
			return;
		}
		var intoutqty02 = outqty02.length>0?parseFloat(outqty02):0;

		document.getElementById("MasterPage_MasterPageContent_outqty02_txt").value=Math.round(intoutqty02);
		intoutqty02 = parseFloat($("#MasterPage_MasterPageContent_outqty02_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice02_txt").length==0)
			return;
		var uniprice02 = $("#MasterPage_MasterPageContent_uniprice02_txt").val().trim();
		if(isNaN(uniprice02)){
			$("#MasterPage_MasterPageContent_amt02_txt").val("");
			return;
		}
		var intuniprice02 = uniprice02.length>0?parseFloat(uniprice02):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice02_txt").value=parseFloat(intuniprice02).toFixed(4);
		intuniprice02 = parseFloat($("#MasterPage_MasterPageContent_uniprice02_txt").val().trim());

		var finalvalue = intoutqty02*intuniprice02;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_amt02_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_amt02_txt").value=Math.round(finalvalue);
	}catch(err){
		$("#MasterPage_MasterPageContent_amt02_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
}
function domath_amt03()
{
	try{
		if($("#MasterPage_MasterPageContent_outqty03_txt").length==0)
			return;
		var outqty03 = $("#MasterPage_MasterPageContent_outqty03_txt").val().trim();
		if(isNaN(outqty03)){
			$("#MasterPage_MasterPageContent_amt03_txt").val("");
			return;
		}
		var intoutqty03 = outqty03.length>0?parseFloat(outqty03):0;

		document.getElementById("MasterPage_MasterPageContent_outqty03_txt").value=Math.round(intoutqty03);
		intoutqty03 = parseFloat($("#MasterPage_MasterPageContent_outqty03_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice03_txt").length==0)
			return;
		var uniprice03 = $("#MasterPage_MasterPageContent_uniprice03_txt").val().trim();
		if(isNaN(uniprice03)){
			$("#MasterPage_MasterPageContent_amt03_txt").val("");
			return;
		}
		var intuniprice03 = uniprice03.length>0?parseFloat(uniprice03):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice03_txt").value=parseFloat(intuniprice03).toFixed(4);
		intuniprice03 = parseFloat($("#MasterPage_MasterPageContent_uniprice03_txt").val().trim());

		var finalvalue = intoutqty03*intuniprice03;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_amt03_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_amt03_txt").value=Math.round(finalvalue);
	}catch(err){
		$("#MasterPage_MasterPageContent_amt03_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
}
function domath_amt04()
{
	try{
		if($("#MasterPage_MasterPageContent_outqty04_txt").length==0)
			return;
		var outqty04 = $("#MasterPage_MasterPageContent_outqty04_txt").val().trim();
		if(isNaN(outqty04)){
			$("#MasterPage_MasterPageContent_amt04_txt").val("");
			return;
		}
		var intoutqty04 = outqty04.length>0?parseFloat(outqty04):0;

		document.getElementById("MasterPage_MasterPageContent_outqty04_txt").value=Math.round(intoutqty04);
		intoutqty04 = parseFloat($("#MasterPage_MasterPageContent_outqty04_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice04_txt").length==0)
			return;
		var uniprice04 = $("#MasterPage_MasterPageContent_uniprice04_txt").val().trim();
		if(isNaN(uniprice04)){
			$("#MasterPage_MasterPageContent_amt04_txt").val("");
			return;
		}
		var intuniprice04 = uniprice04.length>0?parseFloat(uniprice04):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice04_txt").value=parseFloat(intuniprice04).toFixed(4);
		intuniprice04 = parseFloat($("#MasterPage_MasterPageContent_uniprice04_txt").val().trim());

		var finalvalue = intoutqty04*intuniprice04;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_amt04_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_amt04_txt").value=Math.round(finalvalue);
	}catch(err){
		$("#MasterPage_MasterPageContent_amt04_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
}
function domath_amt05()
{
	try{
		if($("#MasterPage_MasterPageContent_outqty05_txt").length==0)
			return;
		var outqty05 = $("#MasterPage_MasterPageContent_outqty05_txt").val().trim();
		if(isNaN(outqty05)){
			$("#MasterPage_MasterPageContent_amt05_txt").val("");
			return;
		}
		var intoutqty05 = outqty05.length>0?parseFloat(outqty05):0;

		document.getElementById("MasterPage_MasterPageContent_outqty05_txt").value=Math.round(intoutqty05);
		intoutqty05 = parseFloat($("#MasterPage_MasterPageContent_outqty05_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice05_txt").length==0)
			return;
		var uniprice05 = $("#MasterPage_MasterPageContent_uniprice05_txt").val().trim();
		if(isNaN(uniprice05)){
			$("#MasterPage_MasterPageContent_amt05_txt").val("");
			return;
		}
		var intuniprice05 = uniprice05.length>0?parseFloat(uniprice05):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice05_txt").value=parseFloat(intuniprice05).toFixed(4);
		intuniprice05 = parseFloat($("#MasterPage_MasterPageContent_uniprice05_txt").val().trim());

		var finalvalue = intoutqty05*intuniprice05;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_amt05_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_amt05_txt").value=Math.round(finalvalue);
	}catch(err){
		$("#MasterPage_MasterPageContent_amt05_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
}
function domath_amt06()
{
	try{
		if($("#MasterPage_MasterPageContent_outqty06_txt").length==0)
			return;
		var outqty06 = $("#MasterPage_MasterPageContent_outqty06_txt").val().trim();
		if(isNaN(outqty06)){
			$("#MasterPage_MasterPageContent_amt06_txt").val("");
			return;
		}
		var intoutqty06 = outqty06.length>0?parseFloat(outqty06):0;

		document.getElementById("MasterPage_MasterPageContent_outqty06_txt").value=Math.round(intoutqty06);
		intoutqty06 = parseFloat($("#MasterPage_MasterPageContent_outqty06_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice06_txt").length==0)
			return;
		var uniprice06 = $("#MasterPage_MasterPageContent_uniprice06_txt").val().trim();
		if(isNaN(uniprice06)){
			$("#MasterPage_MasterPageContent_amt06_txt").val("");
			return;
		}
		var intuniprice06 = uniprice06.length>0?parseFloat(uniprice06):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice06_txt").value=parseFloat(intuniprice06).toFixed(4);
		intuniprice06 = parseFloat($("#MasterPage_MasterPageContent_uniprice06_txt").val().trim());

		var finalvalue = intoutqty06*intuniprice06;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_amt06_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_amt06_txt").value=Math.round(finalvalue);
	}catch(err){
		$("#MasterPage_MasterPageContent_amt06_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
}
function domath_amt07()
{
	try{
		if($("#MasterPage_MasterPageContent_outqty07_txt").length==0)
			return;
		var outqty07 = $("#MasterPage_MasterPageContent_outqty07_txt").val().trim();
		if(isNaN(outqty07)){
			$("#MasterPage_MasterPageContent_amt07_txt").val("");
			return;
		}
		var intoutqty07 = outqty07.length>0?parseFloat(outqty07):0;

		document.getElementById("MasterPage_MasterPageContent_outqty07_txt").value=Math.round(intoutqty07);
		intoutqty07 = parseFloat($("#MasterPage_MasterPageContent_outqty07_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice07_txt").length==0)
			return;
		var uniprice07 = $("#MasterPage_MasterPageContent_uniprice07_txt").val().trim();
		if(isNaN(uniprice07)){
			$("#MasterPage_MasterPageContent_amt07_txt").val("");
			return;
		}
		var intuniprice07 = uniprice07.length>0?parseFloat(uniprice07):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice07_txt").value=parseFloat(intuniprice07).toFixed(4);
		intuniprice07 = parseFloat($("#MasterPage_MasterPageContent_uniprice07_txt").val().trim());

		var finalvalue = intoutqty07*intuniprice07;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_amt07_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_amt07_txt").value=Math.round(finalvalue);
	}catch(err){
		$("#MasterPage_MasterPageContent_amt07_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
}
function domath_amt08()
{
	try{
		if($("#MasterPage_MasterPageContent_outqty08_txt").length==0)
			return;
		var outqty08 = $("#MasterPage_MasterPageContent_outqty08_txt").val().trim();
		if(isNaN(outqty08)){
			$("#MasterPage_MasterPageContent_amt08_txt").val("");
			return;
		}
		var intoutqty08 = outqty08.length>0?parseFloat(outqty08):0;

		document.getElementById("MasterPage_MasterPageContent_outqty08_txt").value=Math.round(intoutqty08);
		intoutqty08 = parseFloat($("#MasterPage_MasterPageContent_outqty08_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice08_txt").length==0)
			return;
		var uniprice08 = $("#MasterPage_MasterPageContent_uniprice08_txt").val().trim();
		if(isNaN(uniprice08)){
			$("#MasterPage_MasterPageContent_amt08_txt").val("");
			return;
		}
		var intuniprice08 = uniprice08.length>0?parseFloat(uniprice08):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice08_txt").value=parseFloat(intuniprice08).toFixed(4);
		intuniprice08 = parseFloat($("#MasterPage_MasterPageContent_uniprice08_txt").val().trim());

		var finalvalue = intoutqty08*intuniprice08;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_amt08_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_amt08_txt").value=Math.round(finalvalue);
	}catch(err){
		$("#MasterPage_MasterPageContent_amt08_txt").val("");
		var errorMsg = getI18NForSpecial('FD','CalculatedSet2','MutiLang_04','../../../src/_Common/PlatformUtil/KernelPage/I18N/I18NForJs.aspx');
		alert(errorMsg+err);
	}
}
function domath_totamt()
{
	try{
		if($("#MasterPage_MasterPageContent_outqty01_txt").length==0)
			return;
		var outqty01 = $("#MasterPage_MasterPageContent_outqty01_txt").val().trim();
		if(isNaN(outqty01)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intoutqty01 = outqty01.length>0?parseFloat(outqty01):0;

		document.getElementById("MasterPage_MasterPageContent_outqty01_txt").value=Math.round(intoutqty01);
		intoutqty01 = parseFloat($("#MasterPage_MasterPageContent_outqty01_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice01_txt").length==0)
			return;
		var uniprice01 = $("#MasterPage_MasterPageContent_uniprice01_txt").val().trim();
		if(isNaN(uniprice01)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intuniprice01 = uniprice01.length>0?parseFloat(uniprice01):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice01_txt").value=parseFloat(intuniprice01).toFixed(4);
		intuniprice01 = parseFloat($("#MasterPage_MasterPageContent_uniprice01_txt").val().trim());

		if($("#MasterPage_MasterPageContent_outqty02_txt").length==0)
			return;
		var outqty02 = $("#MasterPage_MasterPageContent_outqty02_txt").val().trim();
		if(isNaN(outqty02)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intoutqty02 = outqty02.length>0?parseFloat(outqty02):0;

		document.getElementById("MasterPage_MasterPageContent_outqty02_txt").value=Math.round(intoutqty02);
		intoutqty02 = parseFloat($("#MasterPage_MasterPageContent_outqty02_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice02_txt").length==0)
			return;
		var uniprice02 = $("#MasterPage_MasterPageContent_uniprice02_txt").val().trim();
		if(isNaN(uniprice02)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intuniprice02 = uniprice02.length>0?parseFloat(uniprice02):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice02_txt").value=parseFloat(intuniprice02).toFixed(4);
		intuniprice02 = parseFloat($("#MasterPage_MasterPageContent_uniprice02_txt").val().trim());

		if($("#MasterPage_MasterPageContent_outqty03_txt").length==0)
			return;
		var outqty03 = $("#MasterPage_MasterPageContent_outqty03_txt").val().trim();
		if(isNaN(outqty03)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intoutqty03 = outqty03.length>0?parseFloat(outqty03):0;

		document.getElementById("MasterPage_MasterPageContent_outqty03_txt").value=Math.round(intoutqty03);
		intoutqty03 = parseFloat($("#MasterPage_MasterPageContent_outqty03_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice03_txt").length==0)
			return;
		var uniprice03 = $("#MasterPage_MasterPageContent_uniprice03_txt").val().trim();
		if(isNaN(uniprice03)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intuniprice03 = uniprice03.length>0?parseFloat(uniprice03):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice03_txt").value=parseFloat(intuniprice03).toFixed(4);
		intuniprice03 = parseFloat($("#MasterPage_MasterPageContent_uniprice03_txt").val().trim());

		if($("#MasterPage_MasterPageContent_outqty04_txt").length==0)
			return;
		var outqty04 = $("#MasterPage_MasterPageContent_outqty04_txt").val().trim();
		if(isNaN(outqty04)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intoutqty04 = outqty04.length>0?parseFloat(outqty04):0;

		document.getElementById("MasterPage_MasterPageContent_outqty04_txt").value=Math.round(intoutqty04);
		intoutqty04 = parseFloat($("#MasterPage_MasterPageContent_outqty04_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice04_txt").length==0)
			return;
		var uniprice04 = $("#MasterPage_MasterPageContent_uniprice04_txt").val().trim();
		if(isNaN(uniprice04)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intuniprice04 = uniprice04.length>0?parseFloat(uniprice04):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice04_txt").value=parseFloat(intuniprice04).toFixed(4);
		intuniprice04 = parseFloat($("#MasterPage_MasterPageContent_uniprice04_txt").val().trim());

		if($("#MasterPage_MasterPageContent_outqty05_txt").length==0)
			return;
		var outqty05 = $("#MasterPage_MasterPageContent_outqty05_txt").val().trim();
		if(isNaN(outqty05)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intoutqty05 = outqty05.length>0?parseFloat(outqty05):0;

		document.getElementById("MasterPage_MasterPageContent_outqty05_txt").value=Math.round(intoutqty05);
		intoutqty05 = parseFloat($("#MasterPage_MasterPageContent_outqty05_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice05_txt").length==0)
			return;
		var uniprice05 = $("#MasterPage_MasterPageContent_uniprice05_txt").val().trim();
		if(isNaN(uniprice05)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intuniprice05 = uniprice05.length>0?parseFloat(uniprice05):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice05_txt").value=parseFloat(intuniprice05).toFixed(4);
		intuniprice05 = parseFloat($("#MasterPage_MasterPageContent_uniprice05_txt").val().trim());

		if($("#MasterPage_MasterPageContent_outqty06_txt").length==0)
			return;
		var outqty06 = $("#MasterPage_MasterPageContent_outqty06_txt").val().trim();
		if(isNaN(outqty06)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intoutqty06 = outqty06.length>0?parseFloat(outqty06):0;

		document.getElementById("MasterPage_MasterPageContent_outqty06_txt").value=Math.round(intoutqty06);
		intoutqty06 = parseFloat($("#MasterPage_MasterPageContent_outqty06_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice06_txt").length==0)
			return;
		var uniprice06 = $("#MasterPage_MasterPageContent_uniprice06_txt").val().trim();
		if(isNaN(uniprice06)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intuniprice06 = uniprice06.length>0?parseFloat(uniprice06):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice06_txt").value=parseFloat(intuniprice06).toFixed(4);
		intuniprice06 = parseFloat($("#MasterPage_MasterPageContent_uniprice06_txt").val().trim());

		if($("#MasterPage_MasterPageContent_outqty07_txt").length==0)
			return;
		var outqty07 = $("#MasterPage_MasterPageContent_outqty07_txt").val().trim();
		if(isNaN(outqty07)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intoutqty07 = outqty07.length>0?parseFloat(outqty07):0;

		document.getElementById("MasterPage_MasterPageContent_outqty07_txt").value=Math.round(intoutqty07);
		intoutqty07 = parseFloat($("#MasterPage_MasterPageContent_outqty07_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice07_txt").length==0)
			return;
		var uniprice07 = $("#MasterPage_MasterPageContent_uniprice07_txt").val().trim();
		if(isNaN(uniprice07)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intuniprice07 = uniprice07.length>0?parseFloat(uniprice07):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice07_txt").value=parseFloat(intuniprice07).toFixed(4);
		intuniprice07 = parseFloat($("#MasterPage_MasterPageContent_uniprice07_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice08_txt").length==0)
			return;
		var uniprice08 = $("#MasterPage_MasterPageContent_uniprice08_txt").val().trim();
		if(isNaN(uniprice08)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intuniprice08 = uniprice08.length>0?parseFloat(uniprice08):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice08_txt").value=parseFloat(intuniprice08).toFixed(4);
		intuniprice08 = parseFloat($("#MasterPage_MasterPageContent_uniprice08_txt").val().trim());

		if($("#MasterPage_MasterPageContent_uniprice08_txt").length==0)
			return;
		var uniprice08 = $("#MasterPage_MasterPageContent_uniprice08_txt").val().trim();
		if(isNaN(uniprice08)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}
		var intuniprice08 = uniprice08.length>0?parseFloat(uniprice08):0;

		document.getElementById("MasterPage_MasterPageContent_uniprice08_txt").value=parseFloat(intuniprice08).toFixed(4);
		intuniprice08 = parseFloat($("#MasterPage_MasterPageContent_uniprice08_txt").val().trim());

		var finalvalue = intoutqty01*intuniprice01+intoutqty02*intuniprice02+intoutqty03*intuniprice03+intoutqty04*intuniprice04+intoutqty05*intuniprice05+intoutqty06*intuniprice06+intoutqty07*intuniprice07+intuniprice08*intuniprice08;
		if(finalvalue==undefined || !isFinite(finalvalue)){
			$("#MasterPage_MasterPageContent_totamt_txt").val("");
			return;
		}

		document.getElementById("MasterPage_MasterPageContent_totamt_txt").value=Math.round(finalvalue);
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
		var bResult = tw.com.dsc.easyflowDotNet.forms.ODMOUTCN01.ajaxDoDispatchForm(pFormID, pSheetNo, pDispatchFormID).value;
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


