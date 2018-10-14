using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace USky.WebApp
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected override void OnPreInit(EventArgs e)
        {
            if (User.Identity.IsAuthenticated == true)
            {
                USky.WebApp.Controls.HeaderInside header = (USky.WebApp.Controls.HeaderInside)Page.LoadControl("Controls/HeaderInside.ascx");
                phHome.Controls.Add(header);
            }
            else
            {
                USky.WebApp.Controls.HeaderHome header = (USky.WebApp.Controls.HeaderHome)Page.LoadControl("Controls/HeaderHome.ascx");
                phHome.Controls.Add(header);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["ID"] != null && Request.QueryString["ID"].ToString() != "")
                {
                    string id = Request.QueryString["ID"].ToString();
                    Response.Redirect("Resource/Default.aspx?ID=" + id);
                }
            }
        }
    }
}