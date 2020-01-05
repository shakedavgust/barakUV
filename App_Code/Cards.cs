using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cards
/// </summary>
public class Cards
{
    private int Id;
    private Int64 CardsNum;
    private int Vmonth;
    private int Vyear;
    private string KindC;

    public Cards(int Id, Int32 CardsNum, int Vmonth, int Vyear, string KindC)
	{
        this.Id = Id;
        this.CardsNum = CardsNum;
        this.Vmonth=Vmonth;
        this.Vyear=Vyear;
        this.KindC=KindC;
	}

    public int ID
    {
        get
        {
            return this.Id;
        }
        set
        {
            this.Id = value;
        }

    }
    public Int64 cardsNum
    {
        get
        {
            return this.CardsNum;
        }
        set
        {
            this.CardsNum = value;
        }

    }
    public int vmonth
    {
        get
        {
            return this.Vmonth;
        }
        set
        {
            this.Vmonth = value;
        }

    }
    public int vyear
    {
        get
        {
            return this.Vyear;
        }
        set
        {
            this.Vyear = value;
        }

    }
    public string kindC
    {
        get
        {
            return this.KindC;
        }
        set
        {
            this.KindC = value;
        }

    }

    static public int Insert(int Id, Int64 CardsNum, int Vmonth, int Vyear, string KindC)
    {
        int rowsAffected;
        string strSql = "INSERT INTO Cards (Id, CardsNum, Vmonth, Vyear, KindC) VALUES ('" + Id + "','" + CardsNum + "','" + Vmonth + "','" + Vyear + "','" + KindC + "')";
        rowsAffected = (int)WSDAL.ExecuteNonQuery(strSql);
        return rowsAffected;
    }

   
}