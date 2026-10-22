using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DstUsersTableAdapters;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInser_Click(object sender, EventArgs e)
    {
        tUsersTableAdapter sda = new tUsersTableAdapter();
        sda.Insert(txtName.Text, txtFamily.Text, txtTell.Text, txtAddress.Text, Email.Text, UserName.Text.Trim(), Password.Text.Trim());
        Response.Redirect("FinishRegister.aspx");
    }
 
}
