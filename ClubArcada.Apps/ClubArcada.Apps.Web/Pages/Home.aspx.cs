using SautinSoft;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClubArcada.Apps.Web.Pages
{
    public partial class Home : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCookieTest_Click(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("sk-SK");
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("sk-SK");
            Response.Cookies["lang"].Value = "sk-SK";
            Response.Redirect("../Pages/Home.aspx");
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("en-US");
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");
            Response.Cookies["lang"].Value = "en-US";
            Response.Redirect("../Pages/Home.aspx");
        }
    }
}