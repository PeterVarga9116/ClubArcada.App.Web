using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;

namespace ClubArcada.Apps.Web.Pages
{
    public class PageBase : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            if (Request.Cookies["lang"] != null)
            {
                string culture = Request.Cookies["lang"].Value;

                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(culture);
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(culture);
            }
            else
            {
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("sk-Sk");
                Thread.CurrentThread.CurrentUICulture = new CultureInfo("sk-SK");
            }

            base.InitializeCulture();
        }
    }
}