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
using DstGroupsTableAdapters;

public partial class AdminGroup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
            dg.SelectedIndex = -1;
        }
    }
    private void BindGrid()
    {
        tGroupsTableAdapter sda = new tGroupsTableAdapter();
        DstGroups ds = new DstGroups();
        sda.Fill(ds.tGroups);
        dg.DataSource = ds.tGroups;
        dg.DataBind();
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        tGroupsTableAdapter sda = new tGroupsTableAdapter();
        if (dg.SelectedIndex>-1)
        {
            sda.Update(txtGroup.Text.Trim(),int.Parse(dg.SelectedValue.ToString()));
            Label1.Text = "ویرایش گروه با موفقیت در سیستم ذخیره گردید";
        }
        else
        {
            sda.Insert(txtGroup.Text.Trim());
            Label1.Text = "اطلاعات گروه جدید با موفقیت در سیستم ذخیره گردید";
        }
        txtGroup.Text = "";
        BindGrid();
        dg.SelectedIndex = -1;
        
    }
    protected void dg_SelectedIndexChanged(object sender, EventArgs e)
    {
        tGroupsTableAdapter sda = new tGroupsTableAdapter();
        DstGroups ds = new DstGroups();
        sda.FillByCode(ds.tGroups, int.Parse(dg.SelectedValue.ToString()));
        txtGroup.Text = ds.tGroups.Rows[0][ds.tGroups.fNameColumn].ToString();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (txtGroup.Text.Trim() != "" && dg.SelectedIndex > -1)
        {
            tGroupsTableAdapter sda = new tGroupsTableAdapter();
            sda.Delete(int.Parse(dg.SelectedValue.ToString()));
            Label1.Text = "حذف گروه با موفقیت انجام شد";
            BindGrid();
            txtGroup.Text = "";
            dg.SelectedIndex = -1;
        }
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        dg.SelectedIndex = -1;
        Label1.Text = "";
        txtGroup.Text = "";
    }
}
