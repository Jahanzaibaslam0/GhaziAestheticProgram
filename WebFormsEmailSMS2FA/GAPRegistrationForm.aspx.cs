using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Security.Principal;
using Syncfusion.HtmlConverter;
using Syncfusion.Pdf;

namespace WebFormsEmailSMS2FA
{
    public partial class OnSideRegistrationForm : System.Web.UI.Page
    {
        
        string PaymentMode = "";
        int Payment = 0;
        int Discount = 0;

        string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //RbtnBasicbotullinumYes.Enabled = false;
            //RbtnBasicbotullinumNo.Enabled = false;
            //RbtnBasicFillerYes.Enabled = false;
            //RbtnBasicFillerNo.Enabled = false;
            //RbtnMonoThreadsWorkshopYes.Enabled = false;
            //RbtnMonoThreadsWorkshopNo.Enabled = false;
            //RbtnThreadsonWorkshopYes.Enabled = false;
            //RbtnThreadsonWorkshopNo.Enabled = false;
            //chkHandsOnTraning.Enabled = false;
            //chkAdvBotulin.Enabled = false;
            //chkAdvFillers.Enabled = false;
            //RbtnLaserYes.Enabled = false;
            //RbtnLaserNo.Enabled = false;
            //RbtnAdvanceHandsWorkshopYes.Enabled = false;
            //RbtnAdvanceHandsWorkshopNo.Enabled = false;
            //RbtnRegistrationEarlyBird.Enabled = true;
            //RbtnRegistrationNormal.Enabled = false;
            //RbtnRegistrationOnSide.Enabled = false;
            //DateTime EarlyDate = new DateTime(2019, 6, 16);
            //DateTime NormalDate = new DateTime(2019, 7, 6);
            //if (DateTime.Now >= EarlyDate && DateTime.Now <= NormalDate)
            //{
            //    RbtnRegistrationEarlyBird.Enabled = false;
            //    RbtnRegistrationNormal.Enabled = true;
            //    RbtnRegistrationOnSide.Enabled = false;
            //}
            //else if (DateTime.Now >= NormalDate)
            //{
            //    RbtnRegistrationEarlyBird.Enabled = false;
            //    RbtnRegistrationNormal.Enabled = false;
            //    RbtnRegistrationOnSide.Enabled = true;
            //}
            //if (Session["User"] != null)
            //{
            //    if (Session["User"].ToString() == "NOSHINARSHAD@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE2@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE3@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE4@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE5@GMAIL.COM")
            //    {
            //        string User = Session["User"].ToString();
                    
            //    }
                
            //}
            //else
            //{
            //    Response.Redirect("~/Account/Login.aspx");

            //}
            //string UserEmail = Session["User"].ToString();
            //if (!IsPostBack)
            //{
            //    string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //    SqlDataReader dReader;


            //    SqlConnection conn = new SqlConnection(databaseString);
            //    conn.Open();
            //    SqlCommand getUsercmd = new SqlCommand("SELECT UserName,Email,PhoneNumber,Password FROM Users where Email='" + UserEmail + "'", conn);
            //    dReader = getUsercmd.ExecuteReader();

            //    while (dReader.Read())
            //    {

            //        txtName.Text = dReader.GetSqlValue(0).ToString().ToUpper();
            //        txtEmailId.Text = dReader.GetSqlValue(1).ToString();
            //        //DropDownSpeciality.Items.FindByValue(dReader.GetSqlValue(2).ToString()).Selected = true;
            //        txtMobileNo.Text = dReader.GetSqlValue(2).ToString();
            //        //txtPassword.Text = dReader.GetSqlValue(3).ToString();
            //        //txtRePassword.Text = dReader.GetSqlValue(2).ToString();



            //    }

            //    getUsercmd.Dispose();


            //    conn.Close();
            //}

            if (RbtnRegistrationEarlyBird.Checked)
            {
                //chkAdvFillers.Enabled = true;
                //chkAdvBotulin.Enabled = true;
                //RbtnLaserYes.Enabled = true;
                //RbtnLaserNo.Enabled = true;
                //RbtnAdvanceHandsWorkshopYes.Enabled = true;
                //chkHandsOnTraning.Enabled = true;
                //RbtnAdvanceHandsWorkshopNo.Enabled = true;
                Payment += 10000;
            }
            else if (RbtnRegistrationNormal.Checked)
            {
                //chkAdvFillers.Enabled = true;
                //chkAdvBotulin.Enabled = true;
                //RbtnLaserYes.Enabled = true;
                //RbtnLaserNo.Enabled = true;
                //chkHandsOnTraning.Enabled = true;
                //RbtnAdvanceHandsWorkshopYes.Enabled = true;
                //RbtnAdvanceHandsWorkshopNo.Enabled = true;
                Payment += 12000;
            }
            else if (RbtnRegistrationOnSide.Checked)
            {
                //chkAdvFillers.Enabled = true;
                //chkAdvBotulin.Enabled = true;
                //RbtnLaserYes.Enabled = true;
                //chkHandsOnTraning.Enabled = true;
                //RbtnLaserNo.Enabled = true;
                //RbtnAdvanceHandsWorkshopYes.Enabled = true;
                //RbtnAdvanceHandsWorkshopNo.Enabled = true;
                Payment += 15000;
            }
            if (RbtnBasicFillerYes.Checked)
            {
                Payment += 10000;
            }
            if (RbtnBasicbotullinumYes.Checked)
            {
                Payment += 10000;
            }
            if (RbtnThreadsonWorkshopYes.Checked)
            {
                Payment += 10000;
            }
            if (RbtnMonoThreadsWorkshopYes.Checked)
            {
                Payment += 10000;
            }
            if (chkAdvBotulin.Checked)
            {
                Payment += 25000;
            }
            if (chkAdvFillers.Checked)
            {
                Payment += 25000;
            }
            if (RbtnLaserYes.Checked)
            {
                Payment += 25000;
                Discount += 5000;
            }


            txtinWords.Text = this.ConvertNumbertoWords(Payment - Discount);//Payment.ToString();
            txtDiscount.Text = Discount.ToString();
            txtTotalAmount.Text = (Payment - Discount).ToString();


        }

        //protected void btnrefresh_Click(object sender, EventArgs e)
        //{
        //    image2.ImageUrl = "~/Captcha1.aspx";
        //}
        public string ConvertNumbertoWords(long number)
        {
            if (number == 0) return "ZERO";
            if (number < 0) return "minus " + ConvertNumbertoWords(Math.Abs(number));
            string words = "";
            if ((number / 1000000) > 0)
            {
                words += ConvertNumbertoWords(number / 100000) + " LAKES ";
                number %= 1000000;
            }
            if ((number / 1000) > 0)
            {
                words += ConvertNumbertoWords(number / 1000) + " THOUSAND ";
                number %= 1000;
            }
            if ((number / 100) > 0)
            {
                words += ConvertNumbertoWords(number / 100) + " HUNDRED ";
                number %= 100;
            }
            //if ((number / 10) > 0)  
            //{  
            // words += ConvertNumbertoWords(number / 10) + " RUPEES ";  
            // number %= 10;  
            //}  
            if (number > 0)
            {
                if (words != "") words += "AND ";
                var unitsMap = new[]
                {
                    "ZERO", "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE", "TEN", "ELEVEN", "TWELVE", "THIRTEEN", "FOURTEEN", "FIFTEEN", "SIXTEEN", "SEVENTEEN", "EIGHTEEN", "NINETEEN"
                };
                var tensMap = new[]
                {
                    "ZERO", "TEN", "TWENTY", "THIRTY", "FORTY", "FIFTY", "SIXTY", "SEVENTY", "EIGHTY", "NINETY"
                };
                if (number < 20) words += unitsMap[number];
                else
                {
                    words += tensMap[number / 10];
                    if ((number % 10) > 0) words += " " + unitsMap[number % 10];
                }
            }
            return words;
        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            //if (this.txtimagecode.Text == this.Session["RecaptchaImageValue"].ToString())
            //{
            //    lblmsg.Text = "Match";

            //}
            //else
            //{

            //    lblmsg.Text = "Code is not Valid";
            //    return;

            //}
            //this.txtimagecode.Text = "";

            if (RbtnOnline.Checked)
            {
                PaymentMode = RbtnOnline.Text;
            }
            else if (RbtnCash.Checked)
            {
                PaymentMode = RbtnCash.Text;
            }
            else if (RbtnBankDraft.Checked)
            {
                PaymentMode = RbtnBankDraft.Text;
            }

            this.InsertDataInDB();

            Page.Validate();
        }

        public void InsertDataInDB()
        {
            if (!FileUpload1.HasFile)
            {
                lblImage.Text = "Please insert Image";
            }
            else
            {
                int lenght = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[lenght];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, lenght);

                //string sQuery = string.Format("INSERT INTO StudentInfo (NAME) VALUES ('{0}')", name);
                //SqlConnection con = new SqlConnection(sConnectionString);
                string EmailUser = Session["User"].ToString();
                //con.Open();
                //SqlCommand cmd = new SqlCommand(sQuery, con);
                //cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
                // string sQuery = string.Format("INSERT INTO Complaint (Phoneno,Alternateno,City,[Descripton],Issue) Values (@Phoneno,@Alternateno,@City,@Description,@Issue)");
                int Payment = 0;
                string sQuery = string.Format("INSERT INTO UserRegistrationDetail (FirstName,LastName,Speciality,Qualification,PracticeLocation,VisitorType,Province,City,Mobile,Pmdc,Email,CNIC,Image,Status,ZipCode,ClinicAddress,Institute,Affiliation,PrivateClinic,BasicFillersHandsW,BasicBotulinumToxinAW,ThreadsHandsW,MonoThreadsFaceNeckW,AdvanceFillersHandsW,AdvanceBotulinumToxinAW,LaserCourseESCAD,PaymentMode,Registration,RegistrationEarlyBird,RegistrationNormalReg,RegistrationOnSite,RegistrationFees,FeesinWords,Discount,Title,RegistrationErrorType,RegistrationErrorComment,ModifyBy,ModifyDate) Values (@FirstName,@LastName,@Speciality,@Qualification,@PracticeLocation,@VisitorType,@Province,@City,@Mobile,@Pmdc,@Email,@CNIC,@Image,@Status,@ZipCode,@ClinicAddress,@Institute,@Affilation,@PrivateClinic,@BasicFillersHandsW,@BasicBotulinumToxinAW,@ThreadsHandsW,@MonoThreadsFaceNeckW,@AdvanceFillersHandsW,@AdvanceBotulinumToxinAW,@LaserCourseESCAD,@PaymentMode,@Registration,@RegistrationEarlyBird,@RegistrationNormalReg,@RegistrationOnSite,@RegistrationFees,@FeesinWords,@Discount,@Title,@RegistrationErrorType,@RegistrationErrorComment,@ModifyBy,@ModifyDate)");

                SqlConnection con = new SqlConnection(conString);

                con.Open();
                SqlCommand cmd = new SqlCommand(sQuery, con);
                ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
                cmd.Parameters.AddWithValue("@FirstName", txtName.Text.Trim().ToUpper());
                cmd.Parameters.AddWithValue("@LastName", txtGuardian.Text.Trim().ToUpper());
                cmd.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Title", DropDownTitle.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text.Trim());
                cmd.Parameters.AddWithValue("@PracticeLocation", txtResidentialAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@VisitorType", DropDownVisitor.SelectedItem.Text);
                //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
                cmd.Parameters.AddWithValue("@Province", DropDownProvince.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                cmd.Parameters.AddWithValue("@Mobile", txtMobileNo.Text.Trim());
                cmd.Parameters.AddWithValue("@Pmdc", txtPmdcNo.Text.Trim().ToUpper());
                cmd.Parameters.AddWithValue("@Email", txtEmailId.Text.Trim());
                //cmd.Parameters.AddWithValue("@EventID", txtEvent.Text.Trim());
                cmd.Parameters.AddWithValue("@CNIC", txtCNIC.Text.Trim());
                //cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                //cmd.Parameters.AddWithValue("@RePassword", txtRePassword.Text.Trim());
                cmd.Parameters.AddWithValue("@status", "Open");
                cmd.Parameters.AddWithValue("@image", pic);
                cmd.Parameters.AddWithValue("@ZipCode", txtPostalCode.Text.Trim());
                cmd.Parameters.AddWithValue("@ClinicAddress", txtClinicAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@Institute", txtInsitute.Text.Trim());
                cmd.Parameters.AddWithValue("@PrivateClinic", txtClinicName.Text.Trim());
                cmd.Parameters.AddWithValue("@Affilation", txtAffilatedBy.Text.Trim());
                cmd.Parameters.AddWithValue("@BasicFillersHandsW", RbtnBasicFillerYes.Checked);
                cmd.Parameters.AddWithValue("@BasicBotulinumToxinAW", RbtnBasicbotullinumYes.Checked);
                cmd.Parameters.AddWithValue("@ThreadsHandsW", RbtnThreadsonWorkshopYes.Checked);
                cmd.Parameters.AddWithValue("@MonoThreadsFaceNeckW", RbtnMonoThreadsWorkshopYes.Checked);
                cmd.Parameters.AddWithValue("@AdvanceFillersHandsW", chkAdvFillers.Checked);
                cmd.Parameters.AddWithValue("@AdvanceBotulinumToxinAW", chkAdvBotulin.Checked);
                cmd.Parameters.AddWithValue("@LaserCourseESCAD", RbtnLaserYes.Checked);
                cmd.Parameters.AddWithValue("@PaymentMode", PaymentMode);
                cmd.Parameters.AddWithValue("@Registration", RbtnRegistrationNormal.Checked || RbtnRegistrationEarlyBird.Checked || RbtnRegistrationOnSide.Checked);
                cmd.Parameters.AddWithValue("@RegistrationEarlyBird", RbtnRegistrationEarlyBird.Checked);
                cmd.Parameters.AddWithValue("@RegistrationNormalReg", RbtnRegistrationNormal.Checked);
                cmd.Parameters.AddWithValue("@RegistrationOnSite", RbtnRegistrationOnSide.Checked);
                cmd.Parameters.AddWithValue("@RegistrationFees", txtTotalAmount.Text.Trim());
                cmd.Parameters.AddWithValue("@Feesinwords", txtinWords.Text.Trim());
                cmd.Parameters.AddWithValue("@Discount", Discount);
                cmd.Parameters.AddWithValue("@RegistrationErrorType", DropDownRegError.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@RegistrationErrorComment", txtRegistrationErrorComment.Text.Trim());
                cmd.Parameters.AddWithValue("@ModifyBy", EmailUser);
                cmd.Parameters.AddWithValue("@ModifyDate", DateTime.Now);
                

                //cmd.Parameters.AddWithValue("@TermsCondition", CheckBox1.Checked);
                cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
                con.Close();
                RegistrationSubmissionEmail email = new RegistrationSubmissionEmail();
                email.Email1(txtEmailId.Text, "REGISTRATION SUBMISSION EMAIL", txtName.Text.Trim().ToUpper(), txtGuardian.Text.Trim().ToUpper());
                Response.Write("<script>alert('Registration Sucessfully Done' );window.location ='Default.aspx';</script>");




            }
        }

        protected void RbtnOnline_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RbtnBankDraft_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RbtnCash_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RbtnRegistrationEarlyBird_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 10000;


        }

        protected void RbtnRegistrationNormal_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 12000;

        }

        protected void RbtnRegistrationOnSide_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 15000;

        }

        protected void RbtnBasicFillerYes_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 10000;

        }

        protected void RbtnBasicbotullinumYes_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 10000;

        }

        protected void RbtnThreadsonWorkshopYes_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 10000;

        }

        protected void RbtnMonoThreadsWorkshopYes_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 10000;

        }

        protected void RbtnAdvanceFiller_CheckedChanged(object sender, EventArgs e)
        {
            //if(RbtnAdvanceFiller.Checked)
            //{
            //    RbtnAdvanceFiller.Checked = false;
            //}
            //else
            //{
            //    RbtnAdvanceFiller.Checked = true;
            //}

            Payment += 25000;

        }

        protected void RbtnAdvanceBotulinum_CheckedChanged(object sender, EventArgs e)
        {
            //if (RbtnAdvanceBotulinum.Checked)
            //{
            //    RbtnAdvanceBotulinum.Checked = false;
            //}
            //else
            //{
            //    RbtnAdvanceBotulinum.Checked = true;
            //}
            Payment += 25000;

        }

        protected void RbtnLaserYes_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 25000;
            Discount = 5000;

        }

        protected void RbtnBasicFillerNo_CheckedChanged(object sender, EventArgs e)
        {
            Payment -= 10000;

        }

        protected void RbtnBasicbotullinumNo_CheckedChanged(object sender, EventArgs e)
        {
            Payment -= 10000;

        }

        protected void RbtnThreadsonWorkshopNo_CheckedChanged(object sender, EventArgs e)
        {
            Payment -= 10000;

        }

        protected void RbtnMonoThreadsWorkshopNo_CheckedChanged(object sender, EventArgs e)
        {
            Payment -= 10000;

        }

        public void RbtnLaserNo_CheckedChanged(object sender, EventArgs e)
        {
            Payment -= 25000;


        }

        protected void RbtnAdvanceHandsWorkshopYes_CheckedChanged(object sender, EventArgs e)
        {
            chkAdvFillers.Enabled = true;
            chkAdvBotulin.Enabled = true;
        }

        protected void RbtnAdvanceHandsWorkshopNo_CheckedChanged(object sender, EventArgs e)
        {

            chkAdvFillers.Enabled = false;
            chkAdvBotulin.Enabled = false;
        }

        protected void chkHandsOnTraning_CheckedChanged(object sender, EventArgs e)
        {
            //RbtnBasicbotullinumYes.Enabled = true;
            //RbtnBasicbotullinumNo.Enabled = true;
            //RbtnBasicFillerYes.Enabled = true;
            //RbtnBasicFillerNo.Enabled = true;
            //RbtnMonoThreadsWorkshopYes.Enabled = true;
            //RbtnMonoThreadsWorkshopNo.Enabled = true;
            //RbtnThreadsonWorkshopYes.Enabled = true;
            //RbtnThreadsonWorkshopNo.Enabled = true;

        }

        protected void chkAdvFillers_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 25000;
        }

        protected void chkAdvBotulin_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 25000;
        }
    }
}