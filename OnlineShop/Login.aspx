<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 100%">
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
            <td>
                &nbsp;</td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 30px">
                <strong>ورود به سایت</strong></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <img src="Images/signin.png" /></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 100px">
                <div style="text-align: center">
                    <asp:Label ID="Label3" runat="server" ForeColor="#C00000"></asp:Label>
                    <table style="width: 336px">
                        <tr>
                            <td align="right">
                            </td>
                            <td align="left">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:TextBox ID="txtUserName" runat="server" Width="190px"></asp:TextBox></td>
                            <td align="left">
                                <asp:Label ID="Label2" runat="server" Text=": نام کاربری "></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="190px"></asp:TextBox></td>
                            <td align="left">
                                <asp:Label ID="Label1" runat="server" Text=": کلمه عبور"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="right">
                            </td>
                            <td align="left">
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="btnLogin" runat="server" CssClass="btn" OnClick="btnLogin_Click"
                                    Text="ورود" Width="79px" /></td>
                            <td align="left">
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 100px">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="height: 50px">
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

