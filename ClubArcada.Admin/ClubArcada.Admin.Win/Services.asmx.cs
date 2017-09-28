using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using ClubArcada.Common.BusinessObjects.Data;
using Newtonsoft.Json;
using ClubArcada.Common.BusinessObjects.DataClasses;

namespace ClubArcada.Admin.Win
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    public class Services : System.Web.Services.WebService
    {
        private static string NewCS = "Data Source=82.119.117.77;Initial Catalog=ACDB_DEV;User ID=ACDB_user; Password=ULwEsjcpDxjKLbL5";
        private static Guid ServiceID = new Guid("4EBB10F7-1CB5-41C1-8051-3328B7FC5A55");

        private static Credentials CR = new Credentials(ServiceID, 4, NewCS);

        [WebMethod]
        public string GetTournaments()
        {
            var from = DateTime.Now.AddMonths(-1);
            var to = DateTime.Now.AddDays(1);

            return JsonConvert.SerializeObject(TournamentData.GetTournamentReport(CR,from, to));
        }

        [WebMethod]
        public string GetTournamentById(string id)
        {
            var idGuid = new Guid(id);
            return JsonConvert.SerializeObject(TournamentData.GetByIdDetailed(CR, idGuid));
        }

        [WebMethod]
        public string GetTicketsByTournamentId(string id)
        {
            var idGuid = new Guid(id);
            var x =  JsonConvert.SerializeObject(TicketData.GetByTournamentId(CR, idGuid));

            return x;
        }

        [WebMethod]
        public string GetRequests()
        {
            var y = RequestData.Get(CR).OrderByDescending(r => r.DateCreated);

            var x = JsonConvert.SerializeObject(y);
            return x;
        }

        [WebMethod]
        public string GetCashStates()
        {
            var y = CashStateData.GetListLight(CR).ToList();
            var x = JsonConvert.SerializeObject(y);
            return x;
        }

        [WebMethod]
        public string GetUsers(string searchString)
        {
            var y = UserData.GetListLight(CR, searchString).OrderBy(u => u.FullName).ToList();
            var x = JsonConvert.SerializeObject(y);
            return x;
        }

        [WebMethod]
        public string GetUserById(string id)
        {
            var idGuid = new Guid(id);

            var y = UserData.GetByIdLight(CR, idGuid);

            try
            {
                var x = JsonConvert.SerializeObject(y);
                return x;
            }
            catch(Exception exp)
            {
                var adfs = exp;
            }

            
            return "";
        }


    }
}
