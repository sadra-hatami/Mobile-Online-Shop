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

public partial class AdminManageSells : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = BijanComponents.ShamsiDate.GetShamsiDate(DateTime.Now);
            TextBox2.Text = BijanComponents.ShamsiDate.GetShamsiDate(DateTime.Now);
        }
    }
    protected void dg_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataSource1.DeleteCommand = "DELETE FROM tSells WHERE (fCode = '"+dg.SelectedValue.ToString()+"')";
        SqlDataSource1.Delete();
        dg.SelectedIndex = -1;
    }
}
