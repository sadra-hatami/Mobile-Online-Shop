<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Basket.aspx.cs" Inherits="Basket" Title="Untitled Page" %>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataKeyNames="fCode" ForeColor="#333333" GridLines="None" Width="650px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="fPrice" HeaderText="قیمت" SortExpression="fPrice" />
                        <asp:BoundField DataField="fDate" HeaderText="تاریخ" SortExpression="fDate" />
                        <asp:BoundField DataField="fNameProduct" HeaderText="نام کالای خریداری شده" SortExpression="fNameProduct" />
                        <asp:BoundField DataField="fCodeProduct" HeaderText="کد کالا" SortExpression="fCodeProduct" />
                        <asp:CommandField ButtonType="Button" SelectText="حذف" ShowSelectButton="True" />
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                &nbsp; &nbsp; &nbsp; &nbsp;</td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 15px">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 15px">
                &nbsp;<asp:Label ID="Label1" runat="server" Text="لطفا شماره فیش پرداختی و بانک مربوطه را در این قسمت مشخص نمایید"></asp:Label><br />
                &nbsp;</td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="بانک صادرات">بانک صادرات حساب  سپهر شماره 003099896078</asp:ListItem>
                    <asp:ListItem Value="بانک پارسیان">بانک پارسیان حساب جاری شماره 66788987009</asp:ListItem>
                </asp:RadioButtonList></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtFish" runat="server" Width="271px"></asp:TextBox></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 10px">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="btnAccept" runat="server" CssClass="btn" Text="تایید نهایی سفارش"
                    Width="135px" OnClick="btnAccept_Click" /></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 20px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFish"
                    ErrorMessage="لطفا شماره فیش را وارد نمایید"></asp:RequiredFieldValidator></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 15px">
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

