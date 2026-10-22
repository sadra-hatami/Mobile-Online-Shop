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
using DstProductsTableAdapters;

public partial class Basket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
         {
             try
             {
                 tProductsTableAdapter sdaProduct = new tProductsTableAdapter();
                DstSells ds = new DstSells();
                ds =(DstSells) Session["ds"];
                GridView1.DataSource = ds.tSells;
                
                for (int i=0;i<ds.tSells.Rows.Count;i++)
                {
                   ds.tSells.Rows[i][ds.tSells.fNameProductColumn] = sdaProduct.GetNameByCode(int.Parse(ds.tSells.Rows[i][ds.tSells.fCodeProductColumn].ToString()));
                   ds.tSells.Rows[i][ds.tSells.fPriceColumn] = sdaProduct.GetPriceByCode(int.Parse( ds.tSells.Rows[i][ds.tSells.fCodeProductColumn].ToString()));
                }
                GridView1.DataBind();
             }
            catch 
             {
                Response.Redirect("Default.aspx");
            }

         }
    }
    protected void btnAccept_Click(object sender, EventArgs e)
    {
        DstSells ds = new DstSells();
        ds =(DstSells) Session["ds"];
        DstSellsTableAdapters.tSellsTableAdapter sda = new DstSellsTableAdapters.tSellsTableAdapter();
        for (int i = 0; i < ds.tSells.Rows.Count; i++)
        {
            ds.tSells.Rows[i][ds.tSells.fFishNumberColumn] = txtFish.Text.Trim();
            ds.tSells.Rows[i][ds.tSells.fBankNameColumn] = RadioButtonList1.SelectedValue.ToString();

        }
        sda.Update(ds);
        Session["ds"] = "";
        Response.Redirect("Tanx.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            tProductsTableAdapter sdaProduct = new tProductsTableAdapter();
            DstSells ds = new DstSells();
            ds = (DstSells)Session["ds"];
            ds.tSells.Rows.Find(GridView1.SelectedValue).Delete();
            GridView1.DataSource = ds.tSells;
            GridView1.DataBind();
            Session["ds"] = ds;
        }
        catch
        { }
    }
}
