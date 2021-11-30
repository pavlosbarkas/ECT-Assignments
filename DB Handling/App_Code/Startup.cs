using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Lab7B.Startup))]
namespace Lab7B
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
