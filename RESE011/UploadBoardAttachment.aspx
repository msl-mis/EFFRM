<%@ page language="c#" enableeventvalidation="false" autoeventwireup="false" inherits="tw.com.dsc.easyflowDotNet.program.UploadAttachment, src.FRM.RESE011" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head runat="server">
    <title>附件上傳</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="../../_common/css/EasyFlow.css" type="text/css" rel="stylesheet" />
    <script src="UploadBoardAttachment.js" type="text/javascript"></script>
</head>
<body class="badybg3" onunload="SetRowCount();">
    <form id="Form1" method="post" runat="server">
        <asp:Panel ID="PanelUpload" runat="server" Height="50px" Width="350px">
            <table >
                <tr>
                    <td>
                        <asp:ImageButton ID="btnOpenUpload" runat="server" ImageUrl="../../_Common/AppUtil/Themes/images/Public/ImgUpLoad.gif"
                            PostBackUrl="UploadBoardAttachment.aspx" OnClick="btnOpenUpload_Click"></asp:ImageButton></td>
                    <td id="Msg1" runat="server" align="center" style="width: 275px">
                        請按下左方的圖示來選擇要上傳的檔案</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:TextBox ID="hdnCount" runat="server" Style="z-index: 102; left: 360px; position: absolute;
            top: 39px" Width="0px"></asp:TextBox>
        <table >
            <tr>
                <td>
                    <div id="FileGridBlock" style="width: 100%;" runat="server">
                        <asp:DataGrid ID="gridAttachment" runat="server" AutoGenerateColumns="False"
                            BorderStyle="Solid" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                            Width="560px" OnItemDataBound="DataGrid1_ItemDataBound" OnItemCommand="gridAttachment_ItemCommand">
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <AlternatingItemStyle BackColor="#F6F1F4" Font-Size="10pt" />
                            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" Font-Size="10pt" />
                            <HeaderStyle CssClass="Tilteline" Wrap="False" VerticalAlign="Middle" HorizontalAlign="Center" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <Columns>
                                <asp:BoundColumn DataField="id" HeaderText="No." Visible="False">
                                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Center" />
                                </asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imgBtnDelete" runat="server" ImageUrl="~/src/_Common/PIC/EasyFlow/ToolBar/dg_delete.gif"
                                            CommandName="Delete" Height="17px" />
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Center" />
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="FileName">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="linkBtnFileName" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Center" />
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Left" />
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="size" HeaderText="FileSize">
                                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Center" />
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Right" />
                                </asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="ModifyDate">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" ID="tbxModifyDate" Text='<%# DataBinder.Eval(Container, "DataItem.modifyDate") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblModifyDate" Text='<%# DataBinder.Eval(Container, "DataItem.modifyDate") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                        Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                                </asp:TemplateColumn>
                            </Columns>
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" Mode="NumericPages" />
                        </asp:DataGrid>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Msg" runat="server"></asp:Label>
                    <input id="hdnNewUploadFiles" type="hidden" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    <input id="btnClose" value="關閉視窗" type="button" onclick="window.close();" runat="server" class="efbtn" />
                </td>
            </tr>
        </table>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </form>
</body>
</html>
