//S00-9603005↓
function ShowWindow(win,style)
{
	var tUniId = document.getElementById("universalID").value;
	//window.showModalDialog(win +'?uniId='+tUniId,'',style);
	winshowModalDlg(win +'?uniId='+tUniId,style);
}
//S00-9603005↑

//檢查日期函式
//20061020 MOD 3.5.00064 3.05.08 2634臧世蓉 : 修改MAIL，支援WebConfig定義發送Mail是否要Socket驗證
function validateDate(componentID,errorMsg)
{
	var dateStr = document.getElementById(componentID).value;
	var patent = /^\d{4}\/\d{2}\/\d{2}$/;
	if (dateStr == "")
	{
		return;
	}
	else
	{
		date = new Date(dateStr);
		if(date.toString() == "Invalid Date" || date.toString() == "NaN")
		{
			alert(errorMsg);
			document.getElementById(componentID).value = "";
			document.getElementById(componentID).focus();
			return;
		}
		if (dateStr.match(patent) == null)
		{
			alert(errorMsg);
			document.getElementById(componentID).value = "";
			document.getElementById(componentID).focus();
			return;
		}
		var Year = date.getFullYear();
		var Month = date.getMonth()+1;
		var Day = date.getDate();
		var checkDay = Year + "/" + Month + "/" + Day;
		if(dateStr != checkDay)
		{
			alert(errorMsg);
			document.getElementById(componentID).value = "";
			document.getElementById(componentID).focus();
			return;
		}
	}
}

//檢查開始與截止日期函式
function validateCompareDate(startComponentID,endComponentID,errorMsg)
{
	var startDate = document.getElementById(startComponentID).value;
	var endDate = document.getElementById(endComponentID).value;
	if(startDate != "")
	{
		if(endDate != "")
		{
			if (startDate > endDate)
			{
				document.getElementById(endComponentID).value = "";
				document.getElementById(endComponentID).focus();
				alert(errorMsg);
			}
		}
	}
}

//檢查數字函式
function validateNumber(componentID,errorMsg)
{
	var number = document.getElementById(componentID).value;
	if (number != "")
	{
		if (isNaN(number))
		{
			document.getElementById(componentID).value = "";
			document.getElementById(componentID).focus();
			alert(errorMsg);
		}
	}
}

//檢查開始與結束數字函式
function validateCompareNumber(startComponentID,endComponentID,errorMsg)
{
	var startNumber = document.getElementById(startComponentID).value;
	var endNumber = document.getElementById(endComponentID).value;
	if(startNumber != "")
	{
		if(endNumber != "")
		{
			if (parseFloat(startNumber) > parseFloat(endNumber))
			{
				document.getElementById(endComponentID).value = "";
				document.getElementById(endComponentID).focus();
				alert(errorMsg);
			}
		}
	}
}

//檢查輸入值函式
function validateInput(msg,dateMsg)
{
	var isRB1Checked = document.getElementById("rbl1_rdbl_0").checked;
	var isRB2Checked = document.getElementById("rbl1_rdbl_1").checked;
	if (isRB1Checked || isRB2Checked)
	{
		var mailServer = document.getElementById("ed01_txt").value;
		var mailAccount = document.getElementById("ed10_txt").value;
		var mailPsw = document.getElementById("ed11_txt").value;
		var mailAddress = document.getElementById("ed02_txt").value;
		var mailFrom = document.getElementById("ed03_txt").value;
		var mailTitle = document.getElementById("ed08_txt").value;
		var mailContent = document.getElementById("emailContentHiddent").value;
		var isValidation = true;
		var errorMsg = "";
		msg = "  " + msg;
		//20061020 MOD 3.5.00064 3.05.08 2634臧世蓉 : 修改MAIL，支援WebConfig定義發送Mail是否要Socket驗證
		if(document.getElementById("hdnIfMailSocket_txt").value == "true")
		{
			if (mailServer == "")
			{
				errorMsg += document.getElementById("ed01_lbl").innerText + msg + "\n";
				isValidation = false;
			}
			if (mailAccount == "")
			{
				errorMsg += document.getElementById("ed10_lbl").innerText + msg + "\n";
				isValidation = false;
			}
			if (mailPsw == "")
			{
				errorMsg += document.getElementById("ed11_lbl").innerText + msg + "\n";
				isValidation = false;
			}
		}
		if (mailAddress == "")
		{
			errorMsg += document.getElementById("ed02_lbl").innerText + msg + "\n";
			isValidation = false;
		}
		if (mailFrom == "")
		{
			errorMsg += document.getElementById("ed03_lbl").innerText + msg + "\n";
			isValidation = false;
		}
		if (mailTitle == "")
		{
			errorMsg += document.getElementById("ed08_lbl").innerText + msg + "\n";
			isValidation = false;
		}
		if (mailContent == "")
		{
			errorMsg += document.getElementById("lblEmailContent").innerText + msg + "\n";
			isValidation = false;
		}
		isChecked = document.getElementById("cbControlFunction_chk").checked;
		if (isChecked == true)
		{
			tHour = document.getElementById("ddlHour").options[document.getElementById("ddlHour").selectedIndex].value;
			tMinute = document.getElementById("ddlMinute").options[document.getElementById("ddlMinute").selectedIndex].value;
			tSecond = document.getElementById("ddlSecond").options[document.getElementById("ddlSecond").selectedIndex].value;
			tInputDate = new Date();
			tInputDate.setHours(tHour,tMinute,tSecond);
			tDate = new Date();
			if (tInputDate < tDate)
			{
				errorMsg += dateMsg + "\n";
				isValidation = false;
			}
		}
		if (! isValidation)
		{
			alert(errorMsg);
		}
		event.returnValue = isValidation;
		return isValidation;
	}
}

//若沒勾選定時寄送時,則取消時間選擇的功能
function validateCbControlFunction()
{
	var isChecked = document.getElementById("cbControlFunction_chk").checked;
	if (isChecked == true)
	{
		document.getElementById("ddlHour").disabled = "";
		document.getElementById("ddlMinute").disabled = "";
		document.getElementById("ddlSecond").disabled = "";
	}
	else
	{
		document.getElementById("ddlHour").selectedIndex = 0;
		document.getElementById("ddlMinute").selectedIndex = 0;
		document.getElementById("ddlSecond").selectedIndex = 0;
		document.getElementById("ddlHour").disabled = "disabled";
		document.getElementById("ddlMinute").disabled = "disabled";
		document.getElementById("ddlSecond").disabled = "disabled";
	}
}

// 保留密碼的值
function keepPswValue()
{
	document.getElementById("hiddenPsw").value = document.getElementById("ed11_txt").value;
}

// 設定密碼的值
function setPswValue()
{
	document.getElementById("ed11_txt").value = document.getElementById("hiddenPsw").value;
}

// Mail編輯器使用的函式
function BtnOver(btn)
{
	btn.style.borderTopColor="#efece8";
	btn.style.borderBottomColor="#888070";
	btn.style.borderLeftColor="#efece8";
	btn.style.borderRightColor="#888070";
}

function BtnClick(btn)
{
	btn.style.borderTopColor="#888070";
	btn.style.borderBottomColor="#efece8";
	btn.style.borderLeftColor="#888070";
	btn.style.borderRightColor="#efece8";
}

function BtnOut(btn)
{
	btn.style.borderColor="#d9cec4";
}

function doCut()
{
	doc.execCommand('Cut');
	Editor.focus();
}

function doCopy()
{
	doc.execCommand('Copy');
	Editor.focus();
}

function doPaste()
{
	doc.execCommand('Paste');
	Editor.focus();
}

function doUndo()
{
	doc.execCommand('Undo');
	Editor.focus();
}

function doRedo()
{
	doc.execCommand('Redo');
	Editor.focus();
}

function doDelete()
{
	doc.execCommand('Delete');
	Editor.focus();
}

function doFontName(fn)
{
	doc.execCommand('FontName', false, fn);
	Editor.focus();
}

function doFontSize(fs)
{
	doc.execCommand('FontSize', false, fs);
	Editor.focus();
}

function doBold()
{
	doc.execCommand('Bold');
	Editor.focus();
}

function doItalic()
{
	doc.execCommand('Italic');
	Editor.focus();
}

function doUnderline()
{
	doc.execCommand('Underline');
	Editor.focus();
}

function doStrikeThrough()
{
	doc.execCommand('StrikeThrough');
	Editor.focus();
}

function doSubscript()
{
	doc.execCommand('Subscript');
	Editor.focus();
}

function doSuperscript()
{
	doc.execCommand('Superscript');
	Editor.focus();
}

function doJustifyLeft()
{
	doc.execCommand('JustifyLeft');
	Editor.focus();
}

function doJustifyRight()
{
	doc.execCommand('JustifyRight');
	Editor.focus();
}

function doJustifyCenter()
{
	doc.execCommand('JustifyCenter');
	Editor.focus();
}

function doIndent()
{
	doc.execCommand('Indent');
	Editor.focus();
}

function doOutdent()
{
	doc.execCommand('Outdent');
	Editor.focus();
}

function doForeColor()
{
	var fcolor=showModalDialog("./Editor/editor_color.htm",false,"dialogWidth:110px;dialogHeight:135px;status:0;");
	doc.execCommand('ForeColor',false,fcolor);
	Editor.focus();
}

function doBackColor()
{
	var bcolor=showModalDialog("./Editor/editor_color.htm",false,"dialogWidth:110px;dialogHeight:135px;status:0;");
	doc.execCommand('BackColor',false,bcolor);
	Editor.focus();
}

function doInsertTable()
{
	var dotable=showModalDialog("./Editor/editor_table.htm",false,"dialogWidth:205px;dialogHeight:160px;status:0;");
	if (dotable!=undefined)
	{
		doc.body.innerHTML=doc.body.innerHTML+dotable;
	}
	else
	{
		return false;
	}
	Editor.focus();
}

function doInsertOrderedList()
{
	doc.execCommand('InsertOrderedList');
	Editor.focus();
}

function doInsertUnorderedList()
{
	doc.execCommand('InsertUnorderedList');
	Editor.focus();
}

function doCreateLink()
{
	doc.execCommand('CreateLink');
	Editor.focus();
}

function doInsertImage(pGuid)
{
	var path = showModalDialog("./Editor/editor_page2.aspx?URL=./editor_file2.aspx?guid=" + pGuid,false,"dialogWidth:250px;dialogHeight:150px;status:0;");
	path = unescape(path);
	path = path.replace(/-/g,"\\");
	if (path != undefined || path != "" || path != "undefined")
	{
		doc.body.innerHTML=doc.body.innerHTML + path;
	}
	else
	{
		return false;
	}
	Editor.focus();
	//Editor.focus();
	//doc.execCommand('InsertImage','xxx');
}

function doInsertInputButton()
{
	Editor.focus();
	doc.execCommand('InsertInputButton');
}

function doInsertHorizontalRule()
{
	Editor.focus();
	doc.execCommand('InsertHorizontalRule');
}

function doInsertInputCheckbox()
{
	Editor.focus();
	doc.execCommand('InsertInputCheckbox');
}

function doInsertInputRadio()
{
	Editor.focus();
	doc.execCommand('InsertInputRadio');
}

function doInsertInputText()
{
	Editor.focus();
	doc.execCommand('InsertInputText');
}

function doInsertInputPassword()
{
	Editor.focus();
	doc.execCommand('InsertInputPassword');
}

function doInsertInputSubmit()
{
	Editor.focus();
	doc.execCommand('InsertInputSubmit');
	ShowMessage();
}

function doInsertInputReset()
{
	Editor.focus();
	doc.execCommand('InsertInputReset');
	ShowMessage();
}

function doInsertMarquee()
{
	Editor.focus();
	doc.execCommand('InsertMarquee');
	ShowMessage();
}

function doInsertSelectDropdown()
{
	Editor.focus();
	doc.execCommand('InsertSelectDropdown');
}

function doInsertTextArea()
{
	Editor.focus();
	doc.execCommand('InsertTextArea');
}

function doOpen()
{
	doc.execCommand('Open');
	Editor.focus();
}

function mailTextChange()
{
	//var doc = document.frames.Editor.document.body.innerHTML;
	document.getElementById("emailContentHiddent").value = doc.body.innerHTML;
}

function initialEditor()
{
	var mailValue = document.getElementById("emailContentHiddent").value;
	document.frames.Editor.document.body.innerHTML = mailValue;
}

//Q00-970507001↓
//驗證MAIL格式
function checkEmail(pId)
{
	var pValue = document.getElementById(pId).value;
	if (pValue.length >0)
	{
		i=pValue.indexOf("@");
 		if (i>0)							//修改Mail伺服器判斷有@符號即可寄信
 		{
 			return true;
 		}
 		else
 		{
 			var tMsgCode = getI18N('FD','InputMail','MailErrorMsg');
			alert(tMsgCode);
 			document.getElementById(pId).value = "";
			return false;
 		}
 	}
 }
//Q00-970507001↑
