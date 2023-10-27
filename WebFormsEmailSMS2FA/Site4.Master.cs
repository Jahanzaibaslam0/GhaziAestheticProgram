using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsEmailSMS2FA
{
    public partial class Site4 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_LoggedOut(object sender, EventArgs e)
        {

            Session.Clear();
            Context.GetOwinContext().Authentication.SignOut();


        }
    }
}