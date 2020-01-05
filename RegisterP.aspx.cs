using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for (int i = 1920; i <= 1997; i++)
            {
                Year.Items.Add(i.ToString());
            }


            for (int i = 1; i <= 31; i++)
            {
                Day.Items.Add(i.ToString());
            }
        }

        


    }




    protected void UserN_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Gender = "";
        if (Male.Checked)
        {
            Gender = "Male";
        }
        if (Female.Checked)
        {
            Gender = "Female";
        }

        Users user = new Users(UserN.Text, Pass.Text, Mail.Text, int.Parse(Year.SelectedItem.ToString()), int.Parse(Month.SelectedValue.ToString()), int.Parse(Day.SelectedItem.ToString()), Gender, FirstN.Text, LastN.Text,0);
        int check = user.Insert();
        if (check == -1)
        {
            Label1.Text = "הרשמה לא הצליחה";
        }
        else
        {
            Label1.Text = "הרשמה בוצעה בהצלחה";
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        UserN.Text = "";
        FirstN.Text = "";
        LastN.Text = "";
        Mail.Text = "";
        Pass.Text = "";
    }
}