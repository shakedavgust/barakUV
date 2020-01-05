using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () 
    {
        string path = Server.MapPath("App_Data/DatabaseCards.mdf");
        WSDAL.Path = path;
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }
   
   [WebMethod]
    public int Insert(int Id, Int64 CardsNum, int Vmonth, int Vyear, string KindC)
    {
        return Cards.Insert(Id, CardsNum, Vmonth, Vyear, KindC);
    }
}
