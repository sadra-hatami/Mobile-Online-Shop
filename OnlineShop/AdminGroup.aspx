<%@ Page Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminGroup.aspx.cs" Inherits="AdminGroup" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td>
            </td>
            <td>
                </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                        <table style="width: 542px; height: 100px">
                            <tr>
                                <td align="center" colspan="2">
                <asp:Label ID="Label1" runat="server" ForeColor="White" Font-Bold="True"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 65%">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtGroup"
                                        ErrorMessage="لطفا نام گروه را وارد نمایید"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtGroup" runat="server" CssClass="txt" Text='<%# Bind("fName") %>'
                                        Width="180px"></asp:TextBox></td>
                                <td align="left" style="width: 150px">
                                    <asp:Label ID="Label25" runat="server" Font-Bold="True" ForeColor="Maroon" Text=": نام گروه "></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2"><asp:Button ID="Cancel" runat="server" CssClass="ddl" Text="انصراف" Width="71px" OnClick="Cancel_Click" />
                                    <asp:Button ID="btnDelete" runat="server" CssClass="ddl" Text="حذف" Width="71px" OnClick="btnDelete_Click" />
                                    <asp:Button ID="btnInsert" runat="server" CssClass="ddl" Text="ذخیره" Width="71px" OnClick="btnInsert_Click" />&nbsp;
                                </td>
                            </tr>
                        </table>
                &nbsp;
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align="center">
                <asp:GridView ID="dg" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fCodeGroups"
                    ForeColor="#333333" GridLines="None" Width="429px" OnSelectedIndexChanged="dg_SelectedIndexChanged">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="fName" HeaderText="نام گروه" SortExpression="fName" />
                        <asp:BoundField DataField="fCodeGroups" HeaderText="کد گروه" InsertVisible="False"
                            ReadOnly="True" SortExpression="fCodeGroups">
                            <ItemStyle Width="90px" />
                        </asp:BoundField>
                        <asp:CommandField ButtonType="Image" HeaderText="انتخاب" SelectImageUrl="~/Images/opened.gif"
                            ShowSelectButton="True">
                            <ItemStyle Width="80px" />
                        </asp:CommandField>
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                &nbsp; &nbsp;
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

