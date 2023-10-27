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
    public partial class FeedbackShahidJamil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataReader dReader;


            string ID = Request.QueryString["ID"].ToString();//Session["PMDC"].ToString();//Request.QueryString["ID"].ToString();
            //string Question1 = Q1;
            //string EmailUser = Session["User"].ToString();
            ///SqlConnection conn = new SqlConnection(databaseString);
            //conn.Open();
            string sQuery = string.Format("INSERT INTO FeedbackShahidJamil (FAContent,FASpeaker,FAnalysisContent,FAnalysisSpeaker,TPContent,TPSpeaker,WhyChooseYvioreContent,WhyChooseYvioreSpeaker,[Which part did you like the most in Ghazi Aesthetics Program (G.A.P) Workshop?],[Which part of Workshop would you suggest for improvement?],[What are the topics you look forward to in Ghazi Aesthetics Program (G.A.P) next coming workshop?],RegID,createddate,DoctorName,ClinicName,MobileNumber,Email,City,LipInjectionTechniqueContent,LipInjectionTechniqueSpeaker,PeriOrbitalFillerContent,PeriOrbitalFillerSpeaker) Values (@FAContent,@FASpeaker,@FAnalysisContent,@FAnalysisSpeaker,@TPContent,@TPSpeaker,@WhyChooseYvioreContent,@WhyChooseYvioreSpeaker,@Q1,@Q2,@Q3,@RegID,@createddate,@DoctorName,@ClinicName,@MobileNumber,@Email,@City,@LipInjectionTechniqueContent,@LipInjectionTechniqueSpeaker,@PeriOrbitalFillerContent,@PeriOrbitalFillerSpeaker)");

            SqlConnection con = new SqlConnection(databaseString);

            con.Open();
            SqlCommand cmd = new SqlCommand(sQuery, con);
            ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
            cmd.Parameters.AddWithValue("@RegID", ID);
            cmd.Parameters.AddWithValue("@Q1", txtQ1.Text.Trim());
            cmd.Parameters.AddWithValue("@Q2", txtQ2.Text.Trim());
            cmd.Parameters.AddWithValue("@Q3", txtQ3.Text.Trim());
            cmd.Parameters.AddWithValue("@FAContent", FAContent.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@FASpeaker", FASpeaker.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@FAnalysisContent", AOFContent.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@FAnalysisSpeaker", AOFSpeaker.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TPContent", TPContent.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TPSpeaker", TPSpeaker.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@WhyChooseYvioreContent", WhyChooseYvioreContent.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@WhyChooseYvioreSpeaker", WhyChooseYvioreSpeaker.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@createddate", DateTime.Now);
            cmd.Parameters.AddWithValue("@DoctorName", txtDoctorName.Text.Trim());
            cmd.Parameters.AddWithValue("@ClinicName", txtClinic.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@MobileNumber", txtMobileNumber.Text.Trim());
            cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
            cmd.Parameters.AddWithValue("@LipInjectionTechniqueContent", LipInjectionTechniqueContent.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@LipInjectionTechniqueSpeaker", LipInjectionTechniqueSpeaker.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PeriOrbitalFillerContent", PeriOrbitalFillerContent.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PeriOrbitalFillerSpeaker", PeriOrbitalFillerSpeaker.SelectedItem.Value);
            
            //cmd.Parameters.AddWithValue("@TermsCondition", CheckBox1.Checked);
            cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
            con.Close();


            Response.Write("<script>alert('Thank You For your valuable feedback agisnt Mr. Shahid Jamil workshop.We will do more attractive workshop in future as well');window.location ='Default';</script>");

        }
    }
}