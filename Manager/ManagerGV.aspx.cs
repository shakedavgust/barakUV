using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_ManagerGV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.GridView1.AllowPaging = true;
             this.GridView1.PageSize = 5;
            this.GridView1.PagerSettings.Mode = PagerButtons.NextPrevious;
            this.GridView1.DataSource = Product.GetProduct();
            GridView1.DataBind();
        }
    }
            

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String ProductName = GridView1.Rows[e.RowIndex].Cells[0].Text;
        int x = Product.Delete(ProductName);
        this.GridView1.EditIndex = -1;
        this.GridView1.DataSource = Product.GetProduct();
        this.DataBind();
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Label1.Text= GridView1.Rows[e.NewSelectedIndex].Cells[0].Text;
        Label2.Text = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;
        Label3.Text = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
        Label4.Text = GridView1.Rows[e.NewSelectedIndex].Cells[3].Text;
        Label5.Text = GridView1.Rows[e.NewSelectedIndex].Cells[4].Text;
        Label6.Text = GridView1.Rows[e.NewSelectedIndex].Cells[6].Text;
        Label7.Text = GridView1.Rows[e.NewSelectedIndex].Cells[7].Text;
        Label8.Text = GridView1.Rows[e.NewSelectedIndex].Cells[8].Text;

        Image pic = (Image)GridView1.Rows[e.NewSelectedIndex].Cells[5].Controls[0];
        Image1.ImageUrl = pic.ImageUrl;

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.GridView1.DataSource = Product.GetProduct();
        this.DataBind();

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        this.GridView1.EditIndex = -1;
        this.GridView1.DataSource = Product.GetProduct();
        this.DataBind();
    }



    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewUpdateEventArgs e)
    {
        
    }
    protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
    {
        this.GridView1.EditIndex = e.NewEditIndex;
        this.GridView1.DataSource = Product.GetProduct();
        GridView1.DataBind();

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox ProductName = (TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0];
        int CategoryID = int.Parse(GridView1.Rows[e.RowIndex].Cells[1].Text);
        TextBox Price = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox Size = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox Amount = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
        TextBox ImageUrl = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
        TextBox SuperHero = (TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0];
        TextBox Description = (TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0];


        Product.Update(ProductName.Text, CategoryID, int.Parse(Price.Text), int.Parse(Size.Text), int.Parse(Amount.Text), ImageUrl.Text, SuperHero.Text, Description.Text);
        this.GridView1.EditIndex = -1;
        this.GridView1.DataSource = Product.GetProduct();
        this.DataBind();

    }
}
    