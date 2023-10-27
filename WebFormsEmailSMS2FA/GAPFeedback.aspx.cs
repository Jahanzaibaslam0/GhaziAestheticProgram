using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsEmailSMS2FA
{
    public partial class GAPFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["PMDC"] = TextBox1.Text.Trim();
            Response.Redirect("~/FeedbackForm.aspx");
        }
    }
}