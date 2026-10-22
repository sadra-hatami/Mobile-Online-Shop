<%@ Page Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminManageSells.aspx.cs" Inherits="AdminManageSells" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <table style="width: 552px">
                    <tr>
                        <td align="right" style="width: 100px">
                            <asp:Button ID="btnSearch" runat="server" CssClass="ddl" Text="نمایش" Width="90px" /></td>
                        <td align="right" style="width: 100px">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                        <td align="left" style="width: 100px">
                            <asp:Label ID="Label3" runat="server" Text=": تا تاریخ "></asp:Label></td>
                        <td align="right" style="width: 100px">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                        <td align="left" style="width: 100px">
                            <asp:Label ID="Label2" runat="server" Text=": از تاریخ "></asp:Label></td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align="center">
                <asp:GridView ID="dg" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                    CellPadding="4" DataKeyNames="fCode" DataSourceID="SqlDataSource1" ForeColor="#333333"
                    GridLines="None" Width="693px" OnSelectedIndexChanged="dg_SelectedIndexChanged">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:CommandField SelectText="&lt;img src=&quot;Images/delete.gif&quot;  border=&quot;0&quot;/&gt;"
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="fPrice" HeaderText="قیمت" SortExpression="fPrice" />
                        <asp:BoundField DataField="Namefamily" HeaderText="نام خریدار" ReadOnly="True" SortExpression="Namefamily" />
                        <asp:BoundField DataField="NameProduct" HeaderText="نام کالا" SortExpression="NameProduct" />
                        <asp:BoundField DataField="fDate" HeaderText="تاریخ" SortExpression="fDate" />
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBOnlineShopConnectionString %>"
                    DeleteCommand="DELETE FROM tSells WHERE (fCode = @Param1)" SelectCommand="SELECT tSells.fCode, tSells.fCodeUser, tSells.fCodeProduct, tSells.fDate, tSells.fPrice, tSells.fIsChecked, tUsers.fName + ' ' + tUsers.fFamily AS Namefamily, tProducts.fName AS NameProduct, tSells.fFishNumber, tSells.fBankName FROM tUsers INNER JOIN tSells ON tUsers.fCodeUsers = tSells.fCodeUser INNER JOIN tProducts ON tSells.fCodeProduct = tProducts.fCodeProducts WHERE (tSells.fDate >= @FromDate) AND (tSells.fDate <= @ToDate)" ProviderName="<%$ ConnectionStrings:DBOnlineShopConnectionString.ProviderName %>">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="dg" Name="Param1" PropertyName="SelectedValue" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="FromDate" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="ToDate" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp; &nbsp;
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align="center">
                &nbsp;</td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

