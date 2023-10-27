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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            MasterPageFile = "~/Site.Master";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void InsertDataInDB()
        {

            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string sQuery = string.Format("INSERT INTO SignUp (FirstName,LastName,City,Country,Speciality,Email,ContactNo,PMDC) Values (@FirstName,@LastName,@City,@Country,@Speciality,@Email,@PhoneNumber,@PMDC)");

            SqlConnection con = new SqlConnection(conString);

            con.Open();
            SqlCommand cmd = new SqlCommand(sQuery, con);
            ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
            //cmd.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());
            cmd.Parameters.AddWithValue("@FirstName", txtFirsName.Text.Trim());
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
            cmd.Parameters.AddWithValue("@Country", DropDownCountry.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@City", DropDownCity.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text.Trim());
            //cmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
            //cmd.Parameters.AddWithValue("@ConfirmPassword", ConfirmPassword.Text.Trim());
            //cmd.Parameters.AddWithValue("@PMDC", txtPmdcNo.Text.Trim());
            //cmd.Parameters.AddWithValue("@RegistrationID", txtRegistrationID.Text.Trim());
            cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
            con.Close();


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            this.InsertDataInDB();
            string SendEmail = txtEmail.Text.Trim();

       
            SignUpVerificationEmail Email1 = new SignUpVerificationEmail();

            Email1.Email1(SendEmail, "Thank You for Signing up Ghazi Aesthetics Program (G.A.P)", txtFirsName.Text.Trim().ToUpper());

            Response.Write("<script>alert('Thanks For Signing Up Your Account! Your Request is sended to Administrator and will shorthly update you more detail via Email.' );window.location ='Default.aspx';</script>");
        }

        
    }
}