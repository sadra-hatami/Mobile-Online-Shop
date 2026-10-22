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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        DstUsers ds = new DstUsers();
        tUsersTableAdapter sda = new tUsersTableAdapter();
        sda.FillByUserPass(ds.tUsers, txtUserName.Text.Trim(), txtPass.Text.Trim());
        if (ds.tUsers.Rows.Count > 0)
        {
            Session["ID"] = ds.tUsers.Rows[0][ds.tUsers.fCodeUsersColumn].ToString();
            Response.Redirect("");
        }
        else
        {
            Label3.Text = "نام کاربری یا کلمه عبور اشتباه می باشد";
        }

    }
}
