using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shop_Shop2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = Category.selectC();
            DropDownList1.DataBind();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int Category= int.Parse(DropDownList1.SelectedValue.ToString());
        DataList1.DataSource = Product.GetProduct(Category);
        DataList1.DataBind();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}