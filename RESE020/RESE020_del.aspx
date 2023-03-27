
<%@ page language="C#" autoeventwireup="true" inherits="RESE020_del, src.FRM.RESE020" %>
<%@ Register Assembly="PlatformUtil" Namespace="tw.com.dsc.dscDotNet.dscWebControls"
    TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<script src="RESE020.js" type="text/javascript"></script>  

    <style type="text/css">
        .style1
        {
            font-size: small;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="DelLabel1" runat="server" Text="請選擇您要刪除的人員："></asp:Label>
        <br />
        <asp:DropDownList ID="Delddl1" runat="server">
            <asp:ListItem Selected="True" Value="resak001"></asp:ListItem>
            <asp:ListItem Value="resak002"></asp:ListItem>
            <asp:ListItem Value="resak015"></asp:ListItem>
            <asp:ListItem Value="resal002"></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="Delddl2" runat="server">
            <asp:ListItem Selected="True">LIKE</asp:ListItem>
            <asp:ListItem>&gt;</asp:ListItem>
            <asp:ListItem>&gt;=</asp:ListItem>
            <asp:ListItem>&lt;</asp:ListItem>
            <asp:ListItem>&lt;=</asp:ListItem>
            <asp:ListItem>=</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="SearchTxt" runat="server" Width="76px"></asp:TextBox>
        <asp:Button ID="DelSearchBtn" runat="server" onclick="SearchBtn_Click" 
            Text="查詢" />
        <br />
        <asp:LinkButton ID="DelLinkButton1" runat="server" Font-Size="Small">全選</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="DelLinkButton2" runat="server" Font-Size="Small">取消全選</asp:LinkButton>
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
        BorderWidth="1px" CellPadding="3" 
        OnPageIndexChanging="GridView1_PageIndexChanging" DataKeyNames="resak001" 
        onrowdatabound="GridView1_RowDataBound">
        <RowStyle ForeColor="#000066" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" type="checkbox" Name="CheckBox" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="resak001" HeaderText="員工代號" SortExpression="resak001" />
            <asp:BoundField DataField="resak002" HeaderText="員工姓名" SortExpression="resak002" />
            <asp:BoundField DataField="resak015" HeaderText="部門代號" SortExpression="resak015" />
            <asp:BoundField DataField="resal002" HeaderText="部門簡稱" SortExpression="resal002" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:Button ID="DelButton1" runat="server" Height="21px" Text="確認" 
        onclick="Button1_Click" />
    <asp:Button ID="DelButton2" runat="server" Height="21px" Text="取消" />
    <asp:HiddenField ID="Hid_1" runat="server" />
    </form>
</body>
</html>
