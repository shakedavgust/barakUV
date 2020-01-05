using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OrderInfo
/// </summary>
public class OrderInfo
{
    private int OrderNum;
    private int productID;
    private int amount;
    private string size;


    public OrderInfo(string UserN, int ProductID, int Amount, string Size)
    {
        this.orderNum = OrderNum;
        this.productID = ProductID;
        this.amount = Amount;
        this.size = Size;

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


    public int ProductID
    {
        get
        {
            return this.productID;
        }
        set
        {
            this.productID = value;
        }

    }

    public int Amount
    {
        get
        {
            return this.Amount;
        }
        set
        {
            this.Amount = value;
        }
    }

    public string Size
    {
        get
        {
            return this.Size;
        }
        set
        {
            this.Size = value;
        }
    }
    static public int Insert(int OrderNum, int ProductID, int Amount, string Size)
    {
        int rowsAffected;
        string strSql = "INSERT INTO OrderInfo (OrderNum, ProductID,Amount,Size) VALUES ('" + OrderNum + "','" + ProductID + "','" + Amount + "','" + Size + "')";
        rowsAffected = (int)DAL.ExecuteNonQuery(strSql);
        return rowsAffected;
    }
}