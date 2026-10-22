<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="Style.css" rel="stylesheet" type="text/css" />
    <link href="StyleMenu.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 765px; height: 100%; background-image: url(Images/back_right1.jpg);">
            <tr>
                <td height="95">
                    <table cellpadding="0" cellspacing="0" style="width: 100%; height: 100%; background-image: url(Images/back_right1.jpg);">
                        <tr>
                            <td align="left" style="background-image: url(Images/bb.jpg); width: 100%">
                            </td>
                            <td align="right">
                                <img src="Images/MainLogoadmin.jpg" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" background="Images/back.gif" style="height: 20px">
                    <span style="color: #ffffff">ورود به بخش مدیریت سایت</span></td>
            </tr>
            <tr>
                <td align="center">
                    <div align="center" style="text-align: center">
                        <table style="width: 100%; height: 400px">
                            <tr>
                                <td align="center">
                                    &nbsp;&nbsp;
                                    <table>
                                        <tr>
                                            <td align="center">
                                                <table style="width: 100%">
                                                    <tr>
                                                        <td align="center" colspan="2">
                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:TextBox ID="txtUserName" runat="server" Width="139px"></asp:TextBox></td>
                                                        <td align="left">
                                                            <asp:Label ID="Label1" runat="server" Text=": نام کاربری"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="139px"></asp:TextBox></td>
                                                        <td align="left">
                                                            <asp:Label ID="Label2" runat="server" Text=": کلمه عبور"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td height="12">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2">
                                                            <asp:Button ID="btnLogin" runat="server" CssClass="btn" OnClick="btnLogin_Click"
                                                                Text="ورود به بخش مدیریت" Width="130px" /></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="height: 50px">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass"
                                                    Display="None" ErrorMessage="کلمه عبور را وارد نمایید"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                                                    Display="None" ErrorMessage="لطفا نام کاربری را وارد نمایید"></asp:RequiredFieldValidator></td>
                                        </tr>
                                    </table>
                                    &nbsp;
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                        ShowSummary="False" />
                                </td>
                            </tr>
                        </table>
                        &nbsp;&nbsp;
                    </div>
                </td>
            </tr>
            <tr>
                <td align="center" valign="top">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
