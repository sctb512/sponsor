using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WaiLianBuWeb.Startup))]
namespace WaiLianBuWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
