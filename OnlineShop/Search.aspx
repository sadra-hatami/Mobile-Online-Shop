<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td>
            </td>
            <td>
                <table style="width: 100%; height: 100%">
                    <tr>
                        <td>
                <img src="Images/viewmag.png" /></td>
                        <td>
                <table style="width: 440px">
                    <tr>
                        <td align="right" dir="rtl" style="width: 408px">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddl" DataSourceID="SqlDataSource1"
                                DataTextField="fName" DataValueField="fCodeGroups" Width="200px">
                            </asp:DropDownList></td>
                        <td align="left" style="width: 200px">
                            <asp:Label ID="Label88" runat="server" Text=": نام گروه "></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 408px">
                            <asp:TextBox ID="txtName" runat="server" CssClass="txt" Width="195px"></asp:TextBox></td>
                        <td align="left" style="width: 200px">
                            <asp:Label ID="Label8" runat="server" Text=": کلمه مورد جستجو"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 408px">
                        </td>
                        <td align="left" style="width: 200px; height: 15px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnSearch" runat="server" CssClass="btn" OnClick="btnSearch_Click"
                                Text="جستجو" Width="118px" /></td>
                    </tr>
                </table>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 10px">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="False">مشاهده سبد خرید</asp:LinkButton><asp:LinkButton
                    ID="Label9" runat="server" ForeColor="Maroon" OnClick="Label9_Click" ></asp:LinkButton></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 10px">
                <asp:Label ID="lbOk" runat="server" Font-Bold="True" ForeColor="#004000"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataKeyNames="fCodeProducts" DataSourceID="SqlDataSource2" ForeColor="#333333"
                    GridLines="None" Width="575px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="لیست کالاهای هر گروه" SortExpression="fName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table border="1" style="width: 100%; height: 100%">
                                    <tr>
                                        <td style="background-image: url(Images/back.gif); height: 12px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table style="width: 100%; height: 100%">
                                                <tr>
                                                    <td rowspan="3" style="width: 92px">
                                                        <asp:Image ID="Image1" runat="server" Height="77px" ImageUrl='<%# Eval("fImageName") %>'
                                                            Width="92px" /></td>
                                                    <td align="right" style="width: 85%">
                                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Bind("fName") %>'></asp:Label></td>
                                                    <td style="width: 15%">
                                                        <asp:Label ID="Label2" runat="server" ForeColor="Maroon" Text=": نام کالا"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 85%">
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("fDesc") %>'></asp:Label></td>
                                                    <td style="width: 15%">
                                                        <asp:Label ID="Label3" runat="server" ForeColor="Maroon" Text=": توضیحات"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 85%">
                                                        <table style="width: 100%; height: 100%">
                                                            <tr>
                                                                <td align="left">
                                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Select">اضافه به سبد خرید</asp:LinkButton></td>
                                                                <td align="right">
                                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("fPrice") %>'></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="width: 15%">
                                                        <asp:Label ID="Label4" runat="server" ForeColor="Maroon" Text=": قیمت"></asp:Label>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBOnlineShopConnectionString %>"
                    SelectCommand="SELECT * FROM [tGroups] ORDER BY [fName]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBOnlineShopConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:DBOnlineShopConnectionString.ProviderName %>">
                </asp:SqlDataSource>
                &nbsp;
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

