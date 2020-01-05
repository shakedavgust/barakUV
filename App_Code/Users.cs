using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Users
/// </summary>
public class Users
{

    private string UserN;
    private string Pass;
    private string APass;
    private string Mail;
    private int Year;
    private int Month;
    private int Day;
    private string Gender;
    private string FirstN;
    private string LastN;
    private int Admin;

    public Users(string UserN, string Pass, string Mail, int Year, int Month, int Day, string Gender, string FirstN, string LastN, int Admin)
    {
        this.UserN = UserN;
        this.Pass = Pass;
 
        this.Mail = Mail;
        this.Year = Year;
        this.Month = Month;
        this.Day = Day;
        this.Gender = Gender;
        this.FirstN = FirstN;
        this.LastN = LastN;
        this.Admin = Admin;
    }

    public string GetUserN()
    {
        return this.UserN;
    }
    public string GetPass()
    {
        return this.Pass;
    }
    public string GetAPass()
    {
        return this.APass;
    }
    public string GetMail()
    {
        return this.Mail;
    }
    public int GetYear()
    {
        return this.Year;
    }
    public int GetMonth()
    {
        return this.Month;
    }
    public int GetDay()
    {
        return this.Day;
    }
    public string GetGender()
    {
        return this.Gender;
    }
  
    public string GetLastN()
    {
        return this.LastN;
    }
    public int GetAdmin()
    {
        return this.Admin;
    }


    public void SetUserN(string UserN)
    {
        this.UserN = UserN;
    }
    public void SetPass(string Pass)
    {
        this.Pass = Pass;
    }

    public void SetMail(string Mail)
    {
        this.Mail = Mail;
    }
    public void SetYear(int Year)
    {
        this.Year = Year;
    }
    public void SetMonth(int Month)
    {
        this.Month = Month;
    }
    public void SetDay(int Day)
    {
        this.Day = Day;
    }
    public void SetGender(string Gender)
    {
        this.Gender = Gender;
    }
    public void SetFirstN(string FirstN)
    {
        this.FirstN = FirstN;
    }
    public void SetLastN(string LastN)
    {
        this.LastN = LastN;
    }
    public void SetAdmin(int Admin)
    {
        this.Admin = Admin;
    }

    public static string GetFirstN(string FirstN)
    {
        string strSql = ("select FirstN from Users where( FirstN='" + FirstN + "')");
        object obj = DAL.ExecuteScalar(strSql);
        if (obj == null)
        {
            return "";
        }
        else
        {
            return obj.ToString();
        }

    }
    public static int GetAdmin(string UserN)
    {
        string strSql = ("select Admin from Users where( UserN='" + UserN + "')");
        object obj = DAL.ExecuteScalar(strSql);
        if (obj == null)
        {
            return 0;
        }
        else
        {
            return int.Parse(obj.ToString());
        }

    }


    public static bool Exist(string UserN)
    {
        string strSql = ("select UserN from Users where (UserN='" + UserN + "')");
        object obj = DAL.ExecuteScalar(strSql);
        if (obj == null)
        {
            return false;
        }
        else
        {
            return true;
        }

    }



    public int Insert()
    {
        if (!(Exist(UserN)))
        {
            int rowsAffected;
            string strSql = "INSERT into Users(UserN,Pass,Mail,Year,Day,Month,Gender,FirstN,LastN) values ('" + UserN + "','" + Pass + "','" + Mail + "','" + Year + "','" + Day + "','" + Month + "','" + Gender + "','" + FirstN + "','" + LastN + "')";
            rowsAffected = (int)DAL.ExecuteNonQuery(strSql);
            return rowsAffected;
        }
        else
        {
            return -1;
        }
    }

    public static bool Exist2(string UserN, string Pass)
    {
        string strSql = "select UserN from Users where (UserN='" + UserN + "') and (Pass='" + Pass + "')";
        object obj = DAL.ExecuteScalar(strSql);
        if (obj == null)
        {
            return false;
        }
        else
        {
            return true;
        }


    }
}
