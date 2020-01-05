using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Cart
/// </summary>
public class Cart
{
    private string userN;
    private int productID;
    private int amount;
    private string size;
    

	public Cart(string UserN, int ProductID, int Amount,string Size)
	{
        this.userN = UserN;
        this.productID = ProductID;
        this.amount = Amount;
        this.size = Size;
        
}
    public string UserN

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



    public static DataSet GetProduct(string UserN)
    {
        string strSql = " SELECT Category.CategoryName, Product.ProductID, Product.ProductName, Product.Price, Cart.Size, Cart.Amount " +
                        " FROM Cart INNER JOIN Product ON Cart.ProductID = Product.ProductID "+
                                    "INNER JOIN Category ON Category.CategoryID = Product.CategoryID" +
                        " WHERE (Cart.UserN ='" + UserN + "')";
        DataSet ds = DAL.GetDataSet(strSql);
        if (ds == null)
        {
            return null;
        }
        return ds;
    }


    static public int Insert(string UserN, int ProductID, int Amount, string Size)
    {
        int rowsAffected;
        string strSql = "INSERT INTO Cart (UserN, ProductID,Amount,Size) VALUES ('" + UserN + "','" + ProductID + "','" + Amount + "','" + Size +"')";
        rowsAffected = (int)DAL.ExecuteNonQuery(strSql);
        return rowsAffected;
    }


    public static string Delete(string ProductName, string UserN)
    {
        string strSql = "delete from Cart where(UserN = '" + UserN + "' and " +
                         " ProductID= (select ProductID from Product where ProductName='" + ProductName + "'))";
        int f;
        f = DAL.ExecuteNonQuery(strSql);
        return f.ToString();
    }

   

   
    public static int UpdateAmount(string UserN, int prodId)
    {
        string strSql = "update Cart set Amount = Amount + 1 where (UserN='" + UserN + "' and ProductID = '" + prodId + "')";
        int f;
        f = DAL.ExecuteNonQuery(strSql);
        return f;
    }
    static public int Update(string UserN, int ProductID, int Amount)
    {
        string strSql = "select Amount from Cart where(UserN='" + UserN + "' and ProductID='" + ProductID + "')";
        object obj = DAL.ExecuteScalar(strSql);
        Amount += (int)obj;
        string strsql1 = "update Cart set Amount='" + Amount + "' where(UserN='" + UserN + "' and ProductID='" + ProductID + "')";
        int rowsAffected = (int)DAL.ExecuteNonQuery(strsql1);
        return rowsAffected;
    }
    public static bool Exist(string UserN, int ProductID)
    {
        string strsql = "select ProductID from Cart where(UserN='" + UserN + "' and ProductID='" + ProductID + "' )";
        Object obj = DAL.ExecuteScalar(strsql);
        if (obj == null)
            return false;
        else
            return true;
    }

    public static int sumPrice(string UserN)
    {
        string strsql = ("select sum (Price) from Cart where ( UserN='" + UserN + "')");
        Object obj = DAL.ExecuteScalar(strsql);
        if (obj == null)
            return 0;
        else
            return (int)obj;
    }
    public static string Delete2(string UserN)
    {
        string strSql = "delete from Cart where(UserN = '" + UserN + "' )";
        int f;
        f = DAL.ExecuteNonQuery(strSql);
        return f.ToString();
    }
}