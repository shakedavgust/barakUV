using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Manager_ManagerP1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Category category = new Category( CategoryName.Text);
        int check = category.Insert();
        if (check == -1)
        {
            Label1.Text = "הכנסת קטגוריה לא הצליחה";
        }
        else
        {
            Label1.Text = "הכנסת קטגוריה בוצעה בהצלחה";
        }
    }

}