using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Order
/// </summary>
public class Order
{
    private string UserN;
    private DateTime Date;
    private int Sum;
    private int OrderNum;

	public Order( string UserN, DateTime Date, int Sum, int OrderNum)
	{
	 this.userN=UserN;
     this.date = Date;
        this.sum=Sum;
        this.orderNum=OrderNum;
    }

    public string userN
    {
        get
        {
            return this.UserN;
        }
        set
        {
            this.UserN = value;
        }
    }

    public DateTime date
    {
        get
        {
            return this.Date;
        }
        set
        {
            this.Date = value;
        }
    }

    public int sum
    {
        get
        {
            return this.Sum;
        }
        set
        {
            this.Sum = value;
        }
    }

    public int orderNum
    {
        get
        {
            return this.OrderNum;
        }
        set
        {
            this.OrderNum = value;
        }
    }





       static public int Insert(string UserN, DateTime Date, int Sum)
    {
        int rowsaffected;
        string strsql = "INSERT INTO [Order] (UserN, Date, Sum) VALUES ('" + UserN + "','" + Date + "','" + Sum + "')";
        rowsaffected = (int)DAL.ExecuteNonQuery(strsql);
        return rowsaffected;
    }
       public static int GetOrderN(DateTime Date)
       {
           string strSql = ("select OrderNum from [Order] where(Date='" + Date + "')");
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
    
	}
