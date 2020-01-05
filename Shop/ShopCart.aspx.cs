using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Shop_ShopCart : System.Web.UI.Page
{
    ServiceReference2.WebServiceSoapClient prox = new ServiceReference2.WebServiceSoapClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserN"] == null)
            Response.Redirect("../ErorP.aspx");

        String UserN = Session["UserN"].ToString();

        if (!IsPostBack)
        {
            this.GridView1.AllowPaging = true;
            this.GridView1.PageSize = 5;
            this.GridView1.PagerSettings.Mode = PagerButtons.NextPrevious;
            this.GridView1.DataSource = Cart.GetProduct(UserN).Tables[0];
            GridView1.DataBind();
            int sum = 0;
            DataSet ds = Cart.GetProduct(Session["UserN"].ToString());
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                sum += (int.Parse(ds.Tables[0].Rows[i]["Amount"].ToString()) * int.Parse(ds.Tables[0].Rows[i]["Price"].ToString()));
            }
            Label1.Text = sum.ToString();

        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        String UserN = Session["UserN"].ToString();

        this.GridView1.EditIndex = e.NewEditIndex;
        this.GridView1.DataSource = Cart.GetProduct(UserN);
        GridView1.DataBind();






    }




    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        /*
        this.GridView1.PageIndex = e.NewPageIndex;
        this.GridView1.DataSource = Product.GetProduct();
        this.DataBind();
         * */
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        /*
        this.GridView1.EditIndex = -1;
        this.GridView1.DataSource = Product.GetProduct();
        this.DataBind();
         */
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        /*
        TextBox ProductName = (TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0];
        int CategoryID = int.Parse(GridView1.Rows[e.RowIndex].Cells[1].Text);
        TextBox Price = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox Size = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox Amount = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
        TextBox ImageUrl = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
        TextBox SuperHero = (TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0];
        TextBox Description = (TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0];


        // Product.Update2(int.Parse(ProductName.Text), int.Parse(CategoryName), int.Parse(ProductID), int.Parse(Price.Text), int.Parse(Size.Text), int.Parse(Amount.Text));
        this.GridView1.EditIndex = -1;
        this.GridView1.DataSource = Product.GetProduct();
        this.DataBind();

        */
    }

    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        string UserN = Session["UserN"].ToString();
        string ProductName = (GridView1.Rows[e.RowIndex].Cells[2].Text);

        string y = Cart.Delete(ProductName, UserN);
        this.GridView1.EditIndex = -1;
        this.GridView1.DataSource = Cart.GetProduct(UserN);
        GridView1.DataBind();
        int sum = 0;
        DataSet ds = Cart.GetProduct(Session["UserN"].ToString());
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            sum += (int.Parse(ds.Tables[0].Rows[i]["Amount"].ToString()) * int.Parse(ds.Tables[0].Rows[i]["Price"].ToString()));
        }
        Label1.Text = sum.ToString();

        Product.increase_amount(ProductName);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        Button1.Visible = false;
        Panel1.Visible = true;
        Label2.Visible = true;


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string UserN = Session["UserN"].ToString();
        DateTime Date = DateTime.Now;
        int sum = int.Parse(Label1.Text);
        Order.Insert(UserN, Date, sum);
        int ID = int.Parse(TextBox3.Text);
        Int64 CardNumber = Int64.Parse(TextBox4.Text);
        string KindC = DropDownList6.SelectedValue;
        int Vmonth = int.Parse(DropDownList4.SelectedValue);
        int Vyear = int.Parse(DropDownList5.SelectedValue);
        int num = prox.Insert(ID, CardNumber, Vmonth, Vyear, KindC);

        if (num == 1)
        {
            int OrderID = Order.GetOrderN(Date);
            Label2.Visible = true;
            Label2.Text = "ההזמנה התקבלה תודה, מס הזמנה-" + OrderID ;
                DataSet ds = Cart.GetProduct(Session["UserN"].ToString());
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    int amount=  int.Parse(ds.Tables[0].Rows[i]["Amount"].ToString()); 
                    string size= ds.Tables[0].Rows[i]["Size"].ToString();
                    int productID = int.Parse(ds.Tables[0].Rows[i]["ProductID"].ToString());
                    OrderInfo.Insert(OrderID, productID, amount, size);
                }
            Cart.Delete2(UserN);


        }
    }
}