using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;

namespace ClubArcada.Apps.Web
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/scripts").Include(
                      "~/Scripts/jquery-{version}.js",
                      "~/Scripts/angular.js",
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/require.js",
                      "~/Scripts/parallax.min.js",
                      "~/Scripts/respond.js",
                      "~/Scripts/Site.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/Site.css"));
        }
    }
}
