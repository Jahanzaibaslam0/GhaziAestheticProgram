using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebFormsEmailSMS2FA
{
    public partial class Gridviewwithsearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.SearchCustomers();
            }
        }

        private void SearchCustomers()
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    string sql = "SELECT * FROM UserRegistrationDetail";
                    if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
                    {
                        sql += " WHERE FirstName LIKE @FirstName + '%'";
                        cmd.Parameters.AddWithValue("@FirstName", txtSearch.Text.Trim());
                    }
                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
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
                        
                        dt.Columns.Add("RegistrationID");
                        sda.Fill(dt);
                        gvCustomers.DataSource = dt;
                        gvCustomers.DataBind();
                    }
                }
            }
        }

        protected void Search(object sender, EventArgs e)
        {
            this.SearchCustomers();
        }

        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            gvCustomers.PageIndex = e.NewPageIndex;
            this.SearchCustomers();
        }
    }
}