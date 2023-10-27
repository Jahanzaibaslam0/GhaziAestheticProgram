using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebFormsEmailSMS2FA
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
            //if (Session["User"] != null)
            //{

            //    string User = Session["User"].ToString();
            //    string UserEmail = Session["User"].ToString();
            //    //string Mudassir = "Mudassir.g";
            //    //string Amir = "Amir.Shah";
            //    //string Arshad = "Arshad.a";
            //    //if (User == Mudassir || User == Arshad || User == Amir)
            //    //{
            //    //    multiselect2.Visible = false;
            //    //    multiselect4.Visible = false;
            //    //}
            //    //Label1.Text = "Welcome:" + Session["User"].ToString().ToUpper();
            //}
            //else
            //{
            //    Response.Redirect("~/Account/Login.aspx");

            //}
            ////try
            ////{
            
            //    string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //    using (SqlConnection conn = new SqlConnection(conString))
            //    {
            //        string sql = "select ID from UserRegistrationDetail where Email = @Email";// + Session["User"].ToString() + "'";
            //        using (SqlCommand cmd = new SqlCommand(sql, conn))
            //        {
            //            //SqlCommand cmd = new SqlCommand(sql, conn);
            //            SqlParameter[] prms = new SqlParameter[1];
            //            prms[0] = new SqlParameter("@Email", SqlDbType.NVarChar, 50);
            //            prms[0].Value = Context.User.Identity.Name;//Session["User"].ToString();
            //            cmd.Parameters.AddRange(prms);
            //            //cmd.Parameters.Add("@Email", "UserEmail");
            //            conn.Open();
            //            object obj = cmd.ExecuteScalar();
            //            conn.Close();
            //            if (obj != null)
            //            {
            //            lblText.Text = "Your Registration Is Already Done Now you Can Validate Registation Form";
            //            btnRegistration1.Visible = false;
            //            btnRegistrationUpdate1.Visible = true;

            //        }
            //        else
            //        {
            //            lblText.Text = "Please Do PAADS Registration";
            //            btnRegistration1.Visible = true;
            //            btnRegistrationUpdate1.Visible = false;
            //        }
                            
            //        }


            //    }


            //}
            //catch
            //{
            //    Response.Write("<script>alert('Please Do Registration Login First ');window.location ='Login.aspx';</script>");
            //}
        }
    }
}