using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Shop_ShopP1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList2.DataSource = Category.selectC();
            DropDownList2.DataBind();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int Category = int.Parse(DropDownList2.SelectedValue.ToString());
        DataList2.DataSource = Product.GetProduct(Category);
        DataList2.DataBind();
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Session["UserN"] == null)
        {
            Response.Redirect("../ErorP.aspx");
        }
        int Category = int.Parse(DropDownList2.SelectedValue.ToString());
        DataList2.DataSource = Product.GetProduct(Category);
        DataList2.DataBind();

        DataList2.Visible = false;
        DropDownList2.Visible = false;
        Panel1.Visible = true;
        Label Label4 = (Label)DataList2.SelectedItem.FindControl("Label4");
        Label Label1 = (Label)DataList2.SelectedItem.FindControl("Label1");
        Label Label2 = (Label)DataList2.SelectedItem.FindControl("Label2");
        Label Label3 = (Label)DataList2.SelectedItem.FindControl("Label3");
        Label Label5 = (Label)DataList2.SelectedItem.FindControl("Label5");
        Label Label6 = (Label)DataList2.SelectedItem.FindControl("Label6");
        Label Label9 = (Label)DataList2.SelectedItem.FindControl("Label9");
        Image Image2 = (Image)DataList2.SelectedItem.FindControl("Image2");
        Label Label7 = (Label)Panel1.FindControl("Label7");
        Label Label1P = (Label)Panel1.FindControl("Label1P");
        Label Label2P = (Label)Panel1.FindControl("Label2P");
        Label Label3P = (Label)Panel1.FindControl("Label3P");
        Label Label5P = (Label)Panel1.FindControl("Label5P");
        Label Label6P = (Label)Panel1.FindControl("Label6P");
        Label Label10 = (Label)Panel1.FindControl("Label10");
        Image ImgS2 = (Image)Panel1.FindControl("ImgS2");
        Label7.Text = string.Format("{0}", Label4.Text);
        Image2P.ImageUrl = string.Format("{0}", Image2.ImageUrl);
        Label1P.Text = string.Format("{0}", Label1.Text);
        Label2P.Text = string.Format("{0}", Label2.Text);
        Label3P.Text = string.Format("{0}", Label3.Text);
        Label5P.Text = string.Format("{0}", Label5.Text);
        Label6P.Text = string.Format("{0}", Label6.Text);
        Label10.Text = string.Format("{0}", Label9.Text);
        



    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
       

        DataList2.Visible = true;
        DropDownList2.Visible = true;
        Panel1.Visible = false;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string user= Session["UserN"].ToString();
        int prodId = int.Parse(Label10.Text);


        if (Cart.Exist(user, prodId))
        {
            Cart.UpdateAmount(user, prodId);
        }
        else
        {
            Cart.Insert(user,prodId,1,Label3P.Text);
        }

        Product.decrease_amount(prodId);
    }
    
    private void rateProduct(int rate)
    {
        String UserN = Session["UserN"].ToString();
        int prodId = int.Parse(Label10.Text);

        if (RateTable.Exist(UserN, prodId))
        {
            RateTable.Update(UserN, prodId, rate);
        }
        else
            RateTable.Insert(UserN, prodId, rate);
    }

    protected void B5_Click(object sender, ImageClickEventArgs e)
    {
        rateProduct(1);
    }
    protected void B4_Click(object sender, ImageClickEventArgs e)
    {
        rateProduct(2);
    }
    protected void B3_Click(object sender, ImageClickEventArgs e)
    {
        rateProduct(3);
    }
    protected void B2_Click(object sender, ImageClickEventArgs e)
    {
        rateProduct(4);
    }
    protected void B1_Click(object sender, ImageClickEventArgs e)
    {
        rateProduct(5);
    }
}