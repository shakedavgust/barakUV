using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Category
/// </summary>
public class Category
{

    private string CategoryName;
    private Int64 CategoryID;

    public Category(Int64 CategoryID, string CategoryName)
    {
        this.CategoryID = CategoryID;
        this.CategoryName = CategoryName;
    }
    public Category(string CategoryName)
    {
        this.CategoryName = CategoryName;
    }

    public Int64 GetCategoryID()
    {
        return this.CategoryID;
    }
    public string GetCategoryName()
    {
        return this.CategoryName;
    }
    public void SetCategoryID(int CategoryID)
    {
        this.CategoryID = CategoryID;
    }
    public void SetCategoryName(string CategoryName)
    {
        this.CategoryName = CategoryName;
    }

    public static bool Exist(string CategoryName)
    {
        string strSql = ("select CategoryName from Category where(Category='" + CategoryName + "')");
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
            int rowsAffected;
            string strSql = "INSERT into Category(CategoryName) values ('" +this.CategoryName + "')";
            rowsAffected = (int)DAL.ExecuteNonQuery(strSql);
            return rowsAffected;

    }

     public static DataSet selectC()
     {
         string strsql = "select * from Category";
         DataSet ds = DAL.GetDataSet(strsql);
         if (ds == null)
         {
             return null;
         }
         return ds;
        
     }

    public Category()
    {
        //
        // TODO: Add constructor logic here
        //
    }


}
