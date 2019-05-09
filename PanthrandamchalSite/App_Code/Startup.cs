using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PanthrandamchalSite.Startup))]
namespace PanthrandamchalSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
