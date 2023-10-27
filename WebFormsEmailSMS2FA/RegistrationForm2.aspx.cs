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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string PaymentMode = "";
        int Payment = 0;
        int Discount = 0;

        string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] != null)
            {
                string User = Session["User"].ToString();



            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");

            }

            string UserEmail = Session["User"].ToString();
            if (!IsPostBack)
            {
                string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlDataReader dReader;


                SqlConnection conn = new SqlConnection(databaseString);
                conn.Open();
                SqlCommand getUsercmd = new SqlCommand("SELECT UserName,Email,PhoneNumber,Password FROM Users where Email='" + UserEmail + "'", conn);
                dReader = getUsercmd.ExecuteReader();

                while (dReader.Read())
                {

                    txtName.Text = dReader.GetSqlValue(0).ToString().ToUpper();
                    txtEmailId.Text = dReader.GetSqlValue(1).ToString();
                    //DropDownSpeciality.Items.FindByValue(dReader.GetSqlValue(2).ToString()).Selected = true;
                    txtMobileNo.Text = dReader.GetSqlValue(2).ToString();
                    txtPassword.Text = dReader.GetSqlValue(3).ToString();
                    txtRePassword.Text = dReader.GetSqlValue(3).ToString();


                }

                getUsercmd.Dispose();


                conn.Close();
            }

            if (RbtnRegistrationEarlyBird.Checked)
            {
                Payment += 10000;
            }
            else if (RbtnRegistrationNormal.Checked)
            {
                Payment += 12000;
            }
            else if (RbtnRegistrationOnSide.Checked)
            {
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
            if (RbtnAdvanceFiller.Checked)
            {
                Payment += 25000;
            }
            if (RbtnAdvanceBotulinum.Checked)
            {
                Payment += 25000;
            }
            if (RbtnLaserYes.Checked)
            {
                Payment += 25000;
                Discount += 5000;
            }


            txtinWords.Text = this.ConvertNumbertoWords(Payment-Discount);//Payment.ToString();
            txtDiscount.Text = Discount.ToString();
            lblTotalAmount.Text = (Payment-Discount).ToString();


        }

        protected void btnrefresh_Click(object sender, EventArgs e)
        {
            image2.ImageUrl = "~/Captcha1.aspx";
        }
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
            if (this.txtimagecode.Text == this.Session["RecaptchaImageValue"].ToString())
            {
                lblmsg.Text = "Match";

            }
            else
            {

                lblmsg.Text = "Code is not Valid";
                return;

            }
            this.txtimagecode.Text = "";

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

                //con.Open();
                //SqlCommand cmd = new SqlCommand(sQuery, con);
                //cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
                // string sQuery = string.Format("INSERT INTO Complaint (Phoneno,Alternateno,City,[Descripton],Issue) Values (@Phoneno,@Alternateno,@City,@Description,@Issue)");
                int Payment = 0;
                string sQuery = string.Format("INSERT INTO UserRegistrationDetail (FirstName,LastName,Speciality,Qualification,PracticeLocation,VisitorType,Province,City,Mobile,Pmdc,Email,Password,RePassword,CNIC,Image,Status,ZipCode,ClinicAddress,Institute,Affiliation,PrivateClinic,BasicFillersHandsW,BasicBotulinumToxinAW,ThreadsHandsW,MonoThreadsFaceNeckW,AdvanceFillersHandsW,AdvanceBotulinumToxinAW,LaserCourseESCAD,PaymentMode,Registration,RegistrationEarlyBird,RegistrationNormalReg,RegistrationOnSite,RegistrationFees,FeesinWords,Discount) Values (@FirstName,@LastName,@Speciality,@Qualification,@PracticeLocation,@VisitorType,@Province,@City,@Mobile,@Pmdc,@Email,@Password,@RePassword,@CNIC,@Image,@Status,@ZipCode,@ClinicAddress,@Institute,@Affilation,@PrivateClinic,@BasicFillersHandsW,@BasicBotulinumToxinAW,@ThreadsHandsW,@MonoThreadsFaceNeckW,@AdvanceFillersHandsW,@AdvanceBotulinumToxinAW,@LaserCourseESCAD,@PaymentMode,@Registration,@RegistrationEarlyBird,@RegistrationNormalReg,@RegistrationOnSite,@RegistrationFees,@FeesinWords,@Discount)");

                SqlConnection con = new SqlConnection(conString);

                con.Open();
                SqlCommand cmd = new SqlCommand(sQuery, con);
                ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
                cmd.Parameters.AddWithValue("@FirstName", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", txtGuardian.Text.Trim());
                cmd.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Value);

                cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text.Trim());
                cmd.Parameters.AddWithValue("@PracticeLocation", txtResidentialAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@VisitorType", DropDownVisitor.SelectedItem.Value);
                //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
                cmd.Parameters.AddWithValue("@Province", DropDownProvince.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                cmd.Parameters.AddWithValue("@Mobile", txtMobileNo.Text.Trim());
                cmd.Parameters.AddWithValue("@Pmdc", txtPmdcNo.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtEmailId.Text.Trim());
                //cmd.Parameters.AddWithValue("@EventID", txtEvent.Text.Trim());
                cmd.Parameters.AddWithValue("@CNIC", txtCNIC.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@RePassword", txtRePassword.Text.Trim());
                cmd.Parameters.AddWithValue("@status", "Registration Pending");
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
                cmd.Parameters.AddWithValue("@AdvanceFillersHandsW", RbtnAdvanceFiller.Checked);
                cmd.Parameters.AddWithValue("@AdvanceBotulinumToxinAW", RbtnAdvanceBotulinum.Checked);
                cmd.Parameters.AddWithValue("@LaserCourseESCAD", RbtnLaserYes.Checked);
                cmd.Parameters.AddWithValue("@PaymentMode", PaymentMode);
                cmd.Parameters.AddWithValue("@Registration", RbtnRegistrationNormal.Checked || RbtnRegistrationEarlyBird.Checked || RbtnRegistrationOnSide.Checked);
                cmd.Parameters.AddWithValue("@RegistrationEarlyBird", RbtnRegistrationEarlyBird.Checked );
                cmd.Parameters.AddWithValue("@RegistrationNormalReg", RbtnRegistrationNormal.Checked);
                cmd.Parameters.AddWithValue("@RegistrationOnSite", RbtnRegistrationOnSide.Checked);
                cmd.Parameters.AddWithValue("@RegistrationFees", lblTotalAmount.Text);
                cmd.Parameters.AddWithValue("@Feesinwords", txtinWords.Text.Trim());
                cmd.Parameters.AddWithValue("@Discount", Discount);
                //cmd.Parameters.AddWithValue("@TermsCondition", CheckBox1.Checked);
                cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
                con.Close();
                RegistrationSubmissionEmail email = new RegistrationSubmissionEmail();
                email.Email1(Session["User"].ToString(), "REGISTRATION SUBMISSION EMAIL",txtName.Text.Trim(),txtGuardian.Text.Trim());
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
            Payment += 25000;

        }

        protected void RbtnAdvanceBotulinum_CheckedChanged(object sender, EventArgs e)
        {
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Initialize HTML to PDF converter 
            HtmlToPdfConverter htmlConverter = new HtmlToPdfConverter(HtmlRenderingEngine.WebKit);
            WebKitConverterSettings settings = new WebKitConverterSettings();
            //Set WebKit path
            settings.WebKitPath = Server.MapPath("~/QtBinaries");
            //Assign WebKit settings to HTML converter
            htmlConverter.ConverterSettings = settings;
            //Get the current URL
            string url = HttpContext.Current.Request.Url.AbsoluteUri;
            //Convert URL to PDF
            PdfDocument document = htmlConverter.Convert(url);
            //Save the document
            document.Save("Output.pdf", HttpContext.Current.Response, HttpReadType.Save);
        }
    }
}