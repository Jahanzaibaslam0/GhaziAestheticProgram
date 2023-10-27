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
using QRCoder;
using IronPdf;

namespace WebFormsEmailSMS2FA
{
    public partial class RegistrationConfirmation : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                //string User = Context.User.Identity.Name;//Session["User"].ToString();
                //string UserEmail = Session["User"].ToString();

            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");

            }

            Zen.Barcode.Code128BarcodeDraw qrcode = Zen.Barcode.BarcodeDrawFactory.Code128WithChecksum;
            

            if (!IsPostBack)
            {
                if (Session["User"].ToString().ToUpper() == "NOSHINARSHAD@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE@GMAIL.COM")
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

                        //TextBox1.Text = dReader.GetSqlValue(8).ToString().ToUpper();
                        lblFName.Text = dReader.GetSqlValue(0).ToString().ToUpper();
                        lblTitle.Text = dReader["Title"].ToString().ToUpper();
                        lblLName.Text = dReader.GetSqlValue(1).ToString().ToUpper();
                        string barCode = dReader.GetSqlValue(8).ToString().ToUpper();
                        System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
                        using (Bitmap bitMap = new Bitmap(barCode.Length * 40, 80))
                        {
                            using (Graphics graphics = Graphics.FromImage(bitMap))
                            {
                                Font oFont = new Font("IDAutomationHC39M", 16);
                                //

                                PointF point = new PointF(2f, 2f);
                                SolidBrush blackBrush = new SolidBrush(Color.Black);
                                SolidBrush whiteBrush = new SolidBrush(Color.White);
                                graphics.FillRectangle(whiteBrush, 0, 0, bitMap.Width, bitMap.Height);
                                graphics.DrawString("*" + barCode + "*", oFont, blackBrush, point);
                            }
                            using (MemoryStream ms = new MemoryStream())
                            {
                                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                                byte[] byteImage = ms.ToArray();

                                Convert.ToBase64String(byteImage);
                                imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                            }
                            PlaceHolder1.Controls.Add(imgBarCode);
                        }
                        //string code = TextBox1.Text;
                        //String txtqrcode = string.Format("https://localhost:44307/RegistrationCard?ID=" + ID);
                        String txtqrcode = string.Format("http://events.ghazihealthcare.com/RegistrationCard?ID=" + ID);
                       
                        QRCodeGenerator qrGenerator = new QRCodeGenerator();
                        QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(txtqrcode, QRCodeGenerator.ECCLevel.Q);
                        System.Web.UI.WebControls.Image imgBarCode1 = new System.Web.UI.WebControls.Image();
                        imgBarCode1.Height = 150;
                        imgBarCode1.Width = 150;
                        using (Bitmap bitMap = qrCode.GetGraphic(20))
                        {
                            using (MemoryStream ms = new MemoryStream())
                            {
                                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                                byte[] byteImage = ms.ToArray();
                                imgBarCode1.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                            }
                            PlaceHolder2.Controls.Add(imgBarCode1);
                        }
                        //txtGuardian.Text = dReader.GetSqlValue(1).ToString().ToUpper();
                        //DropDownSpeciality.Items.FindByText(dReader.GetSqlValue(2).ToString()).Selected = true;
                        //DropDownTitle.Items.FindByText(dReader["Title"].ToString()).Selected = true;
                        //txtQualification.Text = dReader.GetSqlValue(3).ToString();
                        //txtInsitute.Text = dReader.GetSqlValue(4).ToString();
                        //txtResidentialAddress.Text = dReader.GetSqlValue(5).ToString();
                        //DropDownProvince.Items.FindByText(dReader.GetSqlValue(6).ToString()).Selected = true;
                        //txtCity.Text = dReader.GetSqlValue(7).ToString();
                        //txtPmdcNo.Text = dReader.GetSqlValue(8).ToString();
                        //txtMobileNo.Text = dReader.GetSqlValue(9).ToString();
                        //txtCNIC.Text = dReader.GetSqlValue(10).ToString();
                        ////txtPassword.Text = dReader.GetSqlValue(11).ToString();
                        ////txtPassword.Attributes.Add("value", dReader.GetSqlValue(11).ToString());
                        ////txtRePassword.Text = dReader.GetSqlValue(12).ToString();
                        ////txtRePassword.Attributes.Add("value", dReader.GetSqlValue(12).ToString());
                        //DropDownVisitor.Items.FindByText(dReader.GetSqlValue(13).ToString()).Selected = true;
                        //txtEmailId.Text = dReader.GetSqlValue(14).ToString();
                        //txtPostalCode.Text = dReader.GetSqlValue(15).ToString();
                        //txtClinicAddress.Text = dReader.GetSqlValue(16).ToString();
                        //txtinWords.Text = dReader.GetSqlValue(17).ToString();
                        //txtClinicName.Text = dReader.GetSqlValue(18).ToString();
                        //txtAffilatedBy.Text = dReader.GetSqlValue(19).ToString();
                        //if (dReader["PaymentMode"].ToString() == "Online Deposit")
                        //{ RbtnOnline.Checked = true; }
                        //else if (dReader["PaymentMode"].ToString() == "Cash (Only on Sites on Conference Day)")
                        //{ RbtnCash.Checked = true; }
                        //else if (dReader["PaymentMode"].ToString() == "Bank Draft/Pay Order")
                        //{ RbtnBankDraft.Checked = true; }
                        if (dReader["BasicFillersHandsW"].ToString() == "True")
                        {
                            imgBasicFillersStatus.ImageUrl = "~/Images/check.png";
                            //RbtnBasicFillerYes.Checked = true;
                        }
                        if (dReader["BasicFillersHandsW"].ToString() == "False")
                        {
                            imgBasicFillersStatus.ImageUrl = "~/Images/cross.png";
                            //RbtnBasicFillerYes.Checked = true;
                        }
                         if (dReader["BasicBotulinumToxinAW"].ToString() == "True")
                        {
                            imgbasictoxinStatus.ImageUrl = "~/Images/check.png";
                           // RbtnBasicbotullinumYes.Checked = true;
                        }
                         if (dReader["BasicBotulinumToxinAW"].ToString() == "False")
                        {
                            imgbasictoxinStatus.ImageUrl = "~/Images/cross.png";
                            //RbtnBasicFillerYes.Checked = true;
                        }
                         if (dReader["ThreadsHandsW"].ToString() == "True")
                        {
                            imgBasicLiftingStatus.ImageUrl = "~/Images/check.png";
                            //RbtnThreadsonWorkshopYes.Checked = true;
                        }
                         if (dReader["ThreadsHandsW"].ToString() == "False")
                        {
                            imgBasicLiftingStatus.ImageUrl = "~/Images/cross.png";
                            // RbtnBasicbotullinumYes.Checked = true;
                        }
                         if (dReader["MonoThreadsFaceNeckW"].ToString() == "True")
                        {
                            imgBasicThreadStatus.ImageUrl= "~/Images/check.png";
                            //RbtnMonoThreadsWorkshopYes.Checked = true;
                        }
                         if (dReader["MonoThreadsFaceNeckW"].ToString() == "False")
                        {
                            imgBasicThreadStatus.ImageUrl = "~/Images/cross.png";
                            //RbtnMonoThreadsWorkshopYes.Checked = true;
                        }
                         if (dReader["AdvanceFillersHandsW"].ToString() == "True")
                        {
                            imgAdvanceFillerStatus.ImageUrl= "~/Images/check.png";
                            //    chkAdvFillers.Checked = true;
                        }
                         if (dReader["AdvanceFillersHandsW"].ToString() == "False")
                        {
                            imgAdvanceFillerStatus.ImageUrl = "~/Images/cross.png";
                            //    chkAdvFillers.Checked = true;
                        }
                         if (dReader["AdvanceBotulinumToxinAW"].ToString() == "True")
                        {
                            imgAdvanceToxinStatus.ImageUrl = "~/Images/check.png";

                            //chkAdvBotulin.Checked = true;
                        }
                         if (dReader["AdvanceBotulinumToxinAW"].ToString() == "False")
                        {
                            imgAdvanceToxinStatus.ImageUrl = "~/Images/cross.png";
                            //chkAdvBotulin.Checked = true;
                        }
                        if (dReader["LaserCourseESCAD"].ToString() == "True")
                        {
                            imglaserStatus1.ImageUrl= "~/Images/check.png";
                            imglaserStatus2.ImageUrl = "~/Images/cross.png";
                            //    RbtnLaserYes.Checked = true;
                        }
                        
                        //if (dReader["Registration"].ToString() == "True")
                        //{ RbtnRegistrationEarlyBird.Checked = true; }
                        //if (dReader["RegistrationNormalReg"].ToString() == "True")
                        //{ RbtnRegistrationNormal.Checked = true; }
                        //if (dReader["RegistrationOnSite"].ToString() == "True")
                        //{
                        //    RbtnRegistrationOnSide.Checked = true;
                        //}


                        //// dt.Date.ToShortDateString();


                        //byte[] imageData = (byte[])dReader["IMAGE"];
                        //string img = Convert.ToBase64String(imageData, 0, imageData.Length);
                        //Image1.ImageUrl = "data:image/png;base64," + img;


                    }
                    getUsercmd.Dispose();


                    conn.Close();
                }
                //else
                //{
                //    string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                //    SqlDataReader dReader;
                //    //string ID = Request.QueryString["ID"].ToString();
                //    string EmailUser = Session["User"].ToString();
                //    SqlConnection conn = new SqlConnection(databaseString);
                //    conn.Open();
                //    SqlCommand getUsercmd = new SqlCommand("SELECT FIRSTNAME,LASTNAME,Speciality,Qualification,Institute,PracticeLocation,Province,City,PMDC,Mobile,CNIC,CREATEDDATE,IMAGE,VISITORTYPE,Email,ZipCode,ClinicAddress,RegistrationFees,PrivateClinic,Affiliation,BasicFillersHandsW,BasicBotulinumToxinAW,ThreadsHandsW,MonoThreadsFaceNeckW,AdvanceFillersHandsW,AdvanceBotulinumToxinAW,LaserCourseESCAD,PaymentMode,Registration,RegistrationNormalReg,RegistrationOnSite,Title FROM UserRegistrationDetail where Email='" + EmailUser + "'", conn);
                //    dReader = getUsercmd.ExecuteReader();

                //    while (dReader.Read())
                //    {

                //        //txtName.Text = dReader.GetSqlValue(0).ToString().ToUpper();
                //        //txtGuardian.Text = dReader.GetSqlValue(1).ToString().ToUpper();
                //        //DropDownSpeciality.Items.FindByText(dReader["Title"].ToString()).Selected = true;
                //        //DropDownTitle.Items.FindByText(dReader.GetSqlValue(2).ToString()).Selected = true;
                //        //txtQualification.Text = dReader.GetSqlValue(3).ToString();
                //        //txtInsitute.Text = dReader.GetSqlValue(4).ToString();
                //        //txtResidentialAddress.Text = dReader.GetSqlValue(5).ToString();
                //        //DropDownProvince.Items.FindByText(dReader.GetSqlValue(6).ToString()).Selected = true;
                //        //txtCity.Text = dReader.GetSqlValue(7).ToString();
                //        //txtPmdcNo.Text = dReader.GetSqlValue(8).ToString();
                //        //txtMobileNo.Text = dReader.GetSqlValue(9).ToString();
                //        //txtCNIC.Text = dReader.GetSqlValue(10).ToString();
                //        ////txtPassword.Text = dReader.GetSqlValue(11).ToString();
                //        ////txtPassword.Attributes.Add("value", dReader.GetSqlValue(11).ToString());
                //        ////txtRePassword.Text = dReader.GetSqlValue(12).ToString();
                //        ////txtRePassword.Attributes.Add("value", dReader.GetSqlValue(12).ToString());
                //        //DropDownVisitor.Items.FindByText(dReader.GetSqlValue(13).ToString()).Selected = true;
                //        //txtEmailId.Text = dReader.GetSqlValue(14).ToString();
                //        //txtPostalCode.Text = dReader.GetSqlValue(15).ToString();
                //        //txtClinicAddress.Text = dReader.GetSqlValue(16).ToString();
                //        //txtinWords.Text = dReader.GetSqlValue(17).ToString();
                //        //txtClinicName.Text = dReader.GetSqlValue(18).ToString();
                //        //txtAffilatedBy.Text = dReader.GetSqlValue(19).ToString();
                //        //if (dReader["PaymentMode"].ToString() == "Online Deposit")
                //        //{ RbtnOnline.Checked = true; }
                //        //else if (dReader["PaymentMode"].ToString() == "Cash (Only on Sites on Conference Day)")
                //        //{ RbtnCash.Checked = true; }
                //        //else if (dReader["PaymentMode"].ToString() == "Bank Draft/Pay Order")
                //        //{ RbtnBankDraft.Checked = true; }
                //        //if (dReader["BasicFillersHandsW"].ToString() == "True")
                //        //{ RbtnBasicFillerYes.Checked = true; }
                //        //if (dReader["BasicBotulinumToxinAW"].ToString() == "True")
                //        //{ RbtnBasicbotullinumYes.Checked = true; }
                //        //if (dReader["ThreadsHandsW"].ToString() == "True")
                //        //{ RbtnThreadsonWorkshopYes.Checked = true; }
                //        //if (dReader["MonoThreadsFaceNeckW"].ToString() == "True")
                //        //{ RbtnMonoThreadsWorkshopYes.Checked = true; }
                //        //if (dReader["AdvanceFillersHandsW"].ToString() == "True")
                //        //{ chkAdvFillers.Checked = true; }
                //        //if (dReader["AdvanceBotulinumToxinAW"].ToString() == "True")
                //        //{ chkAdvBotulin.Checked = true; }
                //        //if (dReader["LaserCourseESCAD"].ToString() == "True")
                //        //{ RbtnLaserYes.Checked = true; }
                //        //if (dReader["Registration"].ToString() == "True")
                //        //{ RbtnRegistrationEarlyBird.Checked = true; }
                //        //if (dReader["RegistrationNormalReg"].ToString() == "True")
                //        //{ RbtnRegistrationNormal.Checked = true; }
                //        //if (dReader["RegistrationOnSite"].ToString() == "True")
                //        //{
                //        //    RbtnRegistrationOnSide.Checked = true;
                //        //}


                //        //// dt.Date.ToShortDateString();


                //        //byte[] imageData = (byte[])dReader["IMAGE"];
                //        //string img = Convert.ToBase64String(imageData, 0, imageData.Length);
                //        //Image1.ImageUrl = "data:image/png;base64," + img;


                //    }
                //    getUsercmd.Dispose();


                //    conn.Close();
                //}
            }

        }
    }
}