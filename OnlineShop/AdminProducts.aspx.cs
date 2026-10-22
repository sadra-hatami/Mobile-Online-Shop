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

public partial class AdminProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // BindGrid();
            dg.SelectedIndex = -1;
        }

    }
    private void BindGrid()
    {
        tProductsTableAdapter sda = new tProductsTableAdapter();
        DstProducts ds = new DstProducts();
        string ss = ddlGroups.SelectedValue.ToString();
        sda.FillByCodeGroup(ds.tProducts,int.Parse(ddlGroups.SelectedValue.ToString()));
        dg.DataSource = ds.tProducts;
        dg.DataBind();
    }
    private void ImageUpload(string fileName, string extension)
    {
        string savePath = Server.MapPath("IMG") + "\\" + fileName + extension;
        FileUpload1.SaveAs(savePath);
    }
   
    private string GetNameForFile()
    {
        string DateNow = BijanComponents.ShamsiDate.GetShamsiDate(DateTime.Now).Trim();
        DateNow = DateNow.Replace("/", "");
        DateNow += DateTime.Now.Hour.ToString().Trim() + DateTime.Now.Minute.ToString().Trim() + DateTime.Now.Second.ToString().Trim();
        return DateNow.Trim();
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        tProductsTableAdapter sda = new tProductsTableAdapter();
        DstProducts ds = new DstProducts();
        string ImgExtention = "";
        if (FileUpload1.HasFile)
        {
            ImgExtention = System.IO.Path.GetExtension(FileUpload1.FileName);
        }
        string FileNme = "";

        if (ImgExtention != "")
        {
            FileNme = GetNameForFile();
        }
        if (dg.SelectedIndex > -1  && txtName.Text.Trim()!="")
        {
            bool Success = sda.FillByCode(ds.tProducts, int.Parse(ddlGroups.SelectedValue.ToString()))>0;
            if (Success)
            {
                ds.tProducts.Rows[0][ds.tProducts.fCodeGroupColumn] = ddlGroups.SelectedValue.ToString();
                ds.tProducts.Rows[0][ds.tProducts.fNameColumn] = txtName.Text.Trim();
                ds.tProducts.Rows[0][ds.tProducts.fDescColumn] = txtDesc.Text.Trim();
                ds.tProducts.Rows[0][ds.tProducts.fPriceColumn] = txtPrice.Text.Trim();
                if (FileUpload1.HasFile)
                {
                    ImageUpload(FileNme, ImgExtention);
                    ds.tProducts.Rows[0][ds.tProducts.fImageNameColumn] = "IMG/" + FileNme.Trim() + ImgExtention;
                }
                sda.Update(ds.tProducts);
                Label6.Text = "ویرایش محصول با موفقیت در سیستم ذخیره گردید";
            }
            
        }
        else
        {

            DataRow MyRow = ds.tProducts.NewRow();
            
            MyRow[ds.tProducts.fCodeGroupColumn] = ddlGroups.SelectedValue.ToString();
            MyRow[ds.tProducts.fNameColumn] = txtName.Text.Trim();
            MyRow[ds.tProducts.fPriceColumn] = txtPrice.Text.Trim();
            MyRow[ds.tProducts.fDescColumn] = txtDesc.Text.Trim();
            if (FileUpload1.HasFile)
            {
                ImageUpload(FileNme, ImgExtention);
                MyRow[ds.tProducts.fImageNameColumn] = "IMG/" + FileNme.Trim() + ImgExtention;

            }
            ds.tProducts.Rows.Add(MyRow);
            sda.Update(ds.tProducts);

            Label6.Text = "اطلاعات محصول جدید با موفقیت در سیستم ذخیره گردید";
        }
        ClearTextBox();
        //BindGrid();
        dg.SelectedIndex = -1;
    }
    private void ClearTextBox()
    {
        txtDesc.Text = "";
        txtName.Text = "";
        txtPrice.Text = "";
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (txtName.Text.Trim() != "" && txtPrice.Text.Trim()!="" && dg.SelectedIndex > -1)
        {
            tProductsTableAdapter sda = new tProductsTableAdapter();
            sda.Delete(int.Parse(dg.SelectedValue.ToString()));
            Label6.Text = "حذف محصول با موفقیت انجام شد";
            BindGrid();
            ClearTextBox();
            dg.SelectedIndex = -1;
        }
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        dg.SelectedIndex = -1;
        Label1.Text = "";
        ClearTextBox();
    }
    protected void ddlGroups_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindGrid();
        dg.SelectedIndex = -1;
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        BindGrid();
    }
}
