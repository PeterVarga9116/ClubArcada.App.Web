using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClubArcada.Apps.Web.Masters
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.Cookies["lang"] != null)
            //{
            //    var x = Request.Cookies["lang"];

            //    Functions.SetLanguage(Response, Request.Cookies["lang"].Value);
            //}
        }
    }
}