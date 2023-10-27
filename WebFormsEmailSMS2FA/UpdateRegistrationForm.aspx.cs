using Syncfusion.HtmlConverter;
using Syncfusion.Pdf;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using IronPdf;

namespace WebFormsEmailSMS2FA
{
    public partial class UpdateRegistrationForm1 : System.Web.UI.Page
    {
        int Payment = 0;
        string PaymentMode = "";
        int Discount = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                //if (Session["User"].ToString() == "NOSHINARSHAD@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE2@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE3@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE4@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE5@GMAIL.COM")
                {
                    string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlDataReader dReader;
                    string ID = Request.QueryString["ID"].ToString();
                    //string EmailUser = Session["User"].ToString();
                    SqlConnection conn = new SqlConnection(databaseString);
                    conn.Open();
                    SqlCommand getUsercmd = new SqlCommand("SELECT FIRSTNAME,LASTNAME,Speciality,Qualification,Institute,PracticeLocation,Province,City,PMDC,Mobile,CNIC,CREATEDDATE,IMAGE,VISITORTYPE,Email,ZipCode,ClinicAddress,RegistrationFees,PrivateClinic,Affiliation,BasicFillersHandsW,BasicBotulinumToxinAW,ThreadsHandsW,MonoThreadsFaceNeckW,AdvanceFillersHandsW,AdvanceBotulinumToxinAW,LaserCourseESCAD,PaymentMode,Registration,RegistrationNormalReg,RegistrationOnSite,Title FROM UserRegistrationDetail where RegistrationID='" + ID + "'", conn);
                    dReader = getUsercmd.ExecuteReader();

                    while (dReader.Read())
                    {

                        txtName.Text = dReader.GetSqlValue(0).ToString().ToUpper();
                        txtGuardian.Text = dReader.GetSqlValue(1).ToString().ToUpper();
                        DropDownSpeciality.Items.FindByText(dReader.GetSqlValue(2).ToString()).Selected = true;
                        DropDownTitle.Items.FindByText(dReader["Title"].ToString()).Selected = true;
                        txtQualification.Text = dReader.GetSqlValue(3).ToString();
                        txtInsitute.Text = dReader.GetSqlValue(4).ToString();
                        txtResidentialAddress.Text = dReader.GetSqlValue(5).ToString();
                        DropDownProvince.Items.FindByText(dReader.GetSqlValue(6).ToString()).Selected = true;
                        txtCity.Text = dReader.GetSqlValue(7).ToString();
                        txtPmdcNo.Text = dReader.GetSqlValue(8).ToString();
                        txtMobileNo.Text = dReader.GetSqlValue(9).ToString();
                        txtCNIC.Text = dReader.GetSqlValue(10).ToString();
                        //txtPassword.Text = dReader.GetSqlValue(11).ToString();
                        //txtPassword.Attributes.Add("value", dReader.GetSqlValue(11).ToString());
                        //txtRePassword.Text = dReader.GetSqlValue(12).ToString();
                        //txtRePassword.Attributes.Add("value", dReader.GetSqlValue(12).ToString());
                        DropDownVisitor.Items.FindByText(dReader.GetSqlValue(13).ToString()).Selected = true;
                        txtEmailId.Text = dReader.GetSqlValue(14).ToString();
                        txtPostalCode.Text = dReader.GetSqlValue(15).ToString();
                        txtClinicAddress.Text = dReader.GetSqlValue(16).ToString();
                        txtinWords.Text = dReader.GetSqlValue(17).ToString();
                        txtClinicName.Text = dReader.GetSqlValue(18).ToString();
                        txtAffilatedBy.Text = dReader.GetSqlValue(19).ToString();
                        if (dReader["PaymentMode"].ToString() == "Online Deposit")
                        { RbtnOnline.Checked = true; }
                        else if (dReader["PaymentMode"].ToString() == "Cash (Only on Sites on Conference Day)")
                        { RbtnCash.Checked = true; }
                        else if (dReader["PaymentMode"].ToString() == "Bank Draft/Pay Order")
                        { RbtnBankDraft.Checked = true; }
                        if (dReader["BasicFillersHandsW"].ToString() == "True")
                        { RbtnBasicFillerYes.Checked = true; }
                        if (dReader["BasicBotulinumToxinAW"].ToString() == "True")
                        { RbtnBasicbotullinumYes.Checked = true; }
                        if (dReader["ThreadsHandsW"].ToString() == "True")
                        { RbtnThreadsonWorkshopYes.Checked = true; }
                        if (dReader["MonoThreadsFaceNeckW"].ToString() == "True")
                        { RbtnMonoThreadsWorkshopYes.Checked = true; }
                        if (dReader["AdvanceFillersHandsW"].ToString() == "True")
                        { chkAdvFillers.Checked = true; }
                        if (dReader["AdvanceBotulinumToxinAW"].ToString() == "True")
                        { chkAdvBotulin.Checked = true; }
                        if (dReader["LaserCourseESCAD"].ToString() == "True")
                        { RbtnLaserYes.Checked = true; }
                        if (dReader["Registration"].ToString() == "True")
                        { RbtnRegistrationEarlyBird.Checked = true; }
                        if (dReader["RegistrationNormalReg"].ToString() == "True")
                        { RbtnRegistrationNormal.Checked = true; }
                        if (dReader["RegistrationOnSite"].ToString() == "True")
                        {
                            RbtnRegistrationOnSide.Checked = true;
                        }


                        // dt.Date.ToShortDateString();


                        byte[] imageData = (byte[])dReader["IMAGE"];
                        string img = Convert.ToBase64String(imageData, 0, imageData.Length);
                        Image1.ImageUrl = "data:image/png;base64," + img;


                    }
                    getUsercmd.Dispose();


                    conn.Close();
                }
                //else
                {
                    string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlDataReader dReader;
                    //string ID = Request.QueryString["ID"].ToString();
                    string EmailUser = Session["User"].ToString();
                    SqlConnection conn = new SqlConnection(databaseString);
                    conn.Open();
                    SqlCommand getUsercmd = new SqlCommand("SELECT FIRSTNAME,LASTNAME,Speciality,Qualification,Institute,PracticeLocation,Province,City,PMDC,Mobile,CNIC,CREATEDDATE,IMAGE,VISITORTYPE,Email,ZipCode,ClinicAddress,RegistrationFees,PrivateClinic,Affiliation,BasicFillersHandsW,BasicBotulinumToxinAW,ThreadsHandsW,MonoThreadsFaceNeckW,AdvanceFillersHandsW,AdvanceBotulinumToxinAW,LaserCourseESCAD,PaymentMode,Registration,RegistrationNormalReg,RegistrationOnSite,Title FROM UserRegistrationDetail where Email='" + EmailUser + "'", conn);
                    dReader = getUsercmd.ExecuteReader();

                    while (dReader.Read())
                    {

                        txtName.Text = dReader.GetSqlValue(0).ToString().ToUpper();
                        txtGuardian.Text = dReader.GetSqlValue(1).ToString().ToUpper();
                        DropDownSpeciality.Items.FindByText(dReader["Speciality"].ToString()).Selected = true;
                        DropDownTitle.Items.FindByText(dReader["Title"].ToString()).Selected = true;
                        txtQualification.Text = dReader.GetSqlValue(3).ToString();
                        txtInsitute.Text = dReader.GetSqlValue(4).ToString();
                        txtResidentialAddress.Text = dReader.GetSqlValue(5).ToString();
                        DropDownProvince.Items.FindByText(dReader.GetSqlValue(6).ToString()).Selected = true;
                        txtCity.Text = dReader.GetSqlValue(7).ToString();
                        txtPmdcNo.Text = dReader.GetSqlValue(8).ToString().ToUpper();
                        txtMobileNo.Text = dReader.GetSqlValue(9).ToString();
                        txtCNIC.Text = dReader.GetSqlValue(10).ToString();
                        //txtPassword.Text = dReader.GetSqlValue(11).ToString();
                        //txtPassword.Attributes.Add("value", dReader.GetSqlValue(11).ToString());
                        //txtRePassword.Text = dReader.GetSqlValue(12).ToString();
                        //txtRePassword.Attributes.Add("value", dReader.GetSqlValue(12).ToString());
                        DropDownVisitor.Items.FindByText(dReader.GetSqlValue(13).ToString()).Selected = true;
                        txtEmailId.Text = dReader.GetSqlValue(14).ToString();
                        txtPostalCode.Text = dReader.GetSqlValue(15).ToString();
                        txtClinicAddress.Text = dReader.GetSqlValue(16).ToString();
                        txtinWords.Text = dReader.GetSqlValue(17).ToString();
                        txtClinicName.Text = dReader.GetSqlValue(18).ToString();
                        txtAffilatedBy.Text = dReader.GetSqlValue(19).ToString();
                        if (dReader["PaymentMode"].ToString() == "Online Deposit")
                        { RbtnOnline.Checked = true; }
                        else if (dReader["PaymentMode"].ToString() == "Cash (Only on Sites on Conference Day)")
                        { RbtnCash.Checked = true; }
                        else if (dReader["PaymentMode"].ToString() == "Bank Draft/Pay Order")
                        { RbtnBankDraft.Checked = true; }
                        if (dReader["BasicFillersHandsW"].ToString() == "True") 
                        { RbtnBasicFillerYes.Checked = true; }
                        if (dReader["BasicBotulinumToxinAW"].ToString() == "True")
                        { RbtnBasicbotullinumYes.Checked = true; }
                        if (dReader["ThreadsHandsW"].ToString() == "True")
                        { RbtnThreadsonWorkshopYes.Checked = true; }
                        if (dReader["MonoThreadsFaceNeckW"].ToString() == "True")
                        { RbtnMonoThreadsWorkshopYes.Checked = true; }
                        if (dReader["AdvanceFillersHandsW"].ToString() == "True")
                        { chkAdvFillers.Checked = true; }
                        if (dReader["AdvanceBotulinumToxinAW"].ToString() == "True")
                        { chkAdvBotulin.Checked = true; }
                        if (dReader["LaserCourseESCAD"].ToString() == "True")
                        { RbtnLaserYes.Checked = true; }
                        if (dReader["Registration"].ToString() == "True")
                        { RbtnRegistrationEarlyBird.Checked = true; }
                        if (dReader["RegistrationNormalReg"].ToString() == "True")
                        { RbtnRegistrationNormal.Checked = true; }
                        if (dReader["RegistrationOnSite"].ToString() == "True")
                        {
                            RbtnRegistrationOnSide.Checked = true;
                        }


                        // dt.Date.ToShortDateString();


                        byte[] imageData = (byte[])dReader["IMAGE"];
                        string img = Convert.ToBase64String(imageData, 0, imageData.Length);
                        Image1.ImageUrl = "data:image/png;base64," + img;


                    }
                    getUsercmd.Dispose();


                    conn.Close();
                }
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
            if (chkAdvFillers.Checked)
            {
                Payment += 25000;
            }
            if (chkAdvBotulin.Checked)
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
            //IronPdf.AspxToPdf.RenderThisPageAsPdf(IronPdf.AspxToPdf.FileBehavior.InBrowser);
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

            //if (RbtnOnline.Checked)
            //{
            //    PaymentMode = RbtnOnline.Text;
            //}
            //else if (RbtnCash.Checked)
            //{
            //    PaymentMode = RbtnCash.Text;
            //}
            //else if (RbtnBankDraft.Checked)
            //{
            //    PaymentMode = RbtnBankDraft.Text;
            //}

            string connstring = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            conn.Open();
            //string ID = Request.QueryString["ID"].ToString();
            string sql2 = "delete  from AspNetUsers ";
            //"UPDATE UserRegistrationDetail SET FirstName =@FirstName, LastName =@LastName  , Speciality=@Speciality , Qualification=@Qualification , Institute =@insitute , PracticeLocation=@practiceLocation , Province=@Province , City=@City , PMDC=@PMDC , Mobile= @Mobile , CNIC=@CNIC , password=@Password , RePassword =@RePassword , VisitorType=@VisitorType , status=@Status , Email=@Email , ZipCode=@ZipCode , ClinicAddress=@ClinicAddress , PrivateClinic=@PrivateClinic , Affiliation=@Affilation , BasicFillersHandsW=@BasicFilter , BasicBotulinumToxinAW=@BasicBotulinum , ThreadsHandsW=@ThreadsHands , MonoThreadsFaceNeckW=@MonoThreads , AdvanceFillersHandsW=@AdvanceFillers , AdvanceBotulinumToxinAW=@Advancebotulinum , LaserCourseESCAD=@LaserCourse , PaymentMode=@PaymentMode , RegistrationEarlyBird=@EarlyBird , RegistrationNormalReg=@NormalRegistration , RegistrationOnSite=@OnSiteRegistration , RegistrationFees=@payment , FeesInWords=@FeesinWords  WHERE ID='" + ID + "'";

            SqlCommand cmd = new SqlCommand(sql2, conn);

            //int lenght = FileUpload1.PostedFile.ContentLength;
            //    byte[] pic = new byte[lenght];
            //    FileUpload1.PostedFile.InputStream.Read(pic, 0, lenght);
            //    string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //    SqlConnection conn = new SqlConnection(connstring);
            //    conn.Open();
            //    string ID = Request.QueryString["ID"].ToString();
            //    string sql2 = "UPDATE UserRegistrationDetail SET FirstName = @FirstName , LastName =@LastName , Speciality=@Speciality , Qualification=@Qualification , Institute =@insitute , PracticeLocation=@practiceLocation , Province=@Province , City=@City , PMDC=@PMDC , Mobile= @Mobile , CNIC=@CNIC , password=@Password , RePassword =@RePassword , VisitorType=@VisitorType , status=@Status , Email=@Email , ZipCode=@ZipCode , ClinicAddress=@ClinicAddress , PrivateClinic=@PrivateClinic , Affiliation=@Affilation , BasicFillersHandsW=@BasicFilter , BasicBotulinumToxinAW=@BasicBotulinum , ThreadsHandsW=@ThreadsHands , MonoThreadsFaceNeckW=@MonoThreads , AdvanceFillersHandsW=@AdvanceFillers , AdvanceBotulinumToxinAW=@Advancebotulinum , LaserCourseESCAD=@LaserCourse , PaymentMode=@PaymentMode , RegistrationEarlyBird=@EarlyBird , RegistrationNormalReg=@NormalRegistration , RegistrationOnSite=@OnSiteRegistration , RegistrationFees=@payment WHERE ID='" + ID+"'" ;
            //    SqlCommand cmd = new SqlCommand(sql2, conn);


            //    cmd.Parameters.AddWithValue("@FirstName", txtName.Text.Trim());
            //    cmd.Parameters.AddWithValue("@LastName", txtGuardian.Text.Trim());
            //    cmd.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Value);

            //    cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text.Trim());
            //    cmd.Parameters.AddWithValue("@practiceLocation", txtResidentialAddress.Text.Trim());
            //    cmd.Parameters.AddWithValue("@VisitorType", DropDownVisitor.SelectedItem.Value);
            //    //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
            //    cmd.Parameters.AddWithValue("@Province", DropDownProvince.SelectedItem.Value);
            //    cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
            //    cmd.Parameters.AddWithValue("@Mobile", txtMobileNo.Text.Trim());
            //    cmd.Parameters.AddWithValue("@PMDC", txtPmdcNo.Text.Trim());
            //    cmd.Parameters.AddWithValue("@Email", txtEmailId.Text.Trim());
            //    //cmd.Parameters.AddWithValue("@EventID", txtEvent.Text.Trim());
            //    cmd.Parameters.AddWithValue("@CNIC", txtCNIC.Text.Trim());
            //    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
            //    cmd.Parameters.AddWithValue("@RePassword", txtRePassword.Text.Trim());
            //    cmd.Parameters.AddWithValue("@status", "Registration Pending");
            //    cmd.Parameters.AddWithValue("@image", pic);
            //    cmd.Parameters.AddWithValue("@ZipCode", txtPostalCode.Text.Trim());
            //    cmd.Parameters.AddWithValue("@ClinicAddress", txtClinicAddress.Text.Trim());
            //    cmd.Parameters.AddWithValue("@insitute", txtInsitute.Text.Trim());
            //    cmd.Parameters.AddWithValue("@PrivateClinic", txtClinicName.Text.Trim());
            //    cmd.Parameters.AddWithValue("@Affilation", txtAffilatedBy.Text.Trim());
            //    cmd.Parameters.AddWithValue("@BasicFilter", RbtnBasicFillerYes.Checked);
            //    cmd.Parameters.AddWithValue("@BasicBotulinum", RbtnBasicbotullinumYes.Checked);
            //    cmd.Parameters.AddWithValue("@ThreadsHands", RbtnThreadsonWorkshopYes.Checked);
            //    cmd.Parameters.AddWithValue("@MonoThreads", RbtnMonoThreadsWorkshopYes.Checked);
            //    cmd.Parameters.AddWithValue("@AdvanceFillers", RbtnAdvanceFiller.Checked);
            //    cmd.Parameters.AddWithValue("@Advancebotulinum", RbtnAdvanceBotulinum.Checked);
            //    cmd.Parameters.AddWithValue("@LaserCourse", RbtnLaserYes.Checked);
            //    cmd.Parameters.AddWithValue("@PaymentMode", "abc");
            //    cmd.Parameters.AddWithValue("@EarlyBird",RbtnRegistrationEarlyBird.Checked );
            //    cmd.Parameters.AddWithValue("@NormalRegistration", RbtnRegistrationNormal.Checked);
            //    cmd.Parameters.AddWithValue("@OnSiteRegistration", RbtnRegistrationOnSide.Checked);
            //    cmd.Parameters.AddWithValue("@FeesinWords", txtinWords.Text.Trim());
            //    cmd.Parameters.AddWithValue("@Payment", Payment);
            cmd.ExecuteNonQuery();
            //    //int res=cmd.ExecuteNonQuery();
            //    Response.Write("<script>alert('Record Updated Sucessfully'+res);window.location ='UserListPage.aspx';</script>");
            //    //try
            //{
            //    cmd.ExecuteNonQuery();
            //    Response.Write("<script>alert('Record Updated Sucessfully');window.location ='UserListPage.aspx';</script>");
            //}
            //catch (Exception)
            //{
            //    Response.Write("<script>alert('Updated Failed');window.location ='UserListPage.aspx';</script>");
            //}
            //finally
            //{
            //    conn.Close();
            //}


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

        protected void RbtnLaserNo_CheckedChanged(object sender, EventArgs e)
        {
            Payment -= 25000;

        }

        protected void Update_Click2(object sender, EventArgs e)
        {
            string EmailUser = Session["User"].ToString();

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

            int lenght = FileUpload1.PostedFile.ContentLength;
            byte[] pic = new byte[lenght];
            FileUpload1.PostedFile.InputStream.Read(pic, 0, lenght);
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            conn.Open();
            //string ID = Request.QueryString["ID"].ToString();
            string ID = Request.QueryString["ID"].ToString();
            string sql2 = "UPDATE UserRegistrationDetail SET FirstName =@FirstName, LastName =@LastName  , Speciality=@Speciality , Qualification=@Qualification , Institute =@insitute , PracticeLocation=@practiceLocation , Province=@Province , City=@City , PMDC=@PMDC , Mobile= @Mobile , CNIC=@CNIC , VisitorType=@VisitorType , status=@Status , Email=@Email , ZipCode=@ZipCode , ClinicAddress=@ClinicAddress , PrivateClinic=@PrivateClinic , Affiliation=@Affilation , BasicFillersHandsW=@BasicFilter , BasicBotulinumToxinAW=@BasicBotulinum , ThreadsHandsW=@ThreadsHands , MonoThreadsFaceNeckW=@MonoThreads , AdvanceFillersHandsW=@AdvanceFillers , AdvanceBotulinumToxinAW=@Advancebotulinum , LaserCourseESCAD=@LaserCourse , PaymentMode=@PaymentMode , RegistrationEarlyBird=@EarlyBird , RegistrationNormalReg=@NormalRegistration , RegistrationOnSite=@OnSiteRegistration , RegistrationFees=@payment , FeesInWords=@FeesinWords , RegistrationValidate=@RegistrationValidate , ModifyDate=@ModifyDate , ModifyBy=@ModifyBy, Title=@Title,Image=@image WHERE RegistrationID='" + ID + "'";

            SqlCommand cmd = new SqlCommand(sql2, conn);


            cmd.Parameters.AddWithValue("@FirstName", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@LastName", txtGuardian.Text.Trim());
            cmd.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Title", DropDownTitle.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text.Trim());
            cmd.Parameters.AddWithValue("@practiceLocation", txtResidentialAddress.Text.Trim());
            cmd.Parameters.AddWithValue("@VisitorType", DropDownVisitor.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
            cmd.Parameters.AddWithValue("@Province", DropDownProvince.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
            cmd.Parameters.AddWithValue("@Mobile", txtMobileNo.Text.Trim());
            cmd.Parameters.AddWithValue("@PMDC", txtPmdcNo.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtEmailId.Text.Trim());
            //cmd.Parameters.AddWithValue("@EventID", txtEvent.Text.Trim());
            cmd.Parameters.AddWithValue("@CNIC", txtCNIC.Text.Trim());
            //cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
            //cmd.Parameters.AddWithValue("@RePassword", txtRePassword.Text.Trim());
            cmd.Parameters.AddWithValue("@status", "Validated");
            cmd.Parameters.AddWithValue("@image", pic);
            cmd.Parameters.AddWithValue("@ZipCode", txtPostalCode.Text.Trim());
            cmd.Parameters.AddWithValue("@ClinicAddress", txtClinicAddress.Text.Trim());
            cmd.Parameters.AddWithValue("@insitute", txtInsitute.Text.Trim());
            cmd.Parameters.AddWithValue("@PrivateClinic", txtClinicName.Text.Trim());
            cmd.Parameters.AddWithValue("@Affilation", txtAffilatedBy.Text.Trim());
            cmd.Parameters.AddWithValue("@BasicFilter", RbtnBasicFillerYes.Checked);
            cmd.Parameters.AddWithValue("@BasicBotulinum", RbtnBasicbotullinumYes.Checked);
            cmd.Parameters.AddWithValue("@ThreadsHands", RbtnThreadsonWorkshopYes.Checked);
            cmd.Parameters.AddWithValue("@MonoThreads", RbtnMonoThreadsWorkshopYes.Checked);
            cmd.Parameters.AddWithValue("@AdvanceFillers", chkAdvFillers.Checked);
            cmd.Parameters.AddWithValue("@Advancebotulinum", chkAdvBotulin.Checked);
            cmd.Parameters.AddWithValue("@LaserCourse", RbtnLaserYes.Checked);
            cmd.Parameters.AddWithValue("@PaymentMode", PaymentMode);
            cmd.Parameters.AddWithValue("@EarlyBird", RbtnRegistrationEarlyBird.Checked);
            cmd.Parameters.AddWithValue("@NormalRegistration", RbtnRegistrationNormal.Checked);
            cmd.Parameters.AddWithValue("@OnSiteRegistration", RbtnRegistrationOnSide.Checked);
            cmd.Parameters.AddWithValue("@FeesinWords", txtinWords.Text.Trim());
            cmd.Parameters.AddWithValue("@Payment", Payment);
            cmd.Parameters.AddWithValue("@RegistrationValidate", true);
            cmd.Parameters.AddWithValue("@ModifyDate", DateTime.Now);
            cmd.Parameters.AddWithValue("@ModifyBy", EmailUser);
            cmd.ExecuteNonQuery();



            //int res=cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Updated Sucessfully');window.location ='UserListPage.aspx';</script>");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var Renderer = new HtmlToPdf();
            var PDF = Renderer.RenderUrlAsPdf("https://en.wikipedia.org/wiki/Portable_Document_Format");

            PDF.TrySaveAs("Wikipedia.pdf");
            //Initialize HTML to PDF converter 
            //HtmlToPdfConverter htmlConverter = new HtmlToPdfConverter(HtmlRenderingEngine.WebKit);
            //WebKitConverterSettings settings = new WebKitConverterSettings();
            ////Set WebKit path
            //settings.WebKitPath = Server.MapPath("~/QtBinaries");
            ////Assign WebKit settings to HTML converter
            //htmlConverter.ConverterSettings = settings;


            ////Get the current URL
            //string url = HttpContext.Current.Request.Url.AbsoluteUri;
            ////Convert URL to PDF
            //PdfDocument document = htmlConverter.Convert(url);
            ////Save the document
            //document.Save("Output.pdf", HttpContext.Current.Response, HttpReadType.Save);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void chkAdvFillers_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 25000;
        }

        protected void chkAdvBotulin_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 25000;

        }

        protected void Button1_Click(object sender, ImageClickEventArgs e)
        {
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            conn.Open();
            //string ID = Request.QueryString["ID"].ToString();
            string ID = Request.QueryString["ID"].ToString();
            string sql2 = "UPDATE UserRegistrationDetail SET FirstName =@FirstName, LastName =@LastName  , Speciality=@Speciality , Qualification=@Qualification , Institute =@insitute , PracticeLocation=@practiceLocation , Province=@Province , City=@City , PMDC=@PMDC , Mobile= @Mobile , CNIC=@CNIC , VisitorType=@VisitorType , status=@Status , Email=@Email , ZipCode=@ZipCode , ClinicAddress=@ClinicAddress , PrivateClinic=@PrivateClinic , Affiliation=@Affilation , BasicFillersHandsW=@BasicFilter , BasicBotulinumToxinAW=@BasicBotulinum , ThreadsHandsW=@ThreadsHands , MonoThreadsFaceNeckW=@MonoThreads , AdvanceFillersHandsW=@AdvanceFillers , AdvanceBotulinumToxinAW=@Advancebotulinum , LaserCourseESCAD=@LaserCourse , PaymentMode=@PaymentMode , RegistrationEarlyBird=@EarlyBird , RegistrationNormalReg=@NormalRegistration , RegistrationOnSite=@OnSiteRegistration , RegistrationFees=@payment , FeesInWords=@FeesinWords , RegistrationValidate=@RegistrationValidate , ModifyDate=@ModifyDate , Title=@Title WHERE RegistrationID='" + ID + "'";

            SqlCommand cmd = new SqlCommand(sql2, conn);


            cmd.Parameters.AddWithValue("@FirstName", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@LastName", txtGuardian.Text.Trim());
            cmd.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Title", DropDownTitle.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text.Trim());
            cmd.Parameters.AddWithValue("@practiceLocation", txtResidentialAddress.Text.Trim());
            cmd.Parameters.AddWithValue("@VisitorType", DropDownVisitor.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
            cmd.Parameters.AddWithValue("@Province", DropDownProvince.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
            cmd.Parameters.AddWithValue("@Mobile", txtMobileNo.Text.Trim());
            cmd.Parameters.AddWithValue("@PMDC", txtPmdcNo.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtEmailId.Text.Trim());
            //cmd.Parameters.AddWithValue("@EventID", txtEvent.Text.Trim());
            cmd.Parameters.AddWithValue("@CNIC", txtCNIC.Text.Trim());
            //cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
            //cmd.Parameters.AddWithValue("@RePassword", txtRePassword.Text.Trim());
            cmd.Parameters.AddWithValue("@status", "Cancel");
            //cmd.Parameters.AddWithValue("@image", pic);
            cmd.Parameters.AddWithValue("@ZipCode", txtPostalCode.Text.Trim());
            cmd.Parameters.AddWithValue("@ClinicAddress", txtClinicAddress.Text.Trim());
            cmd.Parameters.AddWithValue("@insitute", txtInsitute.Text.Trim());
            cmd.Parameters.AddWithValue("@PrivateClinic", txtClinicName.Text.Trim());
            cmd.Parameters.AddWithValue("@Affilation", txtAffilatedBy.Text.Trim());
            cmd.Parameters.AddWithValue("@BasicFilter", RbtnBasicFillerYes.Checked);
            cmd.Parameters.AddWithValue("@BasicBotulinum", RbtnBasicbotullinumYes.Checked);
            cmd.Parameters.AddWithValue("@ThreadsHands", RbtnThreadsonWorkshopYes.Checked);
            cmd.Parameters.AddWithValue("@MonoThreads", RbtnMonoThreadsWorkshopYes.Checked);
            cmd.Parameters.AddWithValue("@AdvanceFillers", chkAdvFillers.Checked);
            cmd.Parameters.AddWithValue("@Advancebotulinum", chkAdvBotulin.Checked);
            cmd.Parameters.AddWithValue("@LaserCourse", RbtnLaserYes.Checked);
            cmd.Parameters.AddWithValue("@PaymentMode", PaymentMode);
            cmd.Parameters.AddWithValue("@EarlyBird", RbtnRegistrationEarlyBird.Checked);
            cmd.Parameters.AddWithValue("@NormalRegistration", RbtnRegistrationNormal.Checked);
            cmd.Parameters.AddWithValue("@OnSiteRegistration", RbtnRegistrationOnSide.Checked);
            cmd.Parameters.AddWithValue("@FeesinWords", txtinWords.Text.Trim());
            cmd.Parameters.AddWithValue("@Payment", Payment);
            cmd.Parameters.AddWithValue("@RegistrationValidate", true);
            cmd.Parameters.AddWithValue("@ModifyDate", DateTime.Now);
            //cmd.Parameters.AddWithValue("@ModifyBy", EmailUser);
            cmd.ExecuteNonQuery();



            //int res=cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Updated Sucessfully');window.location ='UserListPage.aspx';</script>");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            conn.Open();
            //string ID = Request.QueryString["ID"].ToString();
            string ID = Request.QueryString["ID"].ToString();
            string sql2 = "UPDATE UserRegistrationDetail SET FirstName =@FirstName, LastName =@LastName  , Speciality=@Speciality , Qualification=@Qualification , Institute =@insitute , PracticeLocation=@practiceLocation , Province=@Province , City=@City , PMDC=@PMDC , Mobile= @Mobile , CNIC=@CNIC , VisitorType=@VisitorType , status=@Status , Email=@Email , ZipCode=@ZipCode , ClinicAddress=@ClinicAddress , PrivateClinic=@PrivateClinic , Affiliation=@Affilation , BasicFillersHandsW=@BasicFilter , BasicBotulinumToxinAW=@BasicBotulinum , ThreadsHandsW=@ThreadsHands , MonoThreadsFaceNeckW=@MonoThreads , AdvanceFillersHandsW=@AdvanceFillers , AdvanceBotulinumToxinAW=@Advancebotulinum , LaserCourseESCAD=@LaserCourse , PaymentMode=@PaymentMode , RegistrationEarlyBird=@EarlyBird , RegistrationNormalReg=@NormalRegistration , RegistrationOnSite=@OnSiteRegistration , RegistrationFees=@payment , FeesInWords=@FeesinWords , RegistrationValidate=@RegistrationValidate , ModifyDate=@ModifyDate , Title=@Title WHERE RegistrationID='" + ID + "'";

            SqlCommand cmd = new SqlCommand(sql2, conn);


            cmd.Parameters.AddWithValue("@FirstName", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@LastName", txtGuardian.Text.Trim());
            cmd.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Title", DropDownTitle.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text.Trim());
            cmd.Parameters.AddWithValue("@practiceLocation", txtResidentialAddress.Text.Trim());
            cmd.Parameters.AddWithValue("@VisitorType", DropDownVisitor.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
            cmd.Parameters.AddWithValue("@Province", DropDownProvince.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim());
            cmd.Parameters.AddWithValue("@Mobile", txtMobileNo.Text.Trim());
            cmd.Parameters.AddWithValue("@PMDC", txtPmdcNo.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtEmailId.Text.Trim());
            //cmd.Parameters.AddWithValue("@EventID", txtEvent.Text.Trim());
            cmd.Parameters.AddWithValue("@CNIC", txtCNIC.Text.Trim());
            //cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
            //cmd.Parameters.AddWithValue("@RePassword", txtRePassword.Text.Trim());
            cmd.Parameters.AddWithValue("@status", "Cancel");
            //cmd.Parameters.AddWithValue("@image", pic);
            cmd.Parameters.AddWithValue("@ZipCode", txtPostalCode.Text.Trim());
            cmd.Parameters.AddWithValue("@ClinicAddress", txtClinicAddress.Text.Trim());
            cmd.Parameters.AddWithValue("@insitute", txtInsitute.Text.Trim());
            cmd.Parameters.AddWithValue("@PrivateClinic", txtClinicName.Text.Trim());
            cmd.Parameters.AddWithValue("@Affilation", txtAffilatedBy.Text.Trim());
            cmd.Parameters.AddWithValue("@BasicFilter", RbtnBasicFillerYes.Checked);
            cmd.Parameters.AddWithValue("@BasicBotulinum", RbtnBasicbotullinumYes.Checked);
            cmd.Parameters.AddWithValue("@ThreadsHands", RbtnThreadsonWorkshopYes.Checked);
            cmd.Parameters.AddWithValue("@MonoThreads", RbtnMonoThreadsWorkshopYes.Checked);
            cmd.Parameters.AddWithValue("@AdvanceFillers", chkAdvFillers.Checked);
            cmd.Parameters.AddWithValue("@Advancebotulinum", chkAdvBotulin.Checked);
            cmd.Parameters.AddWithValue("@LaserCourse", RbtnLaserYes.Checked);
            cmd.Parameters.AddWithValue("@PaymentMode", PaymentMode);
            cmd.Parameters.AddWithValue("@EarlyBird", RbtnRegistrationEarlyBird.Checked);
            cmd.Parameters.AddWithValue("@NormalRegistration", RbtnRegistrationNormal.Checked);
            cmd.Parameters.AddWithValue("@OnSiteRegistration", RbtnRegistrationOnSide.Checked);
            cmd.Parameters.AddWithValue("@FeesinWords", txtinWords.Text.Trim());
            cmd.Parameters.AddWithValue("@Payment", Payment);
            cmd.Parameters.AddWithValue("@RegistrationValidate", true);
            cmd.Parameters.AddWithValue("@ModifyDate", DateTime.Now);
            //cmd.Parameters.AddWithValue("@ModifyBy", EmailUser);
            cmd.ExecuteNonQuery();



            //int res=cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Updated Sucessfully');window.location ='UserListPage.aspx';</script>");

        }
    }
}