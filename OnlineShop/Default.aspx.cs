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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.SelectedIndex = 0;
        }
    }
    private void BindProduct()
    {
 
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        String CodePro = GridView2.SelectedValue.ToString();
        DstSells ds = null ;
        try
        {
            ds =(DstSells) Session["ds"];
        }
        catch{}

        System.Data.DataRow row ;
        try
        {
            row = ds.tSells.NewRow();
        }
        catch
        {
            ds = new DstSells();
            row = ds.tSells.NewRow();
        }
        row[ds.tSells.fCodeProductColumn] = CodePro;
        try
        {
            row[ds.tSells.fCodeUserColumn] = Session["ID"].ToString();
        }
        catch
        {
            Label7.Text = "کنید Login لطفا برای خرید کالا";
            return;
        }
            

        row[ds.tSells.fDateColumn] = BijanComponents.ShamsiDate.GetShamsiDate(DateTime.Now);


        ds.tSells.Rows.Add(row);
        Session["ds"] = ds;

        LinkButton3.Visible = true;
        lbOk.Text = "کالای انتخاب شده به سبد خرید شما اضافه شد" ;
    }
    protected void Label7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Basket.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
