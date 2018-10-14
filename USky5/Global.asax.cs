using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Threading;
using System.Web.Routing;

namespace USky.WebApp
{
    public class Global : System.Web.HttpApplication
    {

      

       

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }
        void Application_Start(object sender, EventArgs e)
        {

            RegisterRoutes(RouteTable.Routes);
           // RouteTable.Routes.MapPageRoute("Schools", "{ID}", "~/CoBrand/Default.aspx");



        }
        static void RegisterRoutes(RouteCollection routes)
        {
            routes.Ignore("{resource}.axd/{*pathInfo}");
           // routes.MapPageRoute("Schools", "{ID}", "~/CoBrand/Default.aspx");
            routes.MapPageRoute("Schools", "{ID}", "~/CoBrand/Default.aspx");
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}