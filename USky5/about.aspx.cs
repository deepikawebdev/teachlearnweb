using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace USky.WebApp
{
    public partial class about : System.Web.UI.Page
    {
        protected override void OnPreInit(EventArgs e)
        {
            if (Request.QueryString["ViewID"] != null)
            {
                this.MasterPageFile = "~/Masters/MasterNothing.Master";
            }
            else
            {
                if (User.Identity.IsAuthenticated)
                {
                    this.MasterPageFile = "~/Masters/MasterInside.Master";

                }
                else
                {
                    this.MasterPageFile = "~/Masters/MasterOutside.Master";
                }

            }

            base.OnInit(e);

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}