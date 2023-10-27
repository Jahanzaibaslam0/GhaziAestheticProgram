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
    public partial class UsersDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }


        private void BindGrid()
        {
            SqlDataReader dReader;

            SqlCommand getUsercmd = new SqlCommand("select SignUp.Email as Email2 ,SignUp.PMDC as PMDC2, SignUp.ContactNo as PHONENo2,USERID, Users.FirstName as FirstName, Users.LastName as LastName, Users.SecurityStamp as PMDC, Users.Email as Email, Users.PhoneNumber as PhoneNumber, Users.Password as Password1, Users.City as City, Users.Country as Country, Users.Speciality as Speciality from Users left Outer Join SignUp  on Users.Email = SignUp.Email and Users.SecurityStamp = SignUp.PMDC");


            DataTable dt = new DataTable();
            dt.Columns.Add("Speciality");
            dt.Columns.Add("FirstName");
            dt.Columns.Add("LastName");
            dt.Columns.Add("PMDC");
            dt.Columns.Add("Country");
            dt.Columns.Add("City");

            dt.Columns.Add("PhoneNumber");

            dt.Columns.Add("Password1");

            dt.Columns.Add("Email");
            dt.Columns.Add("Email2");
            dt.Columns.Add("PMDC2");
            dt.Columns.Add("PHONENo2");

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
                dr["Password1"] = dReader["Password1"].ToString();

                dr["Email2"] = dReader["Email2"].ToString();
                dr["PMDC2"] = dReader["PMDC2"].ToString();
                dr["PHONENo2"] = dReader["PHONENo2"].ToString();


                dt.Rows.Add(dr);
            }

            // SqlCommand rdsfeedback = new SqlCommand("SELECT * FROM UserRegistrationDetail where ID is not null");



            User1.DataSource = dt;
            User1.DataBind();




        }
        private string GetRegistrationCard(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"UpdateUserDetail.aspx" + "?ID=" + p2 + "\">" + p1 + "</a>";
        }

        private string GetRegistrationConfirmation(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"UpdateUserDetail.aspx" + "?ID=" + p2 + "\">" + p1 + "</a>";
        }

        protected void User1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            User1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
    }
}