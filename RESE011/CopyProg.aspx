<%@ page language="C#" autoeventwireup="true" inherits="tw.com.dsc.easyflowDotNet.program.BOARD01.CopyProg, src.PRM.BOARD001" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <base target="_self" />
    <script src="BOARD001.js"></script>
</head>
<body leftmargin="0" topmargin="0" scroll="no">
    <form id="CopyProgForm" runat="server">
    <div>
        <table width="100%" cellpadding="0" cellspacing="0" style="BORDER-STYLE: outset; BORDER-WIDTH: 2;BACKGROUND-COLOR: #C0C0C0;">
            <tr bgcolor="#99CCFF">
                <td align="center" width="100%">
                    <asp:Label ID="CopyProgTitle" runat="server" Font-Size="10pt" Text="複製程式權限"></asp:Label>
                </td>
            </tr>
            <tr bgcolor="#CCCCCC">
                <td align="center" width="100%">
                    <asp:RadioButtonList ID="ChooseType" Font-Size="10pt" AutoPostBack="false" RepeatDirection="Vertical" runat="server">
                        <asp:ListItem Text="複製給全部訊息" Value="0" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="選擇其它訊息" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr bgcolor="#CCCCCC">
                <td align="center" width="100%" style="padding-top:5px; padding-bottom:5px;">
                    <input id="btnDecide" type="button" value="確定" onclick="CopyProgDecide('ChooseType')" runat="server" />
                    <input id="btnCancel" type="button" value="取消" onclick="window.close()" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
