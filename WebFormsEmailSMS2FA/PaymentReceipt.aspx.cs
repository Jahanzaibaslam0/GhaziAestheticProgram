using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using MailKit.Net.Smtp;
using MailKit;
using MimeKit;
using System.Configuration;

namespace WebFormsEmailSMS2FA
{
    public partial class PaymentReceipt : System.Web.UI.Page
    {
        int Payment = 0;
        int Discount = 0;
        int workshop = 0;
        int Registration = 0;
        string sConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
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


            if (!IsPostBack)
            {
                
                if (Session["User"].ToString().ToUpper() == "NOSHINARSHAD@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE2@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE3@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE4@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE5@GMAIL.COM")
                {
                    
                    //{
                    string EmailUser = Request.QueryString["PaymID"].ToString();
                    using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                    {
                        string query = @"select count(*) from Payment where PaymID='" + EmailUser + "'";
                        // SqlCommand cmd = new SqlCommand("insert into lo")
                        sqlConn.Open();
                        SqlCommand cmda = new SqlCommand(query, sqlConn);
                        int count = (int)cmda.ExecuteScalar();
                        if (count > 0)
                        {


                            SqlDataReader dReader;
                            using (SqlConnection conn = new SqlConnection(sConnectionString))
                            {
                                conn.Open();
                                SqlCommand getUsercmd = new SqlCommand("SELECT UserRegistrationDetail.PMDC,UserRegistrationDetail.FirstName,Payment.BasicFillersHandsW,Payment.BasicBotulinumToxinAW,Payment.ThreadsHandsW,Payment.MonoThreadsFaceNeckW,Payment.AdvanceFillersHandsW,Payment.AdvanceBotulinumToxinAW,Payment.LaserCourseESCAD,Payment.RegistrationEarlyBird,Payment.RegistrationNormalReg,Payment.RegistrationOnSite,Payment.PaymentType,Payment.PaymentMode,Payment.PaymentReference,Payment.BankName,Payment.SelfPaid,Payment.CompanyPaid,Payment.PaymentStatus,Payment.PaymentDate,Payment.PaymentFees,Payment.PaymID FROM Payment inner join UserRegistrationDetail on Payment.UserID = UserRegistrationDetail.ID where PaymID = '" + EmailUser + "'", conn);
                                dReader = getUsercmd.ExecuteReader();

                                while (dReader.Read())
                                {
                                    lblPaymentID1.Text = dReader["PaymID"].ToString().ToUpper();
                                    lblPmdcNo.Text = dReader["PMDC"].ToString();
                                    lblName1.Text = dReader["FirstName"].ToString();
                                    lblPaymentMode1.Text = dReader["PaymentType"].ToString();
                                    //ddlPayMode.Items.FindByText(dReader["PaymentType"].ToString()).Selected = true;
                                    lblPaymentDate.Text = dReader["PaymentDate"].ToString();

                                    

                                    if (dReader["BasicFillersHandsW"].ToString() == "True")
                                    {
                                        //chkBasicFil.Checked = true;
                                        //chkBasicFil.Enabled = false;
                                        workshop += 10000;
                                    }
                                    if (dReader["BasicBotulinumToxinAW"].ToString() == "True")
                                    {
                                        workshop += 10000;
                                        //chkBasicToxin.Enabled = false;
                                        //Payment -= 10000;
                                    }
                                    if (dReader["ThreadsHandsW"].ToString() == "True")
                                    {
                                        workshop += 10000;
                                        //chkBasicThreads.Enabled = false;
                                        //Payment -= 10000;
                                    }
                                    if (dReader["MonoThreadsFaceNeckW"].ToString() == "True")
                                    {
                                        workshop += 10000;
                                        //chkBasicMono.Enabled = false;
                                        //Payment -= 10000;
                                    }
                                    if (dReader["AdvanceFillersHandsW"].ToString() == "True")
                                    {
                                        //lblImage.Text = dReader["AdvanceFillersHandsW"].ToString();
                                        workshop += 25000;
                                        //chkAdvFill.Enabled = false;
                                        //Payment -= 25000;
                                    }
                                    if (dReader["AdvanceBotulinumToxinAW"].ToString() == "True")
                                    {
                                        workshop += 25000;
                                        //chkAdvToxin.Enabled = false;
                                        //Payment -= 25000;
                                    }
                                    if (dReader["LaserCourseESCAD"].ToString() == "True")
                                    {
                                        workshop += 25000;
                                        //rdLaserYes.Enabled = false;
                                        //rdLaserNo.Enabled = false;
                                        //Payment -= 25000;
                                        //Discount -= 5000;
                                    }
                                    if (dReader["RegistrationEarlyBird"].ToString() == "True")
                                    {
                                        Registration += 10000;
                                        //rdEarly.Enabled = false;
                                        //rdnormal.Enabled = false;
                                        //rdSite.Enabled = false;
                                        //Payment -= 10000;
                                    }
                                    if (dReader["RegistrationNormalReg"].ToString() == "True")
                                    {
                                        Registration += 12000;
                                        //rdEarly.Enabled = false;
                                        //rdnormal.Enabled = false;
                                        //rdSite.Enabled = false;
                                        //Payment -= 12000;
                                    }
                                    if (dReader["RegistrationOnSite"].ToString() == "True")
                                    {
                                        Registration += 15000;
                                        //rdEarly.Enabled = false;
                                        //rdnormal.Enabled = false;
                                        //rdSite.Enabled = false;
                                        //Payment -= 15000;
                                    }

                                    //txtGuardian.Text = dReader.GetSqlValue(1).ToString();
                                }
                                getUsercmd.Dispose();


                                conn.Close();

                            }
                        }

                        else
                        {

                            string query1 = @"select count(*) from UserRegistrationDetail where Email='" + EmailUser + "'";
                            sqlConn.Open();
                            SqlCommand cmda1 = new SqlCommand(query1, sqlConn);
                            int count1 = (int)cmda1.ExecuteScalar();
                            if (count1 > 0)
                            {
                                //using (SqlConnection sqlConn2 = new SqlConnection(sConnectionString))
                                //{
                                //    string query2 = @"select distinct ID,FirstName from UserRegistrationDetail where Email='" + EmailUser + "'";

                                //    SqlCommand cmd = new SqlCommand(query2, sqlConn2);
                                //    sqlConn2.Open();
                                //    ddlUser.DataSource = cmd.ExecuteReader();
                                //    ddlUser.DataTextField = "FirstName";
                                //    ddlUser.DataValueField = "ID";
                                //    ddlUser.DataBind();
                                //    sqlConn2.Close();
                                //}
                            }
                            else
                            {
                                Response.Write("<script>alert('First Complete Your Registration' );window.location ='Default.aspx';</script>");
                            }
                        }

                        sqlConn.Close();
                    }
                    //}

                    //catch
                    //{
                    //    string EmailUser = Request.QueryString["EmailAddress"].ToString();
                    //    using (SqlConnection sqlConn1 = new SqlConnection(sConnectionString))
                    //    {
                    //        string query1 = @"select distinct ID,FirstName from UserRegistrationDetail where Email='" + EmailUser + "'";

                    //        SqlCommand cmd = new SqlCommand(query1, sqlConn1);
                    //        sqlConn1.Open();
                    //        ddlUser.DataSource = cmd.ExecuteReader();
                    //        ddlUser.DataTextField = "FirstName";
                    //        ddlUser.DataValueField = "ID";
                    //        ddlUser.DataBind();
                    //        sqlConn1.Close();
                    //    }
                    //}

                    //string ID = Request.QueryString["ID"].ToString();
                    ////calPaymentDate.Visible = false;
                    //using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                    //{
                    //    string query = @"select distinct ID,FirstName from UserRegistrationDetail where ID='" + ID + "'";

                    //    SqlCommand cmd = new SqlCommand(query, sqlConn);
                    //    sqlConn.Open();
                    //    ddlUser.DataSource = cmd.ExecuteReader();
                    //    ddlUser.DataTextField = "FirstName";
                    //    ddlUser.DataValueField = "ID";
                    //    ddlUser.DataBind();
                    //    sqlConn.Close();
                    //}



                    //using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                    //{
                    //    string query2 = @"select distinct WorkShopID,WorkShopName from WorkShop";

                    //    SqlCommand cmd2 = new SqlCommand(query2, sqlConn);
                    //    sqlConn.Open();
                    //    DropDownWorkShop.DataSource = cmd2.ExecuteReader();
                    //    DropDownWorkShop.DataTextField = "WorkShopName";
                    //    DropDownWorkShop.DataValueField = "WorkShopID";
                    //    DropDownWorkShop.DataBind();
                    //    sqlConn.Close();
                    //}


                    //SqlDataReader dReader;
                    ////string ID = Request.QueryString["ID"].ToString();

                    //using (SqlConnection conn = new SqlConnection(sConnectionString))
                    //{
                    //    conn.Open();
                    //    SqlCommand getUsercmd = new SqlCommand("SELECT RegistrationFees FROM UserRegistrationDetail where ID='" + ID + "'", conn);
                    //    dReader = getUsercmd.ExecuteReader();

                    //    while (dReader.Read())
                    //    {

                    //        txtBilling.Text = dReader.GetSqlValue(0).ToString().ToUpper();
                    //        //txtGuardian.Text = dReader.GetSqlValue(1).ToString();
                    //    }
                    //    getUsercmd.Dispose();


                    //    conn.Close();
                    //}

                }
                else
                {

                    string EmailUser = Session["User"].ToString();
                    try
                    {

                        using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                        {
                            string query = @"select count(*) from Payment where EmailAddress='" + EmailUser + "'";
                            // SqlCommand cmd = new SqlCommand("insert into lo")
                            sqlConn.Open();
                            SqlCommand cmda = new SqlCommand(query, sqlConn);
                            int count = (int)cmda.ExecuteScalar();
                            if (count > 0)
                            {
                                //using (SqlConnection sqlConn1 = new SqlConnection(sConnectionString))
                                //{
                                //    string query1 = @"select distinct ID,FirstName from UserRegistrationDetail where Email='" + EmailUser + "'";

                                //    SqlCommand cmd = new SqlCommand(query1, sqlConn1);
                                //    sqlConn1.Open();
                                //    ddlUser.DataSource = cmd.ExecuteReader();
                                //    ddlUser.DataTextField = "FirstName";
                                //    ddlUser.DataValueField = "ID";
                                //    ddlUser.DataBind();
                                //    sqlConn1.Close();
                                //}

                                SqlDataReader dReader;
                                using (SqlConnection conn = new SqlConnection(sConnectionString))
                                {
                                    conn.Open();
                                    SqlCommand getUsercmd = new SqlCommand("SELECT UserRegistrationDetail.PMDC, UserRegistrationDetail.FirstName, Payment.BasicFillersHandsW, Payment.BasicBotulinumToxinAW, Payment.ThreadsHandsW, Payment.MonoThreadsFaceNeckW, Payment.AdvanceFillersHandsW, Payment.AdvanceBotulinumToxinAW, Payment.LaserCourseESCAD, Payment.RegistrationEarlyBird, Payment.RegistrationNormalReg, Payment.RegistrationOnSite, Payment.PaymentType, Payment.PaymentMode, Payment.PaymentReference, Payment.BankName, Payment.SelfPaid, Payment.CompanyPaid, Payment.PaymentStatus, Payment.PaymentDate, Payment.PaymentFees, Payment.PaymID FROM Payment inner join UserRegistrationDetail on Payment.UserID = UserRegistrationDetail.ID where PaymID = '" + EmailUser + "'", conn);
                                    dReader = getUsercmd.ExecuteReader();

                                    while (dReader.Read())
                                    {

                                        lblPaymentID1.Text = dReader["PaymID"].ToString().ToUpper();
                                        lblPmdcNo.Text = dReader["PMDC"].ToString();
                                        lblName1.Text = dReader["FirstName"].ToString();
                                        lblPaymentMode1.Text = dReader["PaymentType"].ToString();
                                        //ddlPayMode.Items.FindByText(dReader["PaymentType"].ToString()).Selected = true;
                                        lblPaymentDate.Text = dReader["PaymentDate"].ToString();


                                        if (dReader["BasicFillersHandsW"].ToString() == "True")
                                        {
                                            
                                            workshop += 10000;
                                        }
                                        if (dReader["BasicBotulinumToxinAW"].ToString() == "True")
                                        {
                                            workshop += 10000;
                                        }
                                        if (dReader["ThreadsHandsW"].ToString() == "True")
                                        {
                                            workshop += 10000;
                                        }
                                        if (dReader["MonoThreadsFaceNeckW"].ToString() == "True")
                                        {
                                            workshop += 10000;
                                        }
                                        if (dReader["AdvanceFillersHandsW"].ToString() == "True")
                                        {
                                            workshop += 25000;
                                            
                                        }
                                        if (dReader["AdvanceBotulinumToxinAW"].ToString() == "True")
                                        {
                                            workshop += 25000;
                                        }
                                        if (dReader["LaserCourseESCAD"].ToString() == "True")
                                        {
                                            workshop += 20000;
                                            
                                        }
                                        if (dReader["RegistrationEarlyBird"].ToString() == "True")
                                        {
                                            Registration += 10000;
                                        }
                                        if (dReader["RegistrationNormalReg"].ToString() == "True")
                                        {
                                            Registration += 10000;
                                        }
                                        if (dReader["RegistrationOnSite"].ToString() == "True")
                                        {
                                            Registration += 10000;
                                            
                                        }

                                        //txtGuardian.Text = dReader.GetSqlValue(1).ToString();
                                    }
                                    getUsercmd.Dispose();


                                    conn.Close();

                                }
                            }

                            else
                            {
                                string query1 = @"select count(*) from UserRegistrationDetail where Email='" + EmailUser + "'";
                                sqlConn.Open();
                                SqlCommand cmda1 = new SqlCommand(query1, sqlConn);
                                int count1 = (int)cmda1.ExecuteScalar();
                                if (count1 > 0)
                                {
                                    //using (SqlConnection sqlConn2 = new SqlConnection(sConnectionString))
                                    //{
                                    //    string query2 = @"SELECT UserRegistrationDetail.PMDC,UserRegistrationDetail.FirstName,Payment.BasicFillersHandsW,Payment.BasicBotulinumToxinAW,Payment.ThreadsHandsW,Payment.MonoThreadsFaceNeckW,Payment.AdvanceFillersHandsW,Payment.AdvanceBotulinumToxinAW,Payment.LaserCourseESCAD,Payment.RegistrationEarlyBird,Payment.RegistrationNormalReg,Payment.RegistrationOnSite,Payment.PaymentType,Payment.PaymentMode,Payment.PaymentReference,Payment.BankName,Payment.SelfPaid,Payment.CompanyPaid,Payment.PaymentStatus,Payment.PaymentDate,Payment.PaymentFees,Payment.PaymID FROM Payment inner join UserRegistrationDetail on Payment.UserID = UserRegistrationDetail.ID where PaymID = '" + EmailUser + "'");

                                    //    SqlCommand cmd = new SqlCommand(query2, sqlConn2);
                                    //    sqlConn2.Open();
                                    //    ddlUser.DataSource = cmd.ExecuteReader();
                                    //    ddlUser.DataTextField = "FirstName";
                                    //    ddlUser.DataValueField = "ID";
                                    //    ddlUser.DataBind();
                                    //    sqlConn2.Close();
                                    //}
                                }
                                else
                                {
                                    Response.Write("<script>alert('First Complete Your Registration' );window.location ='Default.aspx';</script>");
                                }
                            }

                            sqlConn.Close();
                        }
                    }
                    catch
                    {

                        //using (SqlConnection sqlConn1 = new SqlConnection(sConnectionString))
                        //{
                        //    string query1 = @"select distinct ID,FirstName from UserRegistrationDetail where Email='" + EmailUser + "'";

                        //    SqlCommand cmd = new SqlCommand(query1, sqlConn1);
                        //    sqlConn1.Open();
                        //    ddlUser.DataSource = cmd.ExecuteReader();
                        //    ddlUser.DataTextField = "FirstName";
                        //    ddlUser.DataValueField = "ID";
                        //    ddlUser.DataBind();
                        //    sqlConn1.Close();
                        //}
                    }



                    //calPaymentDate.Visible = false;




                    //using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                    //{
                    //    string query2 = @"select distinct WorkShopID,WorkShopName from WorkShop";

                    //    SqlCommand cmd2 = new SqlCommand(query2, sqlConn);
                    //    sqlConn.Open();
                    //    DropDownWorkShop.DataSource = cmd2.ExecuteReader();
                    //    DropDownWorkShop.DataTextField = "WorkShopName";
                    //    DropDownWorkShop.DataValueField = "WorkShopID";
                    //    DropDownWorkShop.DataBind();
                    //    sqlConn.Close();
                    //}


                    //SqlDataReader dReader;

                    //using (SqlConnection conn = new SqlConnection(sConnectionString))
                    //{
                    //    conn.Open();
                    //    SqlCommand getUsercmd = new SqlCommand("SELECT RegistrationFees FROM UserRegistrationDetail where Email='" + EmailUser + "'", conn);
                    //    dReader = getUsercmd.ExecuteReader();

                    //    while (dReader.Read())
                    //    {

                    //        txtBilling.Text = dReader.GetSqlValue(0).ToString().ToUpper();
                    //        //txtGuardian.Text = dReader.GetSqlValue(1).ToString();
                    //    }
                    //    getUsercmd.Dispose();


                    //    conn.Close();
                    //}
                }
            }



            //lblAmountinWords1.Text = this.ConvertNumbertoWords(workshop+Registration);//Payment.ToString();
            //txtDiscount.Text = Discount.ToString();
            //lblTotalAmount.Text = (Payment - Discount).ToString();

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

        //public void InsertDataInDB()
        //{
        //    //if (!fuImage.HasFile)
        //    //{
        //    //    lblImage.Text = "Please insert Image";
        //    //}
        //    //else
        //    {
        //        //int lenght = fuImage.PostedFile.ContentLength;
        //        //byte[] pic = new byte[lenght];
        //        //fuImage.PostedFile.InputStream.Read(pic, 0, lenght);


        //        string sConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        //        string sQuery = string.Format("INSERT INTO Payment (PaymentType,UserID,PaymentReference,BankName,PaymentDate,PaymentStatus,SelfPaid,CompanyPaid,PaymentEvidance,BasicFillersHandsW,BasicBotulinumToxinAW,ThreadsHandsW,MonoThreadsFaceNeckW,AdvanceFillersHandsW,AdvanceBotulinumToxinAW,LaserCourseESCAD,RegistrationEarlyBird,RegistrationNormalReg,RegistrationOnSite,EmailAddress,PaymentFees) Values (@PaymentType,@UserID,@PaymentReference,@BankName,@PaymentDate,@PaymentStatus,@SelfPaid,@CompanyPaid,@PaymentEvidance,@BasicFillersHandsW,@BasicBotulinumToxinAW,@ThreadsHandsW,@MonoThreadsFaceNeckW,@AdvanceFillersHandsW,@AdvanceBotulinumToxinAW,@LaserCourseESCAD,@RegistrationEarlyBird,@RegistrationNormalReg,@RegistrationOnSite,@EmailAddress,@PaymentFees)");


        //        SqlConnection con = new SqlConnection(sConnectionString);

        //        con.Open();
        //        SqlCommand cmd = new SqlCommand(sQuery, con);
        //        ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
        //        cmd.Parameters.AddWithValue("@PaymentType", ddlPayMode.SelectedItem.Text);
        //        cmd.Parameters.AddWithValue("@UserID", ddlUser.SelectedItem.Value);
        //        //cmd.Parameters["@CustID"].Value = DropDownList1.SelectedItem.Value;
        //        //cmd.Parameters.AddWithValue("@WorkShopID", DropDownWorkShop.SelectedItem.Value);
        //        cmd.Parameters.AddWithValue("@PaymentReference", txtPayRef.Text.Trim());
        //        //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
        //        cmd.Parameters.AddWithValue("@BankName", txtBankName.Text.Trim());
        //        cmd.Parameters.AddWithValue("@PaymentDate", txtDate.Text.Trim());
        //        cmd.Parameters.AddWithValue("@PaymentStatus", "Payment Validation Pending");
        //        cmd.Parameters.AddWithValue("@SelfPaid", rdSelfPaid.Checked);
        //        cmd.Parameters.AddWithValue("@CompanyPaid", rdCompanyPaid.Checked);
        //        cmd.Parameters.AddWithValue("@PaymentEvidance", pic);
        //        cmd.Parameters.AddWithValue("@BasicFillersHandsW", chkBasicFil.Checked);
        //        cmd.Parameters.AddWithValue("@BasicBotulinumToxinAW", chkBasicToxin.Checked);
        //        cmd.Parameters.AddWithValue("@ThreadsHandsW", chkBasicThreads.Checked);
        //        cmd.Parameters.AddWithValue("@MonoThreadsFaceNeckW", chkBasicMono.Checked);
        //        cmd.Parameters.AddWithValue("@AdvanceFillersHandsW", chkAdvFill.Checked);
        //        cmd.Parameters.AddWithValue("@AdvanceBotulinumToxinAW", chkAdvToxin.Checked);
        //        cmd.Parameters.AddWithValue("@LaserCourseESCAD", rdLaserYes.Checked);
        //        cmd.Parameters.AddWithValue("@RegistrationEarlyBird", rdEarly.Checked);
        //        cmd.Parameters.AddWithValue("@RegistrationNormalReg", rdnormal.Checked);
        //        cmd.Parameters.AddWithValue("@RegistrationOnSite", rdSite.Checked);
        //        cmd.Parameters.AddWithValue("@EmailAddress", Session["User"].ToString());
        //        cmd.Parameters.AddWithValue("@PaymentFees", Payment - Discount);

        //        cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
        //        con.Close();
        //        PaymentEmail email = new PaymentEmail();
        //        email.Email1(Session["User"].ToString(), "PAYMENT SUBMISSION EMAIL", "Mr", ddlUser.SelectedItem.Text);
        //        //Dr.Ghazanfar
        //        //email.Email1("oozgar@gmail.com", "PAYMENT SUBMISSION EMAIL", "Dr.Ghazanfar", "Ghazanfar Ali");
        //        Response.Write("<script>alert('Payment Submit Sucessfully');window.location ='Default.aspx';</script>");
        //    }
        //}

        protected void rdEarly_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 10000;
        }

        protected void rdnormal_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 12000;

        }

        protected void rdSite_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 15000;
        }

        protected void chkBasicFil_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 10000;
        }

        protected void chkBasicToxin_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 10000;
        }

        protected void chkBasicThreads_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 10000;
        }

        protected void chkBasicMono_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 10000;
        }

        protected void chkAdvToxin_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 25000;
        }

        protected void chkAdvFill_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 25000;
        }

        protected void rdLaserYes_CheckedChanged(object sender, EventArgs e)
        {
            Payment += 25000;
            Discount += 50000;
        }

        protected void rdLaserNo_CheckedChanged(object sender, EventArgs e)
        {

        }

        //protected void BtnSubmit_Click(object sender, EventArgs e)
        //{
        //    this.InsertDataInDB();
        //}

        //protected void BtnValidate_Click(object sender, EventArgs e)
        //{
        //    string EmailUser = Request.QueryString["PaymID"].ToString();
        //    string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //    SqlConnection conn = new SqlConnection(connstring);
        //    int lenght = fuImage.PostedFile.ContentLength;
        //    byte[] pic = new byte[lenght];
        //    fuImage.PostedFile.InputStream.Read(pic, 0, lenght);


        //    conn.Open();

        //    string sql2 = "UPDATE Payment SET PaymentStatus =@PaymentStatus, PaymentFees=@payment,PaymentType=@PaymentType,SelfPaid=@SelfPaid,CompanyPaid=@CompanyPaid,PaymentEvidance=@PaymentEvidance,BankName=@BankName , PaymentDate=@PaymentDate,PaymentReference=@PaymentReference,BasicFillersHandsW=@BasicFillersHandsW,BasicBotulinumToxinAW=@BasicBotulinumToxinAW,ThreadsHandsW=@ThreadsHandsW,MonoThreadsFaceNeckW=@MonoThreadsFaceNeckW,AdvanceFillersHandsW=@AdvanceFillersHandsW,AdvanceBotulinumToxinAW=@AdvanceBotulinumToxinAW,LaserCourseESCAD=@LaserCourseESCAD,RegistrationEarlyBird=@RegistrationEarlyBird,RegistrationNormalReg=@RegistrationNormalReg,RegistrationOnSite=@RegistrationOnSite WHERE PaymID='" + EmailUser + "'";

        //    SqlCommand cmd = new SqlCommand(sql2, conn);

        //    cmd.Parameters.AddWithValue("@PaymentType", ddlPayMode.SelectedItem.Text);
        //    cmd.Parameters.AddWithValue("@BankName", txtBankName.Text.Trim());
        //    cmd.Parameters.AddWithValue("@PaymentDate", txtDate.Text.Trim());
        //    cmd.Parameters.AddWithValue("@PaymentStatus", "Paid");
        //    cmd.Parameters.AddWithValue("@PaymentReference", txtPayRef.Text.Trim());
        //    cmd.Parameters.AddWithValue("@SelfPaid", rdSelfPaid.Checked);
        //    cmd.Parameters.AddWithValue("@CompanyPaid", rdCompanyPaid.Checked);
        //    cmd.Parameters.AddWithValue("@PaymentEvidance", pic);
        //    cmd.Parameters.AddWithValue("@BasicFillersHandsW", chkBasicFil.Checked);
        //    cmd.Parameters.AddWithValue("@BasicBotulinumToxinAW", chkBasicToxin.Checked);
        //    cmd.Parameters.AddWithValue("@ThreadsHandsW", chkBasicThreads.Checked);
        //    cmd.Parameters.AddWithValue("@MonoThreadsFaceNeckW", chkBasicMono.Checked);
        //    cmd.Parameters.AddWithValue("@AdvanceFillersHandsW", chkAdvFill.Checked);
        //    cmd.Parameters.AddWithValue("@AdvanceBotulinumToxinAW", chkAdvToxin.Checked);
        //    cmd.Parameters.AddWithValue("@LaserCourseESCAD", rdLaserYes.Checked);
        //    cmd.Parameters.AddWithValue("@RegistrationEarlyBird", rdEarly.Checked);
        //    cmd.Parameters.AddWithValue("@RegistrationNormalReg", rdnormal.Checked);
        //    cmd.Parameters.AddWithValue("@RegistrationOnSite", rdSite.Checked);
        //    cmd.Parameters.AddWithValue("@EmailAddress", Session["User"].ToString());
        //    cmd.Parameters.AddWithValue("@payment", Payment - Discount);
        //    cmd.ExecuteNonQuery();



        //    //int res=cmd.ExecuteNonQuery();
        //    Response.Write("<script>alert('Record Validate Sucessfully');window.location ='PaymentList.aspx';</script>");



        //}

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            string EmailUser = Request.QueryString["PaymID"].ToString();
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            conn.Open();

            string sql2 = "UPDATE Payment SET PaymentStatus =@PaymentStatus  WHERE PaymID='" + EmailUser + "'";

            SqlCommand cmd = new SqlCommand(sql2, conn);


            cmd.Parameters.AddWithValue("@PaymentStatus", "Cancel");
            //cmd.Parameters.AddWithValue("@payment", txtPayfee.Text);
            //cmd.Parameters.AddWithValue("@PaymentDate", txtDate.Text);
            cmd.ExecuteNonQuery();



            //int res=cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Payment Cancel Sucessfully');window.location ='PaymentList.aspx';</script>");


        }
    }
}