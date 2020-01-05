using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DAL
/// </summary>
public class DAL
{
    static private string path;
    static private string connectionString;

    static public string Path
    {
        set
        {
            DAL.path = value;
        }
        get
        {
            return DAL.path;
        }
    }

    static private string ConnectionString
    {
        get
        {
            return (@"Data Source=.\SQLEXPRESS;AttachDbFilename='"+Path+"';Integrated Security=True;User Instance=True");
        }
    }

    static public Object ExecuteScalar(string strSql)
    {
        Object obj = null;
        SqlConnection connection = new SqlConnection(DAL.ConnectionString);
        SqlCommand command = new SqlCommand(strSql, connection);
        try
        {
            connection.Open();
            obj = command.ExecuteScalar();
        }
        catch (Exception ex)
        {
            return ex;
        }
        finally
        {
            connection.Close();
        }
        return obj;
    }
    static public DataSet GetDataSet(string strSql)
    {
        DataSet ds = new DataSet();
        SqlConnection connection = new SqlConnection(DAL.ConnectionString);
        SqlCommand command = new SqlCommand(strSql, connection);
        SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
        try
        {
            dataAdapter.Fill(ds);
        }
        catch (Exception ex)
        {
            return null;
        }
        finally
        {
            connection.Close();
        }
        return ds;
    }
    static public int ExecuteNonQuery(string strSql)
    {
        int rowsAffected;
        SqlConnection connection = new SqlConnection(DAL.ConnectionString);
        SqlCommand command = new SqlCommand(strSql, connection);
        try
        {
            connection.Open();
            rowsAffected = command.ExecuteNonQuery();
        }
        finally
        {
            connection.Close();
        }
        return rowsAffected;
    }
    
    public DAL()
    {
        // 
        // TODO: Add constructor logic here 
        // 
    }
}