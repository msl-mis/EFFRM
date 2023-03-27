if (typeof (gIsIEBrowser) == "undefined")
{
    var ua = navigator.userAgent.toLowerCase();
    if (ua.match(/rv:([\d.]+)\) like gecko/) != null || ua.match(/msie ([\d.]+)/) != null)
    {
        gIsIEBrowser = true;
    }
    else
    {
        gIsIEBrowser = false;
    }
}


function ADDAction()
{
    if (gIsIEBrowser)
    {
        ADDAction_IE();
    }
    else
    {
        ADDAction_Chrome();
    }

}


function ADDAction_IE()
{
    //alert("ADDAction");
    var tdialogHeight = 100;
    var tdialogWidth = 390;
    var tdialogTop = (screen.height - tdialogHeight) / 2;
    var tdialogLeft = (screen.width - tdialogWidth) / 2;
    var tStyle = " dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No; scroll:No;";
    var tReturnValue = window.showModalDialog("UploadBoardAttachmentPage9.aspx", "", tStyle);
    if (!tReturnValue)
    {
        event.returnValue = false;
    }
}


function ADDAction_Chrome()
{
    var tdialogHeight = 100;
    var tdialogWidth = 390;
    var tdialogTop = (screen.height - tdialogHeight) / 2;
    var tdialogLeft = (screen.width - tdialogWidth) / 2;
    var tStyle = " dialogTop:" + tdialogTop + "px; dialogLeft:" + tdialogLeft + "px; dialogHeight:" + tdialogHeight + "px; dialogWidth:" + tdialogWidth + "px; edge: Sunken; center: No; help: No; resizable: No; status: No; scroll:No;";
    showDivDialog("UploadBoardAttachmentPage9.aspx", "", tStyle, ADDAction_Chrome_callback, true);
    return;

    function ADDAction_Chrome_callback()
    {
        return gCallbackReturnValue;
    }
}




function getNewFiles()
{
    document.getElementById("hdnNewUploadFiles").value = window.dialogArguments.getElementById("MasterPage_hdnNewUploadFiles").value;
    var tTable = document.getElementById("DataGrid1");
    var tRowCount = tTable.rows.length;
    var tNewImages = new Array();
    tNewImages = document.getElementById("hdnNewUploadFiles").value.split("$");
    for (var i = 1; i < tRowCount; i++)
    {
        for (var j = 0; j < tNewImages.length; j++)
        {
            if (tNewImages[j] != "")
            {
                if (tTable.rows[i].cells[0].innerText == tNewImages[j])
                {
                    tTable.rows[i].cells[1].children[0].disabled = false;
                    tTable.rows[i].cells[1].children[0].src = tTable.rows[i].cells[1].children[0].src.replace("dg_delete2.gif", "dg_delete.gif");
                }
            }
        }
    }
}

function SetRowCount()
{
    //    window.dialogArguments.getElementById("MasterPage_hdnNewUploadFiles").value = document.getElementById("hdnNewUploadFiles").value;
    //    window.returnValue= document.getElementById("hdnCount").value;
}