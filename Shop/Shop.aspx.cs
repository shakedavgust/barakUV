using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shop_Shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.GridView1.AllowPaging = true;
        this.GridView1.PageSize = 5;
        this.GridView1.PagerSettings.Mode = PagerButtons.NextPrevious;
        this.GridView1.DataSource = RateTable.GetTopRated(5);
        GridView1.DataBind();
    }
}