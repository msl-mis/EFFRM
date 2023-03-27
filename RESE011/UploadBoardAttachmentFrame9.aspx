<%@ page language="C#" autoeventwireup="true" inherits="tw.com.dsc.easyflowDotNet.program.UploadAttachmentFrame9, src.FRM.RESE011" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">

        function showDivDialogCallBack()
        {
            parent.showDivDialogCallBack();
        }

        function doChromeCallback()
        {            
            parent.showDivDialogCallBack('Y');
        }
    
    
     function init()
     {         
        var frame = document.getElementById('basePage');
        var obj = window.dialogArguments;
        if ( obj != undefined && obj != '')
        {
            //有傳參數代表是一般使用(只能下載)
            frame.src = 'UploadBoardAttachment9.aspx?boardId=' + obj + '&guid=' + guid(); 
        }
        else
        {   //沒傳參數代表是維護
            frame.src = 'UploadBoardAttachment9.aspx?guid=' + guid(); ;
        }
    }



    function guid()
    {
        function s4()
        {
            return Math.floor((1 + Math.random()) * 0x10000)
      .toString(16)
      .substring(1);
        }
        return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
    s4() + '-' + s4() + s4() + s4();
    }
    </script>
</head>
<body onload="init();">
    <form id="form1" runat="server">
    <div>
		<!--2011/01/04:3.2.1.6:hiro:Q00-20110104002:附件上傳頁面增加Scrolbar↓-->
		<!--iframe id="basePage" width="100%" height="1200px" src='' frameborder="0"-->
		<iframe id="basePage" width="100%" height="500px" src='' frameborder="0" style="overflow-x: hidden; overflow-y: auto;">
		<!--2011/01/04:3.2.1.6:hiro:Q00-20110104002:附件上傳頁面增加Scrolbar↑-->
	    </iframe>
    </div>
    </form>
</body>
</html>
