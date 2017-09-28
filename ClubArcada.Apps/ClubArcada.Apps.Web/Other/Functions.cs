using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using SautinSoft;

namespace ClubArcada.Apps.Web
{
    public class Functions
    {
        public static void SetLanguage(System.Web.HttpResponse response, string culture, bool isSetCookie = false)
        {
            if (isSetCookie)
            {
                response.Cookies["lang"].Value = culture;
            }

            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(culture);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(culture);

            
        }

        public static void GetText()
        {
            var r = new RtfToHtml();
            r.OpenDocx(System.Web.HttpContext.Current.Server.MapPath("~/Documents/doc.rtf"));
            r.OutputFormat = SautinSoft.RtfToHtml.eOutputFormat.HTML_5;
            var xz = r.ToString();
        }
    }
}