using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    private int ProductID;
    private string ProductName;
    private int CategoryID;
    private int Price;
    private string ImageURL;
    private int Amount;
    private string Size;
    private string SuperHero;
    private string Description;


    public Product(int ProductID, string ProductName, int CategoryID, int Price, string ImageURL, int Amount, string Size, string SuperHero, string Description)
    {
        this.ProductID = ProductID;
        this.ProductName = ProductName;
        this.CategoryID = CategoryID;
        this.Price = Price;
        this.ImageURL = ImageURL;
        this.Amount = Amount;
        this.Size = Size;
        this.SuperHero = SuperHero;
        this.Description = Description;
    }
    public Product(string ProductName, int CategoryID, int Price, string ImageURL, int Amount, string Size, string SuperHero, string Description)
    {

        this.ProductName = ProductName;
        this.CategoryID = CategoryID;
        this.Price = Price;
        this.ImageURL = ImageURL;
        this.Amount = Amount;
        this.Size = Size;
        this.SuperHero = SuperHero;
        this.Description = Description;
    }

    public int GetProductID()
    {
        return this.ProductID;
    }
    public string GetProductName()
    {
        return this.ProductName;
    }
    public int GetCategoryID()
    {
        return this.CategoryID;
    }
    public int GetPrice()
    {
        return this.Price;
    }
    public string GetImageURL()
    {
        return this.ImageURL;
    }
    public int GetAmount()
    {
        return this.Amount;
    }
    public string GetSize()
    {
        return this.Size; ;
    }
    public string GetSuperHero()
    {
        return this.SuperHero;
    }
    public string GetDescription()
    {
        return this.Description;
    }


    public static bool Exist(string ProductName)
    {
        string strSql = ("select ProductName from Product where(Product='" + ProductName + "')");
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
        string strSql = "INSERT into Product(ProductName,CategoryID,Price,Size,Amount,ImageURL,SuperHero,Description) values ('" + this.ProductName + "','" + this.CategoryID + "','" + this.Price + "','" + this.Size + "','" + this.Amount + "','" + this.ImageURL + "','" + this.SuperHero + "','" + this.Description + "')";
        rowsAffected = (int)DAL.ExecuteNonQuery(strSql);
        return rowsAffected;
    }


    public static DataSet GetProduct()
    {
        string strsql = "SELECT * from Product";
        DataSet ds = DAL.GetDataSet(strsql);
        if (ds == null)
        {
            return null;
        }
        return ds;
    }
    public static DataSet GetProduct(int GetCatgory)
    {
        string strsql = "SELECT * from Product where (CategoryID='"+GetCatgory+"')";
        DataSet ds = DAL.GetDataSet(strsql);
        if (ds == null)
        {
            return null;
        }
        return ds;
    }

    public static int Delete(String ProductName)
    {
        string strsql = " delete from Product where (ProductName='" + ProductName + "')";
        int f;
        f = DAL.ExecuteNonQuery(strsql);
        return f;
    }


    public static int Update(string ProductName, int CategoryID, int Price, int Size, int Amount, string ImageURL, string SuperHero, string Description)
    {
       

        string strsql = "update Product set CategoryID='" + CategoryID + "',Price='" + Price + "',Size='" + Size + "',Amount='" + Amount + "',ImageURL='" + ImageURL + "',SuperHero='" + SuperHero + "',Description='" + Description + "' where (ProductName='" + ProductName + "')";
        int f;
        f = DAL.ExecuteNonQuery(strsql);
        return f;
    }

    public static int decrease_amount(int prodId)
    {
        string strsql = "update Product set Amount = Amount - 1 where (ProductID= '" + prodId + "')";
        int f;
        f = DAL.ExecuteNonQuery(strsql);
        return f;
    }
    public static int increase_amount(string ProductName)
    {
        string strsql = "update Product set Amount = Amount + 1 where (ProductName= '" + ProductName + "')";
        int f;
        f = DAL.ExecuteNonQuery(strsql);
        return f;
    }


	public Product()
	{
		//
		// TODO: Add constructor logic here
		//
	}



}