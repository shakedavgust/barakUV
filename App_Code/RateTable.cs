using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for RateTable
/// </summary>
public class RateTable
{
    public RateTable()
    {
    }

    public static bool Exist(string UserN, int ProductID)
    {
        string strsql = "select * from RateTable where(UserN='" + UserN + "' and ProductID='" + ProductID + "' )";
        Object obj = DAL.ExecuteScalar(strsql);
        if (obj == null)
            return false;
        else
            return true;
    }

    public static int Insert(string UserN, int ProductID, int Rate)
    {
        int rowsAffected;
        string strSql = "INSERT INTO RateTable (UserN, ProductID,Rate) VALUES ('" + UserN + "','" + ProductID + "','" + Rate + "')";
        rowsAffected = (int)DAL.ExecuteNonQuery(strSql);
        return rowsAffected;
    }

    static public int Update(string UserN, int ProductID, int Rate)
    {
        string strsql1 = "update RateTable set Rate='" + Rate + "' where(UserN='" + UserN + "' and ProductID='" + ProductID + "')";
        int rowsAffected = (int)DAL.ExecuteNonQuery(strsql1);
        return rowsAffected;
    }

    static public DataSet GetProdRate(int ProductID)
    {
        string strsql1 = "select avg(Rate) from RateTable where ProductID='" + ProductID + "'";
        DataSet ds = DAL.GetDataSet(strsql1);
        return ds;
    }

    static public DataSet GetTopRated(int limit)
    {
        string strsql1 = "select top " + limit + " CategoryName, ProductName, Rate from Product " +
                        " INNER JOIN RateTable ON Product.ProductID = RateTable.ProductID " +
                        " INNER JOIN Category ON Product.CategoryID = Category.CategoryID " +
                        " ORDER BY Rate DESC ";

        DataSet ds = DAL.GetDataSet(strsql1);
        return ds;
    }

    
}