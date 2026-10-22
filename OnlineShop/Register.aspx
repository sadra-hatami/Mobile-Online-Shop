<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td colspan="3" style="height: 10px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label5" runat="server" ForeColor="#C00000"></asp:Label>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20%">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                    ShowSummary="False" />
            </td>
            <td>
                <table border="0" style="font-size: 100%; font-family: Verdana">
                    <tr>
                        <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #507cd1">
                            <span style="font-size: 10pt">عضویت در سایت</span></td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                Display="None" ErrorMessage="لطفا نام را وارد نمایید"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtName" runat="server" CssClass="txt" Width="170px"></asp:TextBox></td>
                        <td align="left">
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName" CssClass="lbl">: نام </asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFamily"
                                Display="None" ErrorMessage="نام خانوادگی را وارد نمایید"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtFamily" runat="server" CssClass="txt" Width="170px"></asp:TextBox></td>
                        <td align="left">
                            <asp:Label ID="Label2" runat="server" AssociatedControlID="UserName" CssClass="lbl">: نام خانوادگی</asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UserName"
                                Display="None" ErrorMessage="نام کاربری را وارد نمایید"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="UserName" runat="server" Width="170px"></asp:TextBox></td>
                        <td align="left">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="lbl">: نام کاربری </asp:Label>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Password"
                                Display="None" ErrorMessage="کلمه عبور را وارد نمایید"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="170px"></asp:TextBox></td>
                        <td align="left">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" CssClass="lbl">: کلمه عبور </asp:Label>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password"
                                ControlToValidate="ConfirmPassword" Display="None" ErrorMessage="کلمه عبور با تکرار آن مطابقت ندارد"></asp:CompareValidator>
                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="170px"></asp:TextBox></td>
                        <td align="left">
                            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword"
                                CssClass="lbl">: تکرار کلمه عبور </asp:Label>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Email"
                                Display="None" ErrorMessage="ایمیل را وارد نمایید"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email"
                                Display="None" ErrorMessage="ایمیل را صحیح وارد نمایید" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="Email" runat="server" Width="170px"></asp:TextBox></td>
                        <td align="left">
                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" CssClass="lbl">: ایمیل </asp:Label>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:TextBox ID="txtTell" runat="server" Width="170px"></asp:TextBox></td>
                        <td align="left">
                            <asp:Label ID="Label3" runat="server" AssociatedControlID="Email" CssClass="lbl">: تلفن </asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="txt" TextMode="MultiLine" Width="319px"></asp:TextBox></td>
                        <td align="left">
                            <asp:Label ID="Label4" runat="server" AssociatedControlID="Email" CssClass="lbl">: آدرس</asp:Label></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" style="color: red">
                            &nbsp;<asp:Button ID="btnInser" runat="server" CssClass="btn" Text="ثبت عضویت" Width="123px" OnClick="btnInser_Click" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" style="color: red">
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 20%">
            </td>
        </tr>
        <tr>
            <td style="width: 20%">
            </td>
            <td style="height: 15px">
            </td>
            <td style="width: 20%">
            </td>
        </tr>
    </table>
</asp:Content>

