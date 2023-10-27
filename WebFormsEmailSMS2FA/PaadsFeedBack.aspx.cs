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
    public partial class PaadsFeedBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataReader dReader;


            string ID = Request.QueryString["ID"].ToString();
            //string Question1 = Q1;
            //string EmailUser = Session["User"].ToString();
            ///SqlConnection conn = new SqlConnection(databaseString);
            //conn.Open();
            string sQuery = string.Format("INSERT INTO GeneralFeedback (Q1ShahidJamil,Q1Fundaro,Q1Redka,Q1Firas,Q2ShahidJamil,Q2Fundaro,Q2Redka,Q2Firas,Q3ShahidJamil,Q3Fundaro,Q3Redka,Q3Firas,Q4ShahidJamil,Q4Fundaro,Q4Redka,Q4Firas,Q5ShahidJamil,Q5Fundaro,Q5Redka,Q5Firas,Q6ShahidJamil,Q6Fundaro,Q6Redka,Q6Firas,Q7ShahidJamil,Q7Fundaro,Q7Redka,Q7Firas,Q8ShahidJamil,Q8Fundaro,Q8Redka,Q8Firas,RegID,createddate) Values (@Q1ShahidJamil,@Q1Fundaro,@Q1Redka,@Q1Firas,@Q2ShahidJamil,@Q2Fundaro,@Q2Redka,@Q2Firas,@Q3ShahidJamil,@Q3Fundaro,@Q3Redka,@Q3Firas,@Q4ShahidJamil,@Q4Fundaro,@Q4Redka,@Q4Firas,@Q5ShahidJamil,@Q5Fundaro,@Q5Redka,@Q5Firas,@Q6ShahidJamil,@Q6Fundaro,@Q6Redka,@Q6Firas,@Q7ShahidJamil,@Q7Fundaro,@Q7Redka,@Q7Firas,@Q8ShahidJamil,@Q8Fundaro,@Q8Redka,@Q8Firas,@RegID,@createddate)");

            SqlConnection con = new SqlConnection(databaseString);

            con.Open();
            SqlCommand cmd = new SqlCommand(sQuery, con);
            ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
            cmd.Parameters.AddWithValue("@RegID", ID);
            cmd.Parameters.AddWithValue("@Q1ShahidJamil", Q1ShahidJamil.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q1Fundaro", Q1Fundaro.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q1Redka", Q1Redka.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q1Firas", Q1Firas.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q2ShahidJamil", Q2ShahidJamil.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q2Fundaro", Q2Fundaro.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q2Redka", Q2Redka.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q2Firas", Q2Firas.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q3ShahidJamil", Q3ShahidJamil.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q3Fundaro",     Q3Fundaro.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q3Redka",       Q3Redka.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q3Firas",       Q3Firas.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q4ShahidJamil", Q4ShahidJamil.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q4Fundaro", Q4Fundaro.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q4Redka", Q4Redka.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q4Firas", Q4Firas.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q5ShahidJamil", Q5ShahidJamil.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q5Fundaro", Q5Fundaro.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q5Redka", Q5Redka.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q5Firas", Q5Firas.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q6ShahidJamil", Q6ShahidJamil.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q6Fundaro", Q6Fundaro.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q6Redka", Q6Redka.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q6Firas", Q6Firas.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q7ShahidJamil", Q7ShahidJamil.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q7Fundaro", Q7Fundaro.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q7Redka", Q7Redka.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q7Firas", Q7Firas.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q8ShahidJamil", Q8ShahidJamil.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q8Fundaro", Q8Fundaro.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q8Redka", Q8Redka.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Q8Firas", Q8Firas.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@createddate", DateTime.Now);
            

            //cmd.Parameters.AddWithValue("@TermsCondition", CheckBox1.Checked);
            cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
            con.Close();


            Response.Write("<script>alert('Thank You For your Valuable feedback.We will Do More attractive workshop in future as well');window.location ='Default';</script>");

        }
    }
}