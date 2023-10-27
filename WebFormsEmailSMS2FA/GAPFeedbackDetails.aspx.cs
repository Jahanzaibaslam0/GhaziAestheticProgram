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
    public partial class GAPFeedbackDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader dReader;
            //string Email = Request.QueryString
            //string user12 = Session["User12"].ToString();
            //if (user12 == "ADMIN")
            //{
            //SqlCommand getUsercmd = new SqlCommand("SELECT * FROM UserRegistrationDetail where ID is not null");
            //}
            //else
            //{
             SqlCommand getUsercmd = new SqlCommand("select USERID, FirstName, LastName, U.SecurityStamp as PMDC, A.Email as Email, Password, A.PhoneNumber as PhoneNumber, City, Country, Speciality from Users U inner join AspNetUsers A on U.Email = A.Email");


            DataTable dt = new DataTable();
            dt.Columns.Add("Speciality");
            dt.Columns.Add("FirstName");
            dt.Columns.Add("LastName");
            dt.Columns.Add("PMDC");
            dt.Columns.Add("Country");
            dt.Columns.Add("City");
            
            dt.Columns.Add("PhoneNumber");
        
            dt.Columns.Add("Password");
            
            dt.Columns.Add("Email");
         


            db getUserlist = new db();
            dReader = getUserlist.returnDataReader(getUsercmd);


            while (dReader.Read())
            {
                var dr = dt.NewRow();
                
                //dr["FirstName"] = HttpUtility.HtmlDecode(GetRegistrationConfirmation(dReader["Email"].ToString(), dReader["FirstName"].ToString()));
                dr["FirstName"] = HttpUtility.HtmlDecode(GetRegistrationConfirmation(dReader["FirstName"].ToString(), dReader["Email"].ToString()));
                dr["LastName"] = dReader["LastName"].ToString();
                dr["Speciality"] = dReader["Speciality"].ToString();
                dr["Country"] = dReader["Country"].ToString();
                dr["City"] = dReader["City"].ToString();
                
                dr["PMDC"] = dReader["PMDC"].ToString();
                
                dr["PhoneNumber"] = dReader["PhoneNumber"].ToString();
                dr["Email"] = dReader["Email"].ToString();
                dr["Password"] = dReader["Password"].ToString();

                


                dt.Rows.Add(dr);
            }

           // SqlCommand rdsfeedback = new SqlCommand("SELECT * FROM UserRegistrationDetail where ID is not null");



            User1.DataSource = dt;
            User1.DataBind();


        

    }

        private string GetRegistrationCard(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"Badges.aspx" + "?ID=" + p2 + "\">" + p1 + "</a>";
        }

        private string GetRegistrationConfirmation(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"GAPWelcomeLetter.aspx" + "?ID=" + p2 + "\">" + p1 + "</a>";
        }

    }

}