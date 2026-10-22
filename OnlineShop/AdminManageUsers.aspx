<%@ Page Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminManageUsers.aspx.cs" Inherits="AdminManageUsers" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td>
            </td>
            <td align="right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White">لیست اعضای سایت</asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align="center">
                <asp:GridView ID="dg" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" DataKeyNames="fCodeUsers" DataSourceID="SqlDataSource1" ForeColor="#333333"
                    GridLines="None"  Width="717px" AllowSorting="True" ShowHeader="False">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:CommandField DeleteText="&lt;img src=&quot;Images/Delete.gif&quot;  border =&quot;0&quot; /&gt;"
                            ShowDeleteButton="True" />
                        <asp:TemplateField HeaderText="لیست اعضاء" SortExpression="fName">
                            <EditItemTemplate>
                                &nbsp;
                            </EditItemTemplate>
                            <ItemTemplate>
                                <div style="text-align: center">
                                    <table style="border-right: #999999 thin dotted; border-top: #999999 thin dotted;
                                        border-left: #999999 thin dotted; width: 100%; border-bottom: #999999 thin dotted;
                                        height: 100%">
                                        <tr>
                                            <td>
                                                <strong>تلفن</strong></td>
                                            <td>
                                                <strong>ایمیل</strong></td>
                                            <td>
                                                <strong>نام کاربری</strong></td>
                                            <td>
                                                <strong>نام خانوادگی</strong></td>
                                            <td>
                                                <strong>نام</strong></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("fTell") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("fEmail") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("fUserName") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("fFamily") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("fName") %>'></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="4" style="height: 10px">
                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("fAddress") %>'></asp:Label></td>
                                            <td>
                                                <strong>: آدرس</strong></td>
                                        </tr>
                                        <tr>
                                            <td align="right" colspan="4" style="height: 10px">
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBOnlineShopConnectionString %>"
                    SelectCommand="SELECT * FROM [tUsers] ORDER BY [fFamily]" DeleteCommand="DELETE FROM [tUsers] WHERE [fCodeUsers] = @fCodeUsers" InsertCommand="INSERT INTO [tUsers] ([fName], [fFamily], [fTell], [fAddress], [fEmail], [fUserName], [fPassword]) VALUES (@fName, @fFamily, @fTell, @fAddress, @fEmail, @fUserName, @fPassword)" UpdateCommand="UPDATE [tUsers] SET [fName] = @fName, [fFamily] = @fFamily, [fTell] = @fTell, [fAddress] = @fAddress, [fEmail] = @fEmail, [fUserName] = @fUserName, [fPassword] = @fPassword WHERE [fCodeUsers] = @fCodeUsers">
                    <DeleteParameters>
                        <asp:Parameter Name="fCodeUsers" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="fName" Type="String" />
                        <asp:Parameter Name="fFamily" Type="String" />
                        <asp:Parameter Name="fTell" Type="String" />
                        <asp:Parameter Name="fAddress" Type="String" />
                        <asp:Parameter Name="fEmail" Type="String" />
                        <asp:Parameter Name="fUserName" Type="String" />
                        <asp:Parameter Name="fPassword" Type="String" />
                        <asp:Parameter Name="fCodeUsers" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="fName" Type="String" />
                        <asp:Parameter Name="fFamily" Type="String" />
                        <asp:Parameter Name="fTell" Type="String" />
                        <asp:Parameter Name="fAddress" Type="String" />
                        <asp:Parameter Name="fEmail" Type="String" />
                        <asp:Parameter Name="fUserName" Type="String" />
                        <asp:Parameter Name="fPassword" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp; &nbsp;
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

