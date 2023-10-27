using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsEmailSMS2FA
{
    public partial class Mission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            VerificationEmail email = new VerificationEmail();
            email.Email1("Jahanzaibaslam0@gmail.com", "Confirm your account", "Jahanzaib");
        }
    }
}