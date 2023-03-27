function applyConfirm()
{
    if (validateInputDate())
    {
    
    
        return true;
    }
    else
    {    
       return false;    
    }
}



function validateInputDate()
{

    var dateS = document.getElementById("MasterPage_MasterPageContent_efste004_txt").value;
    var dateE = document.getElementById("MasterPage_MasterPageContent_efste005_txt").value;
//    tw.com.dsc.easyflowDotNet.forms.STD003.JudgmentOwnershipdate(dateS,dateE);
    if ( dateS.substring(0,10) != dateE.substring(0,10))
    {
        //2008/12/16:SHIN:S00-9711004:新增如果有跨天..就打開efste008這個欄位
        //edit by elvis 2012/02/13 Start
        //document.getElementById("MasterPage_MasterPageContent_efste008_txt").disabled = false;
         document.getElementById("MasterPage_MasterPageContent_efste008_txt").readOnly="";
        //edit by elvis 2012/02/13 End
        document.getElementById("MasterPage_MasterPageContent_efste008_btn").disabled = false;
         
       
      
//        //錯誤!加班日期不允許跨天!
//        var errorMsg  = getI18NForSpecial('FD', 'STD003', 'errorMsg1', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
//        alert(errorMsg);
//        return false;
    }
    else
    {
       //edit by elvis 2012/02/13 Start
       //document.getElementById("MasterPage_MasterPageContent_efste008_txt").disabled = true;
       document.getElementById("MasterPage_MasterPageContent_efste008_txt").readOnly="readonly";
       //edit by elvis 2012/02/13 End
       document.getElementById("MasterPage_MasterPageContent_efste008_btn").disabled = true;
    
    }
    
    if ( dateE < dateS )
    {
        //錯誤!加班訖止時間必須大於加班起始時間!         
        var errorMsg  = getI18NForSpecial('FD', 'STD003', 'errorMsg2', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
        //2013/09/26:jarvis:3.5.3.1:A00-20130925002:修正查詢上下班時間時，應以「加班人員」為查詢對象(原先用登入者會有問題)↓
        ////edit by elvis 2013/01/02 Start
        //var Edate = tw.com.dsc.easyflowDotNet.forms.STD003.GetEndDate(dateS).value
        //document.getElementById("MasterPage_MasterPageContent_efste005_txt").value = Edate;
        ////edit by elvis 2013/01/02 End
        var strEmpID = document.getElementById("MasterPage_MasterPageContent_efste003_txt").value;
        var Edate = tw.com.dsc.easyflowDotNet.forms.STD003.GetEndDate(dateS,strEmpID).value

		//2021/12/20;hiro;3.6.6.4;A00-20211220001;修正日期時間驗證錯誤後，自動修改的截止日期時間仍有錯誤，導致一直跳出驗證錯誤的問題↓
		//document.getElementById("MasterPage_MasterPageContent_efste005_txt").value = Edate;
		if( dateE < dateS ){
			document.getElementById("MasterPage_MasterPageContent_efste005_txt").value = "";
		}
		else{
			document.getElementById("MasterPage_MasterPageContent_efste005_txt").value = Edate;
		}
		//2021/12/20;hiro;3.6.6.4;A00-20211220001;修正日期時間驗證錯誤後，自動修改的截止日期時間仍有錯誤，導致一直跳出驗證錯誤的問題↑

        //2013/09/26:jarvis:3.5.3.1:A00-20130925002:修正查詢上下班時間時，應以「加班人員」為查詢對象(原先用登入者會有問題)↑
        alert(errorMsg);

        return false;
    }   
    
    //edit by elvis 2013/01/02 Start    
    var bCheckHolidayWork=document.getElementById("MasterPage_MasterPageContent_efste009_chk").checked;
    
    if(!bCheckHolidayWork)
    {
    //edit by elvis 2013/01/02 End

        //2008/09/03:SHIN:A01-970903002修正小於上班時間的時間也算加班
        //2013/09/26:jarvis:3.5.3.1:A00-20130925002:修正查詢上下班時間時，應以「加班人員」為查詢對象(原先用登入者會有問題)↓
        //if (!tw.com.dsc.easyflowDotNet.forms.STD003.ValidateOverTime(dateS, dateE).value)
        var strEmpID= document.getElementById("MasterPage_MasterPageContent_efste003_txt").value;
        if (!tw.com.dsc.easyflowDotNet.forms.STD003.ValidateOverTime(dateS, dateE,strEmpID).value)
        //2013/09/26:jarvis:3.5.3.1:A00-20130925002:修正查詢上下班時間時，應以「加班人員」為查詢對象(原先用登入者會有問題)↑     
        {
            //錯誤!加班時間須大於行事曆所選日之下班時間
            var errorMsg  = getI18NForSpecial('FD', 'STD003', 'errorMsg3', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
            //2013/09/26:jarvis:3.5.3.1:A00-20130925002:修正查詢上下班時間時，應以「加班人員」為查詢對象(原先用登入者會有問題)↓
            ////edit by elvis 2013/01/02 Start
            //var Edate = tw.com.dsc.easyflowDotNet.forms.STD003.GetEndDate(dateS).value
            //document.getElementById("MasterPage_MasterPageContent_efste005_txt").value = Edate;
            ////edit by elvis 2013/01/02 End
            var Edate = tw.com.dsc.easyflowDotNet.forms.STD003.GetEndDate(dateS,strEmpID).value
            document.getElementById("MasterPage_MasterPageContent_efste005_txt").value = Edate;
            //2013/09/26:jarvis:3.5.3.1:A00-20130925002:修正查詢上下班時間時，應以「加班人員」為查詢對象(原先用登入者會有問題)↑
            alert(errorMsg);

            return false;
        }
    //edit by elvis 2013/01/02 Start
    }
    //edit by elvis 2013/01/02 End
    
    return true;

}





function countOverTimeHours()
{
    if ( validateInputDate() )
    {
        var dateS = document.getElementById("MasterPage_MasterPageContent_efste004_txt").value;
        var dateE = document.getElementById("MasterPage_MasterPageContent_efste005_txt").value;
        
        var overTimeHours = tw.com.dsc.easyflowDotNet.forms.STD003.CountOverTime(dateS,dateE).value;
        document.getElementById("MasterPage_MasterPageContent_efste006_txt").value = overTimeHours;
    }
}



 //2008/12/16:SHIN:S00-9711004:檢查歸屬日有沒有在起迄時間內!
function Check()
{
   
    var dateS = document.getElementById("MasterPage_MasterPageContent_efste004_txt").value;
    var dateE = document.getElementById("MasterPage_MasterPageContent_efste005_txt").value;
    var Ower= document.getElementById("MasterPage_MasterPageContent_efste008_txt").value;
    
    if((Ower <dateS.substring(0,10)) || (Ower> dateE.substring(0,10)))
    {
      
       var MSG  = getI18NForSpecial('FD', 'STD003', 'MSG', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
       //edit by elvis 2013/01/02 Start       
       document.getElementById("MasterPage_MasterPageContent_efste008_txt").value = dateS.substring(0,10);
       //edit by elvis 2013/01/02 End
       alert(MSG);
       return false;
    }
    
       return true;
}

//2008/12/20:3526:A01-971219003:加班時數為0時，彈出警告訊息並且不能送單
function WorkTime()
{
    if( document.getElementById("MasterPage_MasterPageContent_efste006_txt").value == "0" )
    {
        var errorMsg = getI18NForSpecial('FD', 'STD003', 'errorMsg4', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
        alert(errorMsg);
        return false;
    }
        return true;
}

//2009/01/15:育承:1.3.4.6:A01-980113002:當起始時間異動時歸屬日期跟著起始時間異動
function changeefste008()
{
    document.getElementById("MasterPage_MasterPageContent_efste008_txt").value = document.getElementById("MasterPage_MasterPageContent_efste004_txt").value.substring(0,10);
    //document.getElementById("MasterPage_MasterPageContent_efste005_txt").value = document.getElementById("MasterPage_MasterPageContent_efste004_txt").value;
}

//edit by elvis 2013/01/02 Start
function checkInCalendarRange()
{
	var bCheckHolidayWork=document.getElementById("MasterPage_MasterPageContent_efste009_chk").checked;

	var errorMsg = '';
	var dateS  = document.getElementById("MasterPage_MasterPageContent_efste004_txt").value.trim();
	var dateE  = document.getElementById("MasterPage_MasterPageContent_efste005_txt").value.trim();
	
	if(dateS.length==0 || dateE.length==0)
	{
		//如果沒有日期，就跳過檢查是不是在行事曆範圍內
		if(bCheckHolidayWork)
		{
			$('#DivNoteList').show('slow');
		}
		else
		{
			$('#DivNoteList').hide();
		}
		
		return true;
	}
	
	if ( validateInputDate() )
    {
        if(bCheckHolidayWork)
        {
			$('#DivNoteList').show('slow');
	    }
		else
		{
			$('#DivNoteList').hide();
			
			 var overTimeHours = tw.com.dsc.easyflowDotNet.forms.STD003.CountOverTime(dateS,dateE).value;
             document.getElementById("MasterPage_MasterPageContent_efste006_txt").value = overTimeHours;
		}
    }
    else
    {
        $('#DivNoteList').show('slow');
		return false;
    }	
		
	return true;
}
//edit by elvis 2013/01/02 End


function CheckIsFloat(pField) {
    if (document.getElementById(pField) != null) {
        var tFieldValue = document.getElementById(pField).value;
        if (tFieldValue == "") {
            document.getElementById(pField).value = 0;
            return true;
        }

        var errorMsg = '';
        var reg = /^\d+(?:\.\d+)?$/;	//只可輸入數字(含小數)
        if (!reg.test(tFieldValue)) {
            //數值格式不正確
            errorMsg = getI18NForSpecial('FD', 'STD002', 'MSG004', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');

            if (document.getElementById("MasterPage_MasterPageContent_efste009_chk").checked)
                document.getElementById(pField).value = "0";
            else
                checkInCalendarRange();

            alert(errorMsg);
            return false;
        }
        else {
            if (tFieldValue < 0) {
                //加班時數不可小於0！
                errorMsg = getI18NForSpecial('Message', 'STD003JS', 'MSG001', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');

                if (document.getElementById("MasterPage_MasterPageContent_efste009_chk").checked)
                    document.getElementById(pField).value = "0";
                else
                    checkInCalendarRange();

                alert(errorMsg);
                return false;
            }
        }
    }
    return true;
}