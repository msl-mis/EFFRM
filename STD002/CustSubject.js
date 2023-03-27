function SetCustomSubject()
{
	var tSubjectVal='';
	var tSubjectTxt=document.getElementById("MasterPage_txtCreateToolSubject_txt").value;
	var tSubjectSelf='';
	tSubjectSelf+='請假人='+
$('#MasterPage_MasterPageContent_efstc003_txt').val();
	if(tSubjectVal.length>255){tSubjectVal=tSubjectVal.substring(0,255);}

	//如需啟用自訂主旨功能，請取消以下註解程式
	//$("#MasterPage_txtCreateToolSubject_txt").val(tSubjectVal);
}
