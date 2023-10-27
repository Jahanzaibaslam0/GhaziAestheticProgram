using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WebFormsEmailSMS2FA.Models;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace WebFormsEmailSMS2FA.Account
{
    public partial class Register : Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            MasterPageFile = "~/Site.Master";
        }
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text, PhoneNumber = txtPhoneNumber.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                string code = manager.GenerateEmailConfirmationToken(user.Id);
                string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);

                //Saved Data in GhaziDatabase to extract data in Registration Form
                this.InsertDataInDB();
              //  manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");
              
                VerificationEmail email = new VerificationEmail();
                email.Email1(Email.Text, "Confirm your account",  callbackUrl);
                //Email1(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                if (user.EmailConfirmed)
                {
                  IdentityHelper.SignIn(manager, user, isPersistent: false);
                  IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                else
                {
                    //Response.Write("<script>alert('An email has been sent to your account. Please view the email in your inbox/Spam and confirm your account to complete the registration process.' );window.location ='login.aspx';</script>");
                    ErrorMessage.Text = "An email has been sent to your account. Please view the email in your inbox/Spam and confirm your account to complete the registration process.";
                }
            }
            else 
            {
                //Response.Write("<script>alert('Passwords must be at least 6 characters.Passwords must have at least one special character and one digit('0' - '9').Passwords must have at least one uppercase ('A' - 'Z').' );window.location ='Register.aspx';</script>");

                ErrorMessage.Text = "Passwords must be at least 6 characters.Passwords must have at least one special character (@,$) and one digit('0' - '9').Passwords must have at least one uppercase ('A' - 'Z').";//result.Errors.FirstOrDefault();


            }

        }

        public void InsertDataInDB()
        {

                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                string sQuery = string.Format("INSERT INTO Users (FirstName,LastName,City,Country,Speciality,Email,PhoneNumber,Password,SecurityStamp) Values (@FirstName,@LastName,@City,@Country,@Speciality,@Email,@PhoneNumber,@Password,@SecurityStamp)");

                SqlConnection con = new SqlConnection(conString);

                con.Open();
                SqlCommand cmd = new SqlCommand(sQuery, con);
            ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
                //cmd.Parameters.AddWithValue("@UserName", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@FirstName", txtFirsName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                cmd.Parameters.AddWithValue("@Country", DropDownCountry.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@City", DropDownCity.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
                cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
                cmd.Parameters.AddWithValue("@SecurityStamp", txtPmdcNo.Text.Trim());
                cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
                con.Close();


            }
        }
    }
