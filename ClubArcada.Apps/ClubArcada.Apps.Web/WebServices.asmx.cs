using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using ClubArcada.Common.BusinessObjects.Data;
using ClubArcada.Common.BusinessObjects.DataClasses;
using Newtonsoft.Json;

namespace ClubArcada.Apps.Web
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class WebServices : System.Web.Services.WebService
    {
        private static string NewCS = "Data Source=82.119.117.77;Initial Catalog=ACDB_DEV;User ID=ACDB_user; Password=ULwEsjcpDxjKLbL5";
        private static Guid ServiceID = new Guid("4EBB10F7-1CB5-41C1-8051-3328B7FC5A55");
        public static Credentials CR = new Credentials(ServiceID, 4, NewCS);

        [WebMethod]
        public string GetUpcomingGames()
        {
            var items = TournamentData.GetUpcomingLightList(CR,5).OrderBy(t => t.Date).ToList();
            return JsonConvert.SerializeObject(items);
        }

        [WebMethod]
        public string GetRecetGames()
        {
            var items = TournamentData.GetRecentLightList(CR, 5).OrderByDescending(t => t.Date).ToList();
            return JsonConvert.SerializeObject(items);
        }

        [WebMethod]
        public string GetTournamentById(string id)
        {
            var idGuid = new Guid(id);

            var items = TournamentData.GetByIdDetailed(CR, idGuid);
            return JsonConvert.SerializeObject(items);
        }
    }
}
