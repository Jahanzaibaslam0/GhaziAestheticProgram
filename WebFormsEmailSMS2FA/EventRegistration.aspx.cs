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
    public partial class Sample : System.Web.UI.Page
    {
        string EventSource;
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        public void InsertDataInDB()
        {

            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string sQuery = string.Format("INSERT INTO SignUp (FirstName,LastName,City,Email,ContactNo,Speciality,CreatedDate,Comment,EmailSubs,WhatsappSubs,SMSSubs,AreUAttend,EventName,EventHearAbout,PeopleAttend) Values (@FirstName,@LastName,@City,@Email,@PhoneNumber,@Speciality,@CreatedDate,@Comment,@EmailSub,@WhatsappSub,@SMSSub,@AreYouattend,@EventName,@EventHearAbout,@PeopleAttend)");

            SqlConnection con = new SqlConnection(conString);

            con.Open();
            SqlCommand cmd = new SqlCommand(sQuery, con);
            ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
            //cmd.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());
            cmd.Parameters.AddWithValue("@FirstName", txtFirsName.Text.Trim());
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
            //cmd.Parameters.AddWithValue("@Country", DropDownCountry.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@City", DropDownCity.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text.Trim());
            cmd.Parameters.AddWithValue("@Speciality", txtCompanyName.Text.Trim());
            cmd.Parameters.AddWithValue("@CreatedDate", DateTime.UtcNow.Date);
            cmd.Parameters.AddWithValue("@Comment", txtComment.Text.Trim());
            cmd.Parameters.AddWithValue("@AreYouattend", RbtnAttend.Checked);
            cmd.Parameters.AddWithValue("@EmailSub", chkboxEmailSub.Checked);
            cmd.Parameters.AddWithValue("@SMSSub", chkboxSMSSub.Checked);
            cmd.Parameters.AddWithValue("@WhatsappSub", chkboxWhatsappSub.Checked);
            cmd.Parameters.AddWithValue("@EventName", "INTERNATIONAL POULTRY EXPO - IPEX 2023");
            cmd.Parameters.AddWithValue("@EventHearAbout", DropDownSource.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@PeopleAttend", txtNumberofPeople.Text.Trim());
            cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
            con.Close();


        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            this.InsertDataInDB();


            Response.Write("<script>alert('Thanks For Signing Up Your Account! Your Request is sended to Administrator and will shorthly update you more detail via Email.' );window.location ='Default.aspx';</script>");

        }

        protected void RbtnAttend_CheckedChanged(object sender, EventArgs e)
        {

        }

        
    }
}