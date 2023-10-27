using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System;

namespace WebFormsEmailSMS2FA
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string EventSource;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //bool result = IronPdf.License.IsValidLicense("IRONPDF-1063512DD9-448477-93BD9E-FB73693DEB-3F380320-UEx0E6782ECF0D08D8-BROTHERS.IRO190610.4110.45117.PRO.1DEV.1YR.SUPPORTED.UNTIL.10.JUN.2020");
            //Response.Write("<script>alert('" + result + "');window.location ='UserListPage.aspx';</script>");
        }

        public void InsertDataInDB()
        {

            string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string sQuery = string.Format("INSERT INTO SignUp (FirstName,LastName,City,Country,Email,ContactNo,ResidentialAddress,PMDC,Comment,EmailSubs,WhatsappSubs,SMSSubs,AreUAttend,EventName,EventHearAbout,PeopleAttend) Values (@FirstName,@LastName,@City,@Country,@Email,@PhoneNumber,@ResidentialAddress,@PMDC,@Comment,@EmailSub,@WhatsappSub,@SMSSub,@AreYouattend,@EventName,@EventHearAbout,@PeopleAttend)");

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
            cmd.Parameters.AddWithValue("@ResidentialAddress", txtPhoneNumber.Text.Trim());
             cmd.Parameters.AddWithValue("@PMDC", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Comment", txtComment.Text.Trim());
            cmd.Parameters.AddWithValue("@AreYouattend", RbtnAttend.Checked);
            cmd.Parameters.AddWithValue("@EmailSub", chkboxEmailSub.Checked);
            cmd.Parameters.AddWithValue("@SMSSub", chkboxSMSSub.Checked);
            cmd.Parameters.AddWithValue("@WhatsappSub", chkboxWhatsappSub.Checked);
            cmd.Parameters.AddWithValue("@EventName", "INTERNATIONAL POULTRY EXPO-IPEX 2023");
            cmd.Parameters.AddWithValue("@EventHearAbout", "Website");
            cmd.Parameters.AddWithValue("@PeopleAttend", txtNumberofPeople.Text.Trim());
            cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
            con.Close();


        }

        protected void RbtnAttend_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RbtnWebsite_CheckedChanged(object sender, EventArgs e)
        {
            if (RbtnWebsite.Checked == true)
            {
                EventSource = "Website";
            }

        }

        protected void RbtnFriend_CheckedChanged(object sender, EventArgs e)
        {
            if (RbtnFriend.Checked == true)
            {
                EventSource = "Friend";
            }
        }

        protected void RbtnNewsletter_CheckedChanged(object sender, EventArgs e)
        {
            if (RbtnNewsletter.Checked == true)
            {
                EventSource = "NewsLetter";
            }
        }

        protected void RbtnAdvert_CheckedChanged(object sender, EventArgs e)
        {
            if (RbtnAdvert.Checked == true)
            {
                EventSource = "Advertisement";
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            this.InsertDataInDB();


            Response.Write("<script>alert('Thanks For Signing Up Your Account! Your Request is sended to Administrator and will shorthly update you more detail via Email.' );window.location ='Default.aspx';</script>");

        }
    }
}