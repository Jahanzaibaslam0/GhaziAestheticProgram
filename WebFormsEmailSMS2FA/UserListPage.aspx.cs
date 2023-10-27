using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Optimization;


namespace WebFormsEmailSMS2FA
{
    public partial class UserListPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"].ToString().ToUpper() == "NOSHINARSHAD@GMAIL.COM")
            {
                SqlDataReader dReader;
            //string user12 = Session["User12"].ToString();
            //if (user12 == "ADMIN")
            //{
            SqlCommand getUsercmd = new SqlCommand("SELECT * FROM UserRegistrationDetail where ID is not null");
            //}
            //else
            //{
            // SqlCommand getUsercmd = new SqlCommand("SELECT * FROM UserRegistrationDetail where Email='" + "Jahanzaib@gmail.com" + "'");


            DataTable dt = new DataTable();
            dt.Columns.Add("ID");
            dt.Columns.Add("FirstName");
            dt.Columns.Add("LastName");
            dt.Columns.Add("PracticeLocation");
            dt.Columns.Add("Province");
            dt.Columns.Add("City");
            dt.Columns.Add("PMDC");
            dt.Columns.Add("Mobile");
            dt.Columns.Add("CNIC");
            dt.Columns.Add("CreatedDate");
            dt.Columns.Add("VisitorType");
            dt.Columns.Add("Status");
            dt.Columns.Add("Email");
            dt.Columns.Add("Image");
            dt.Columns.Add("RegistrationID");



            db getUserlist = new db();
            dReader = getUserlist.returnDataReader(getUsercmd);


            while (dReader.Read())
            {
                var dr = dt.NewRow();
                dr["ID"] = HttpUtility.HtmlDecode(GetUrl(dReader["RegistrationID"].ToString(), dReader["FirstName"].ToString()));
                dr["FirstName"] = HttpUtility.HtmlDecode(GetRegistrationCertificate(dReader["RegistrationID"].ToString(), dReader["FirstName"].ToString()));
                dr["LastName"] = HttpUtility.HtmlDecode(GetRegistrationCertificate(dReader["RegistrationID"].ToString(), dReader["LastName"].ToString()));
                dr["PracticeLocation"] = dReader["PracticeLocation"].ToString();
                dr["Province"] = dReader["Province"].ToString();
                dr["City"] = dReader["City"].ToString();
                dr["CNIC"] = dReader["CNIC"].ToString();
                dr["PMDC"] = dReader["PMDC"].ToString();
                dr["FirstName"] = dReader["FirstName"].ToString();
                dr["MOBILE"] = dReader["MOBILE"].ToString();
                dr["Email"] = dReader["Email"].ToString();
                dr["CreatedDate"] = dReader["CreatedDate"].ToString();
                    
                dr["VisitorType"] = HttpUtility.HtmlDecode(GetRegistrationCard(dReader["VisitorType"].ToString(), dReader["RegistrationID"].ToString()));
                dr["Status"] = HttpUtility.HtmlDecode(GetRegistrationConfirmation(dReader["Status"].ToString(), dReader["RegistrationID"].ToString()));
                dr["Image"] = dReader["Image"].ToString();


                dt.Rows.Add(dr);
            }

            SqlCommand rdsfeedback = new SqlCommand("SELECT * FROM UserRegistrationDetail where ID is not null");



            User1.DataSource = dt;
            User1.DataBind();


            }
            else
            {
                SqlDataReader dReader;
                string User = Session["User"].ToString();
                //if (user12 == "ADMIN")
                //{
                //SqlCommand getUsercmd = new SqlCommand("SELECT * FROM UserRegistrationDetail where ID is not null");
                //}
                //else
                //{
                SqlCommand getUsercmd = new SqlCommand("SELECT * FROM UserRegistrationDetail where ModifyBy='" + User + "'");


                DataTable dt = new DataTable();
                dt.Columns.Add("ID");
                dt.Columns.Add("FirstName");
                dt.Columns.Add("LastName");
                dt.Columns.Add("PracticeLocation");
                dt.Columns.Add("Province");
                dt.Columns.Add("City");
                dt.Columns.Add("PMDC");
                dt.Columns.Add("Mobile");
                dt.Columns.Add("CNIC");
                dt.Columns.Add("CreatedDate");
                dt.Columns.Add("VisitorType");
                dt.Columns.Add("Status");
                dt.Columns.Add("Email");
                dt.Columns.Add("Image");
                dt.Columns.Add("RegistrationID");



                db getUserlist = new db();
                dReader = getUserlist.returnDataReader(getUsercmd);


                while (dReader.Read())
                {
                    var dr = dt.NewRow();
                    dr["ID"] = HttpUtility.HtmlDecode(GetUrl(dReader["RegistrationID"].ToString(), dReader["FirstName"].ToString()));
                    dr["FirstName"] = HttpUtility.HtmlDecode(GetRegistrationCertificate(dReader["FirstName"].ToString(), dReader["RegistrationID"].ToString()));
                    dr["LastName"] = HttpUtility.HtmlDecode(GetRegistrationCertificate(dReader["RegistrationID"].ToString(), dReader["LastName"].ToString()));
                    dr["PracticeLocation"] = dReader["PracticeLocation"].ToString();
                    dr["Province"] = dReader["Province"].ToString();
                    dr["City"] = dReader["City"].ToString();
                    dr["CNIC"] = dReader["CNIC"].ToString();
                    dr["PMDC"] = dReader["PMDC"].ToString();
                    dr["FirstName"] = dReader["FirstName"].ToString();
                    dr["MOBILE"] = dReader["MOBILE"].ToString();
                    dr["Email"] = dReader["Email"].ToString();
                    dr["CreatedDate"] = dReader["CreatedDate"].ToString();

                    dr["VisitorType"] = HttpUtility.HtmlDecode(GetRegistrationCard(dReader["VisitorType"].ToString(), dReader["RegistrationID"].ToString()));
                    dr["Status"] = HttpUtility.HtmlDecode(GetRegistrationConfirmation(dReader["Status"].ToString(), dReader["RegistrationID"].ToString()));
                    dr["Image"] = dReader["Image"].ToString();


                    dt.Rows.Add(dr);
                }

                SqlCommand rdsfeedback = new SqlCommand("SELECT * FROM UserRegistrationDetail where ID is not null");



                User1.DataSource = dt;
                User1.DataBind();
            }
        }

        private string GetUrl(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"UpdateRegistrationForm.aspx" + "?ID=" + p1 + "\">" + p1 + "</a>";
            //return "<a href=\"UpdateRegistrationForm.aspx" + "?ID=" + p1 + "\">" + p1 + "</a>";
        }

        private string GetRegistrationCard(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"Badges.aspx" + "?ID=" + p2 + "\">" + p1 + "</a>";
        }

        private string GetRegistrationConfirmation(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"RegistrationConfirmation.aspx" + "?ID=" + p2 + "\">" + p1 + "</a>";
        }

        private string GetRegistrationCertificate(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"Certificate.aspx" + "?ID=" + p1 + "\">" + p2 + "</a>";
        }
    }
}