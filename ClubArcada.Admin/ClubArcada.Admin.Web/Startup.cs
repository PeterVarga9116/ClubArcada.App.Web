using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ClubArcada.Admin.Web.Startup))]
namespace ClubArcada.Admin.Web
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
