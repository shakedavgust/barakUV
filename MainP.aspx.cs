using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainP : System.Web.UI.Page
{
    static Random rnd = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
       if (!IsPostBack)
      {
           int num = rnd.Next(1,13);
           string st = @"MainPic\" + num + ".png";
            Image1.ImageUrl = st;
           Image1.Width=460;
           Image1.Height=620;

}
    }
}
