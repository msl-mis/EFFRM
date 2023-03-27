<%@ page language="C#" autoeventwireup="true" inherits="src_RES_RESE011_editor_table, src.FRM.RESE011" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <%=headTitle1%></title>

    <script src="../../_Common/PlatformUtil/Resource/JS/BlackBox.js"></script>

    <style type="text/css">
        body, td
        {
            font-family: 細明體;
            font-size: 12px;
        }
        .cmdbtn
        {
            width: 45px;
            height: 20px;
        }
        .hole
        {
            font-family: arial;
            font-size: 10px;
            width: 24px;
            height: 18px;
            text-align: right;
        }
        div
        {
            cursor: default;
        }
    </style>

    <script language="javascript">

        var gPLProduct = 'EF';
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

        function TableClose()
        {
            if (gIsIEBrowser)
            {
                window.close();
            }
            else
            {
                parent.showDivDialogCallBack();
            }
        }

        function TableOK()
        {
            var dotable, tmpcol, tmprow, docol, dorow
            if (tba[0].checked) { algn = "left"; }
            if (tba[1].checked) { algn = "center"; }
            if (tba[2].checked) { algn = "right"; }

            tmpcol = "<td align=" + algn + "></td>";
            docol = ""
            dorow = ""
            for (var i = 0; i < tbc.value; i++)
            {
                docol = docol + tmpcol;
            }
            docol = "<tr>" + docol + "</tr>"
            for (var j = 0; j < tbr.value; j++)
            {
                dorow = dorow + docol;
            }
            dotable = "<table border=" + tbb.value + " cellspacing=" + document.getElementById('tbs').value + " cellpadding=" + document.getElementById('tbp').value + ">" + dorow + "</table>"
            if (gIsIEBrowser)
            {
                window.returnValue = dotable;
                window.close();
            }
            else
            {
                parent.showDivDialogCallBack(dotable);
            }

        }
    </script>

    <script language="VBScript">
    Sub TabStrip_Change()
    if (TabStrip.Value = 0) then
    Page1.style.visibility = "hidden"
    Page0.style.visibility = "visible"
    end if
    if (TabStrip.Value = 1) then
    Page0.style.visibility = "hidden"
    Page1.style.visibility = "visible"
    end if
    end sub
    </script>

</head>
<body bgcolor="buttonface" scroll="no" topmargin="5">
    <center>
        <div style="display: none">
            <object id="TabStrip" classid="clsid:eae50eb0-4a62-11ce-bed6-00aa00611080">
                <param name="ListIndex" value="0">
                <param name="NewVersion" value="-1">
                <param name="Size" value="4800;3000">
                <param name="FontHeight" value="180">
                <param name="FontName" value="細明體">
                <%--<param name="Items" value="一般設定;進階設定;">--%>
                <param name="Items" value="<%=strGeneral %>;<%=strAdvanced %>">
            </object>
        </div>
        <div id="Page0" style="visibility: visible; position: absolute; left: 12px; top: 30px;
            width: 180px; height: 80px; text-align: left;">
            <table border="0" cellpadding="0" cellspacing="2">
                <tr>
                    <td>
                        <%=Page0_1 %>
                    </td>
                    <td>
                        <input type="text" name="tbb" size="2" value="1" maxlength="2" onkeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;"
                            class="hole">
                    </td>
                    <td>
                        px
                    </td>
                </tr>
                <tr>
                    <td>
                        <%=Page0_2 %>
                    </td>
                    <td>
                        <input type="text" name="tbc" size="2" value="2" maxlength="2" onkeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;"
                            class="hole">
                    </td>
                    <td>
                        <%=Page0_2_Field %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%=Page0_3 %>
                    </td>
                    <td>
                        <input type="text" name="tbr" size="2" value="2" maxlength="2" onkeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;"
                            class="hole">
                    </td>
                    <td>
                        <%=Page0_3_row %>
                    </td>
                </tr>
            </table>
        </div>
        <div id="Page1" style="visibility: hidden; position: absolute; left: 12px; top: 30px;
            width: 180px; height: 80px; text-align: left;">
            <table border="0" cellpadding="0" cellspacing="2">
                <tr>
                    <td>
                        <%=Page1_1 %>
                    </td>
                    <td width="24">
                        <input type="text" id="tbs" name="tbs" size="2" maxlength="2" value="2" onkeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;"
                            class="hole">
                    </td>
                    <td width="85">
                        px
                    </td>
                </tr>
                <tr>
                    <td>
                        <%=Page1_2 %>
                    </td>
                    <td width="24">
                        <input type="text" id="tbp" name="tbp" size="2" maxlength="2" value="2" onkeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;"
                            class="hole">
                    </td>
                    <td>
                        px
                    </td>
                </tr>
                <tr>
                    <td>
                        <%=Page1_3 %>
                    </td>
                    <td colspan="2">
                        <input type="radio" name="tba" checked><%=Page1_3_left %><input type="radio" name="tba"><%=Page1_3_middle%><input
                            type="radio" name="tba"><%=Page1_3_right %>
                    </td>
                </tr>
            </table>
        </div>
        <div style="position: absolute; left: 10px; top: 128px; width: 170px; height: 80px;">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="50" align="center">
                        <input type="button" onclick="TableClose();" value="<%=Cancel %>" class="cmdbtn">
                    </td>
                    <td width="50" align="center">
                        <input type="button" onclick="TableOK();" value="<%=Finished %>" class="cmdbtn">
                    </td>
                </tr>
            </table>
        </div>
    </center>

    <script>
        window.setTimeout('TabStrip.blur()', 100);
    </script>

</body>
</html>
