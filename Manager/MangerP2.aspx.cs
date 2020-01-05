using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_MangerP2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.CategoryID.DataSource = Category.selectC();
            CategoryID.DataBind();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st = ImageURL.FileName;
        string path = Server.MapPath(@"..\Products");
        ImageURL.SaveAs(path + @"..\" + st);
        st = @"..\Products\" + ImageURL.FileName;
        Product proudct = new Product(ProductName.Text, int.Parse(CategoryID.SelectedValue.ToString()), int.Parse(Price.Text), st, int.Parse(Amount.Text), (Size.SelectedValue.ToString()), SuperHero.Text, Description.Text);
        int check = proudct.Insert();
        if (check == -1)
        {
            Label1.Text = "הכנסת מוצר לא הצליחה";
        }
        else
        {
            Label1.Text = "הכנסת מוצר בוצעה בהצלחה";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
   
}