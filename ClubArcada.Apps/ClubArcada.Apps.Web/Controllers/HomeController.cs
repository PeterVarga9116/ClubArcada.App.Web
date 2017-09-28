using ClubArcada.Common.BusinessObjects.DataClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClubArcada.Apps.Web.Controllers
{
    public class HomeController : Controller
    {
        private static string NewCS = "Data Source=82.119.117.77;Initial Catalog=ACDB_DEV;User ID=ACDB_user; Password=ULwEsjcpDxjKLbL5";
        private static Guid ServiceID = new Guid("4EBB10F7-1CB5-41C1-8051-3328B7FC5A55");

        private static Credentials CR = new Credentials(ServiceID, 4, NewCS);

        // GET: Home
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult GetVeryAction()
        {
            var t = Common.BusinessObjects.Data.TournamentData.GetUpcomingList(CR, 2);
            return Json(t, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetUpcomingEvents()
        {
            var t = Common.BusinessObjects.Data.TournamentData.GetUpcomingList(CR);
            return Json(t, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetLatestEvents()
        {
            var t = Common.BusinessObjects.Data.TournamentData.GetRecentList(CR, 5);
            return Json(t, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetBanners()
        {
            var t = Common.BusinessObjects.Data.BannerData.GetList(CR, true, false);

            var light = t.Item.Select(b => new BannerLight(b));

            return Json(light, JsonRequestBehavior.AllowGet);
        }
    }
}