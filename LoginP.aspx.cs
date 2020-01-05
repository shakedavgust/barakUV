using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DAL.Path = Server.MapPath("~/App_Data/Database.mdf");
        }

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string UserName = UserN.Text;
        if (Users.Exist2(UserN.Text, Pass.Text) == true)
        {
            Label1.Text = "התחברת בהצלחה";
            Session["UserN"] = UserName;
            Session["FirstN"] = Users.GetFirstN(UserName);
            Session["Admin"] = Users.GetAdmin(UserName);
            Response.Redirect("HomeP.aspx");
        }
           
           // if (Admin == null)
          //  {
          //      Session["Admin"] = 0;
         //   }
            //   else
         //   {
         //       if ((int)Admin == 1)
         //       {
        //        Session["Admin"] = 1;
         //       }
         //       else
           //     {
         //           Session["Admin"] = 0;
            //    }
            // }
      //  }
      //  else
                    //  {
                    // Label1.Text = "שם משתמש או סיסמא אינם נכונים";
                    //   Session["UserN"] = null;
            //   Session["FirstN"] = null;
       // } 
    }
}

