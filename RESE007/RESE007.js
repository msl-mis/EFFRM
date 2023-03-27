//單頭自訂驗證
function CustomerSaveCheck(tStatus)
{
    var tErr = "";
    var tMsg = "";
    var tEndErrMsg = getI18NForSpecial('PSMSG', 'RequriedFieldNotFilled', '1', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
        
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

//單身自訂驗證
function CustomerDetailSaveCheck(tStatus)
{
    var tErr = "";
    var tMsg = "";
    var tEndErrMsg = getI18NForSpecial('PSMSG', 'RequriedFieldNotFilled', '1', '../../_Common/PlatFormUtil/KernelPage/I18N/I18NForJs.aspx');
    
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

