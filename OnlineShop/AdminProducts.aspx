<%@ Page Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminProducts.aspx.cs" Inherits="AdminProducts" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td align="center" colspan="2">
                &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 607px" dir="rtl">
                <asp:DropDownList ID="ddlGroups" runat="server" CssClass="ddl" DataSourceID="SqlDataSource1"
                    DataTextField="fName" DataValueField="fCodeGroups" AutoPostBack="True" Width="180px">
                </asp:DropDownList>&nbsp;
                <asp:Button ID="btnShow" runat="server" CausesValidation="False" CssClass="ddl" OnClick="btnShow_Click"
                    Text="نمایش" Width="57px" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBOnlineShopConnectionString %>"
                    SelectCommand="SELECT * FROM [tGroups] ORDER BY [fName]"></asp:SqlDataSource>
                &nbsp; &nbsp;
            </td>
            <td align="left">
                <asp:Label ID="Label5" runat="server" Text=": نام گروه "></asp:Label>&nbsp;
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                </td>
        </tr>
        <tr>
            <td align="right" style="width: 607px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    Display="None" ErrorMessage="لطفا نام محصول را وارد نمایید"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtName" runat="server" CssClass="txt" Width="180px"></asp:TextBox></td>
            <td align="left">
                <asp:Label ID="Label1" runat="server" Text=": نام "></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 607px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice"
                    Display="None" ErrorMessage="قیمت را وارد نمایید"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="txt"  
                    Width="180px"></asp:TextBox></td>
            <td align="left">
                <asp:Label ID="Label2" runat="server" Text=": قیمت"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" dir="rtl" style="width: 607px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="270px" /></td>
            <td align="left">
                <asp:Label ID="Label4" runat="server" Text=": تصویر"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 607px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDesc"
                    Display="None" ErrorMessage="توضیحات را وارد نمایید"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtDesc" runat="server" CssClass="txt" 
                    TextMode="MultiLine" Width="300px"></asp:TextBox></td>
            <td align="left" valign="top">
                <asp:Label ID="Label3" runat="server" Text=": توضیحات"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 607px">
            </td>
            <td align="left" valign="top">
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 607px">
                <asp:Button ID="Cancel" runat="server" CssClass="ddl" OnClick="Cancel_Click" Text="انصراف"
                    Width="71px" CausesValidation="False" /><asp:Button ID="btnDelete" runat="server" CssClass="ddl" OnClick="btnDelete_Click"
                        Text="حذف" Width="71px" CausesValidation="False" /><asp:Button ID="btnInsert" runat="server" CssClass="ddl"
                            OnClick="btnInsert_Click" Text="ذخیره" Width="71px" /></td>
            <td align="left" valign="top">
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 607px">
            </td>
            <td align="left" valign="top">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="dg" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                    CellPadding="4" DataKeyNames="fCodeProducts" ForeColor="#333333" GridLines="None"
                    Width="631px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="fDesc" HeaderText="توضیحات" SortExpression="fDesc" >
                            <ItemStyle Width="400px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="fPrice" HeaderText="قیمت" SortExpression="fPrice">
                            <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="fName" HeaderText="نام " SortExpression="fName">
                            <ItemStyle Width="130px" />
                        </asp:BoundField>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/Images/opened.gif" SelectText="انتخاب"
                            ShowSelectButton="True">
                            <ItemStyle Width="50px" />
                        </asp:CommandField>
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 15px">
            </td>
        </tr>
    </table>
</asp:Content>

