using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Optimization;

namespace WebFormsEmailSMS2FA
{
    public partial class Certificate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string ID = Request.QueryString["ID"].ToString();

                string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlDataReader dReader;
                //string ID = Request.QueryString["ID"].ToString();
                //string EmailUser = Session["User"].ToString();
                SqlConnection conn = new SqlConnection(databaseString);
                conn.Open();
                SqlCommand getUsercmd = new SqlCommand("SELECT FIRSTNAME,LASTNAME,Speciality,Qualification,Institute,PracticeLocation,Province,City,PMDC,Mobile,CNIC,CREATEDDATE,IMAGE,VISITORTYPE,Email,ZipCode,ClinicAddress,RegistrationFees,PrivateClinic,Affiliation,BasicFillersHandsW,BasicBotulinumToxinAW,ThreadsHandsW,MonoThreadsFaceNeckW,AdvanceFillersHandsW,AdvanceBotulinumToxinAW,LaserCourseESCAD,PaymentMode,Registration,RegistrationNormalReg,RegistrationOnSite,Title FROM UserRegistrationDetail where RegistrationID='" + ID + "'", conn);
                dReader = getUsercmd.ExecuteReader();


                while (dReader.Read())
                {

                    //TextBox1.Text = dReader.GetSqlValue(8).ToString().ToUpper();
                    Label1.Text = dReader["Title"].ToString() + " " + dReader.GetSqlValue(0).ToString().ToUpper() + " " + dReader.GetSqlValue(1).ToString().ToUpper();
                    if (dReader["AdvanceFillersHandsW"].ToString() == "True")
                    {
                        Label2.Text += "Fillers";
                        
                        
                        //    chkAdvFillers.Checked = true;
                    }
                    if (dReader["AdvanceBotulinumToxinAW"].ToString() == "True")
                    {
                        if(dReader["AdvanceBotulinumToxinAW"].ToString() == "True" && dReader["AdvanceFillersHandsW"].ToString() == "True")
                        {
                            Label2.Text += ",";
                        }
                        Label2.Text += " Botulinum Toxin";
                        

                            //chkAdvBotulin.Checked = true;
                        }
                    //lblTitle.Text = dReader["Title"].ToString().ToUpper();
                    //lblLName.Text = dReader.GetSqlValue(1).ToString().ToUpper();

                }
                getUsercmd.Dispose();


                conn.Close();
            }
            }
    }
}