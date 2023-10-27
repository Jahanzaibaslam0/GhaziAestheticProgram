﻿using System;
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
    public partial class WorkshopandCourse : System.Web.UI.Page
    {
        int Payment = 0;
        int Discount = 0;
        string sConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] != null)
            {
                if (Session["User"].ToString() == "NOSHINARSHAD@GMAIL.COM")
                {
                    string User = Session["User"].ToString();

                }

            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");

            }


            if (!IsPostBack)
            {
                BtnValidate.Visible = false;
                BtnRefresh.Visible = false;
                BtnCancel.Visible = false;
                if (Session["User"].ToString().ToUpper() == "NOSHINARSHAD@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE2@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE3@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE4@GMAIL.COM" || Session["User"].ToString().ToUpper() == "GHAZISYSTEMEXECUTIVE5@GMAIL.COM")
                {
                    BtnSubmit.Visible = true;
                    BtnValidate.Visible = false;
                    BtnCancel.Visible = false;
                    BtnRefresh.Visible = true;
                    //try
                    //{
                    //string EmailUser = Request.QueryString["PaymID"].ToString();
                    using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                    {
                        string query = @"select count(*) from Payment";// where PaymID='" + EmailUser + "'";
                        // SqlCommand cmd = new SqlCommand("insert into lo")
                        sqlConn.Open();
                        SqlCommand cmda = new SqlCommand(query, sqlConn);
                        int count = (int)cmda.ExecuteScalar();
                        if (count < 0)
                        {
                            using (SqlConnection sqlConn1 = new SqlConnection(sConnectionString))
                            {
                                string query1 = @"select distinct R.ID,R.FirstName from UserRegistrationDetail R inner join Payment P on R.ID=P.UserID and R.Email=P.EmailAddress";

                                SqlCommand cmd = new SqlCommand(query1, sqlConn1);
                                sqlConn1.Open();
                                ddlUser.DataSource = cmd.ExecuteReader();
                                ddlUser.DataTextField = "FirstName";
                                ddlUser.DataValueField = "ID";
                                ddlUser.DataBind();
                                sqlConn1.Close();
                            }

                            SqlDataReader dReader;
                            //using (SqlConnection conn = new SqlConnection(sConnectionString))
                            //{
                            //    conn.Open();
                            //    SqlCommand getUsercmd = new SqlCommand("SELECT BasicFillersHandsW,BasicBotulinumToxinAW,ThreadsHandsW,MonoThreadsFaceNeckW,AdvanceFillersHandsW,AdvanceBotulinumToxinAW,LaserCourseESCAD,RegistrationEarlyBird,RegistrationNormalReg,RegistrationOnSite,PaymentType,PaymentMode,PaymentReference,BankName,SelfPaid,CompanyPaid,PaymentStatus,PaymentDate,PaymentFees FROM Payment where PaymID='" + EmailUser + "'", conn);
                            //    dReader = getUsercmd.ExecuteReader();

                            //    while (dReader.Read())
                            //    {
                            //        txtBankName.Text = dReader["BankName"].ToString().ToUpper();
                            //        txtPayfee.Text = dReader["PaymentFees"].ToString();
                            //        txtPayRef.Text = dReader["PaymentReference"].ToString();
                            //        ddlPayMode.Items.FindByText(dReader["PaymentType"].ToString()).Selected = true;
                            //        txtDate.Text = dReader["PaymentDate"].ToString();

                            //        if (dReader["SelfPaid"].ToString() == "True")
                            //        {
                            //            rdSelfPaid.Checked = true;

                            //        }
                            //        if (dReader["CompanyPaid"].ToString() == "True")
                            //        {
                            //            rdCompanyPaid.Checked = true;
                            //        }

                            //        if (dReader["BasicFillersHandsW"].ToString() == "True")
                            //        {
                            //            chkBasicFil.Checked = true;
                            //            //chkBasicFil.Enabled = false;
                            //            //Payment -= 10000;
                            //        }
                            //        if (dReader["BasicBotulinumToxinAW"].ToString() == "True")
                            //        {
                            //            chkBasicToxin.Checked = true;
                            //            //chkBasicToxin.Enabled = false;
                            //            //Payment -= 10000;
                            //        }
                            //        if (dReader["ThreadsHandsW"].ToString() == "True")
                            //        {
                            //            chkBasicThreads.Checked = true;
                            //            //chkBasicThreads.Enabled = false;
                            //            //Payment -= 10000;
                            //        }
                            //        if (dReader["MonoThreadsFaceNeckW"].ToString() == "True")
                            //        {
                            //            chkBasicMono.Checked = true;
                            //            //chkBasicMono.Enabled = false;
                            //            //Payment -= 10000;
                            //        }
                            //        if (dReader["AdvanceFillersHandsW"].ToString() == "True")
                            //        {
                            //            lblImage.Text = dReader["AdvanceFillersHandsW"].ToString();
                            //            chkAdvFill.Checked = true;
                            //            //chkAdvFill.Enabled = false;
                            //            //Payment -= 25000;
                            //        }
                            //        if (dReader["AdvanceBotulinumToxinAW"].ToString() == "True")
                            //        {
                            //            chkAdvToxin.Checked = true;
                            //            //chkAdvToxin.Enabled = false;
                            //            //Payment -= 25000;
                            //        }
                            //        if (dReader["LaserCourseESCAD"].ToString() == "True")
                            //        {
                            //            rdLaserYes.Checked = true;
                            //            //rdLaserYes.Enabled = false;
                            //            //rdLaserNo.Enabled = false;
                            //            //Payment -= 25000;
                            //            //Discount -= 5000;
                            //        }
                            //        if (dReader["RegistrationEarlyBird"].ToString() == "True")
                            //        {
                            //            rdEarly.Checked = true;
                            //            //rdEarly.Enabled = false;
                            //            //rdnormal.Enabled = false;
                            //            //rdSite.Enabled = false;
                            //            //Payment -= 10000;
                            //        }
                            //        if (dReader["RegistrationNormalReg"].ToString() == "True")
                            //        {
                            //            rdnormal.Checked = true;
                            //            //rdEarly.Enabled = false;
                            //            //rdnormal.Enabled = false;
                            //            //rdSite.Enabled = false;
                            //            //Payment -= 12000;
                            //        }
                            //        if (dReader["RegistrationOnSite"].ToString() == "True")
                            //        {
                            //            rdSite.Checked = true;
                            //            //rdEarly.Enabled = false;
                            //            //rdnormal.Enabled = false;
                            //            //rdSite.Enabled = false;
                            //            //Payment -= 15000;
                            //        }

                            //        //txtGuardian.Text = dReader.GetSqlValue(1).ToString();
                            //    }
                            //    getUsercmd.Dispose();


                            //    conn.Close();

                            //}
                        }

                        else
                        {

                            string query1 = @"select count(*) from UserRegistrationDetail";// where Email='" + EmailUser + "'";
                            //sqlConn.Open();
                            SqlCommand cmda1 = new SqlCommand(query1, sqlConn);
                            int count1 = (int)cmda1.ExecuteScalar();
                            if (count1 > 0)
                            {
                                using (SqlConnection sqlConn2 = new SqlConnection(sConnectionString))
                                {
                                    string query2 = @"select distinct ID,FirstName from UserRegistrationDetail";// where Email='" + EmailUser + "'";

                                    SqlCommand cmd = new SqlCommand(query2, sqlConn2);
                                    sqlConn2.Open();
                                    ddlUser.DataSource = cmd.ExecuteReader();
                                    ddlUser.DataTextField = "FirstName";
                                    ddlUser.DataValueField = "ID";
                                    ddlUser.DataBind();
                                    sqlConn2.Close();
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('First Complete Your Registration' );window.location ='Default.aspx';</script>");
                            }
                            sqlConn.Close();
                        }

                        
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
                                using (SqlConnection sqlConn1 = new SqlConnection(sConnectionString))
                                {
                                    string query1 = @"select distinct ID,FirstName from UserRegistrationDetail where Email='" + EmailUser + "'";

                                    SqlCommand cmd = new SqlCommand(query1, sqlConn1);
                                    sqlConn1.Open();
                                    ddlUser.DataSource = cmd.ExecuteReader();
                                    ddlUser.DataTextField = "FirstName";
                                    ddlUser.DataValueField = "ID";
                                    ddlUser.DataBind();
                                    sqlConn1.Close();
                                }

                                SqlDataReader dReader;
                                using (SqlConnection conn = new SqlConnection(sConnectionString))
                                {
                                    conn.Open();
                                    SqlCommand getUsercmd = new SqlCommand("SELECT BasicFillersHandsW,BasicBotulinumToxinAW,ThreadsHandsW,MonoThreadsFaceNeckW,AdvanceFillersHandsW,AdvanceBotulinumToxinAW,LaserCourseESCAD,RegistrationEarlyBird,RegistrationNormalReg,RegistrationOnSite FROM Payment where EmailAddress='" + EmailUser + "'", conn);
                                    dReader = getUsercmd.ExecuteReader();

                                    while (dReader.Read())
                                    {

                                        if (dReader["BasicFillersHandsW"].ToString() == "True")
                                        {
                                            chkBasicFil.Checked = true;
                                            chkBasicFil.Enabled = false;
                                            Payment -= 10000;
                                        }
                                        if (dReader["BasicBotulinumToxinAW"].ToString() == "True")
                                        {
                                            chkBasicToxin.Checked = true;
                                            chkBasicToxin.Enabled = false;
                                            Payment -= 10000;
                                        }
                                        if (dReader["ThreadsHandsW"].ToString() == "True")
                                        {
                                            chkBasicThreads.Checked = true;
                                            chkBasicThreads.Enabled = false;
                                            Payment -= 10000;
                                        }
                                        if (dReader["MonoThreadsFaceNeckW"].ToString() == "True")
                                        {
                                            chkBasicMono.Checked = true;
                                            chkBasicMono.Enabled = false;
                                            Payment -= 10000;
                                        }
                                        if (dReader["AdvanceFillersHandsW"].ToString() == "True")
                                        {
                                            lblImage.Text = dReader["AdvanceFillersHandsW"].ToString();
                                            chkAdvFill.Checked = true;
                                            chkAdvFill.Enabled = false;
                                            Payment -= 25000;
                                        }
                                        if (dReader["AdvanceBotulinumToxinAW"].ToString() == "True")
                                        {
                                            chkAdvToxin.Checked = true;
                                            chkAdvToxin.Enabled = false;
                                            Payment -= 25000;
                                        }
                                        if (dReader["LaserCourseESCAD"].ToString() == "True")
                                        {
                                            rdLaserYes.Checked = true;
                                            rdLaserYes.Enabled = false;
                                            rdLaserNo.Enabled = false;
                                            Payment -= 25000;
                                            Discount -= 5000;
                                        }
                                        if (dReader["RegistrationEarlyBird"].ToString() == "True")
                                        {
                                            rdEarly.Checked = true;
                                            rdEarly.Enabled = false;
                                            rdnormal.Enabled = false;
                                            rdSite.Enabled = false;
                                            Payment -= 10000;
                                        }
                                        if (dReader["RegistrationNormalReg"].ToString() == "True")
                                        {
                                            rdnormal.Checked = true;
                                            rdEarly.Enabled = false;
                                            rdnormal.Enabled = false;
                                            rdSite.Enabled = false;
                                            Payment -= 12000;
                                        }
                                        if (dReader["RegistrationOnSite"].ToString() == "True")
                                        {
                                            rdSite.Checked = true;
                                            rdEarly.Enabled = false;
                                            rdnormal.Enabled = false;
                                            rdSite.Enabled = false;
                                            Payment -= 15000;
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
                                    using (SqlConnection sqlConn2 = new SqlConnection(sConnectionString))
                                    {
                                        string query2 = @"select distinct ID,FirstName from UserRegistrationDetail where Email='" + EmailUser + "'";

                                        SqlCommand cmd = new SqlCommand(query2, sqlConn2);
                                        sqlConn2.Open();
                                        ddlUser.DataSource = cmd.ExecuteReader();
                                        ddlUser.DataTextField = "FirstName";
                                        ddlUser.DataValueField = "ID";
                                        ddlUser.DataBind();
                                        sqlConn2.Close();
                                    }
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

                        using (SqlConnection sqlConn1 = new SqlConnection(sConnectionString))
                        {
                            string query1 = @"select distinct ID,FirstName from UserRegistrationDetail where Email='" + EmailUser + "'";

                            SqlCommand cmd = new SqlCommand(query1, sqlConn1);
                            sqlConn1.Open();
                            ddlUser.DataSource = cmd.ExecuteReader();
                            ddlUser.DataTextField = "FirstName";
                            ddlUser.DataValueField = "ID";
                            ddlUser.DataBind();
                            sqlConn1.Close();
                        }
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
            if (rdEarly.Checked && rdEarly.Enabled)
            {
                Payment += 10000;
            }
            else if (rdnormal.Checked && rdnormal.Enabled)
            {
                Payment += 12000;
            }
            else if (rdSite.Checked && rdSite.Enabled)
            {
                Payment += 15000;
            }
            if (chkBasicFil.Checked && chkBasicFil.Enabled)
            {
                Payment += 10000;
            }
            if (chkBasicToxin.Checked && chkBasicToxin.Enabled)
            {
                Payment += 10000;
            }
            if (chkBasicThreads.Checked && chkBasicThreads.Enabled)
            {
                Payment += 10000;
            }
            if (chkBasicMono.Checked && chkBasicMono.Enabled)
            {
                Payment += 10000;
            }
            if (chkAdvFill.Checked && chkAdvFill.Enabled)
            {
                Payment += 25000;
            }
            if (chkAdvToxin.Checked && chkAdvToxin.Enabled)
            {
                Payment += 25000;
            }
            if (rdLaserYes.Checked && rdLaserYes.Enabled)
            {
                Payment += 25000;
                Discount += 5000;
            }


            txtPayfee.Text = this.ConvertNumbertoWords(Payment - Discount);//Payment.ToString();
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

        public void InsertDataInDB()
        {
            string EmailUser = Session["User"].ToString();
            if (!fuImage.HasFile)
            {
                lblImage.Text = "Please insert Image";
            }
            else
            {
                int lenght = fuImage.PostedFile.ContentLength;
                byte[] pic = new byte[lenght];
                fuImage.PostedFile.InputStream.Read(pic, 0, lenght);

                //string Email1;
                string sConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlDataReader dReader;
                using (SqlConnection sqlConn2 = new SqlConnection(sConnectionString))
                {
                    string query2 = @"select Email from UserRegistrationdetail where Id='" + ddlUser.SelectedItem.Value + "'";
                    sqlConn2.Open();
                    SqlCommand getUsercmd = new SqlCommand("select Email from UserRegistrationdetail where Id='" + ddlUser.SelectedItem.Value + "'", sqlConn2);
                    dReader = getUsercmd.ExecuteReader();

                    while (dReader.Read())
                    {
                        txtEmail.Text = dReader["Email"].ToString();
                        //if (dReader["BasicFillersHandsW"].ToString() == "True")
                        //{
                        //    chkBasicFil.Checked = true;
                        //    chkBasicFil.Enabled = false;
                        //    Payment -= 10000;
                        //}
                    }
                    sqlConn2.Close();


                    string sQuery = string.Format("INSERT INTO Payment (PaymentType,UserID,PaymentReference,BankName,PaymentDate,PaymentStatus,SelfPaid,CompanyPaid,PaymentEvidance,BasicFillersHandsW,BasicBotulinumToxinAW,ThreadsHandsW,MonoThreadsFaceNeckW,AdvanceFillersHandsW,AdvanceBotulinumToxinAW,LaserCourseESCAD,RegistrationEarlyBird,RegistrationNormalReg,RegistrationOnSite,EmailAddress,PaymentFees,ModifyBy,ModifyDate) Values (@PaymentType,@UserID,@PaymentReference,@BankName,@PaymentDate,@PaymentStatus,@SelfPaid,@CompanyPaid,@PaymentEvidance,@BasicFillersHandsW,@BasicBotulinumToxinAW,@ThreadsHandsW,@MonoThreadsFaceNeckW,@AdvanceFillersHandsW,@AdvanceBotulinumToxinAW,@LaserCourseESCAD,@RegistrationEarlyBird,@RegistrationNormalReg,@RegistrationOnSite,@EmailAddress,@PaymentFees,@ModifyBy,@ModifyDate)");


                    SqlConnection con = new SqlConnection(sConnectionString);

                    con.Open();
                    SqlCommand cmd = new SqlCommand(sQuery, con);
                    ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
                    cmd.Parameters.AddWithValue("@PaymentType", ddlPayMode.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@UserID", ddlUser.SelectedItem.Value);
                    //cmd.Parameters["@CustID"].Value = DropDownList1.SelectedItem.Value;
                    //cmd.Parameters.AddWithValue("@WorkShopID", DropDownWorkShop.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@PaymentReference", txtPayRef.Text.Trim());
                    //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
                    cmd.Parameters.AddWithValue("@BankName", txtBankName.Text.Trim());
                    cmd.Parameters.AddWithValue("@PaymentDate", txtDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@PaymentStatus", "Payment Validation Pending");
                    cmd.Parameters.AddWithValue("@SelfPaid", rdSelfPaid.Checked);
                    cmd.Parameters.AddWithValue("@CompanyPaid", rdCompanyPaid.Checked);
                    cmd.Parameters.AddWithValue("@PaymentEvidance", pic);
                    cmd.Parameters.AddWithValue("@BasicFillersHandsW", chkBasicFil.Checked);
                    cmd.Parameters.AddWithValue("@BasicBotulinumToxinAW", chkBasicToxin.Checked);
                    cmd.Parameters.AddWithValue("@ThreadsHandsW", chkBasicThreads.Checked);
                    cmd.Parameters.AddWithValue("@MonoThreadsFaceNeckW", chkBasicMono.Checked);
                    cmd.Parameters.AddWithValue("@AdvanceFillersHandsW", chkAdvFill.Checked);
                    cmd.Parameters.AddWithValue("@AdvanceBotulinumToxinAW", chkAdvToxin.Checked);
                    cmd.Parameters.AddWithValue("@LaserCourseESCAD", rdLaserYes.Checked);
                    cmd.Parameters.AddWithValue("@RegistrationEarlyBird", rdEarly.Checked);
                    cmd.Parameters.AddWithValue("@RegistrationNormalReg", rdnormal.Checked);
                    cmd.Parameters.AddWithValue("@RegistrationOnSite", rdSite.Checked);
                    cmd.Parameters.AddWithValue("@EmailAddress", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@PaymentFees", Payment - Discount);
                    cmd.Parameters.AddWithValue("@ModifyBy", EmailUser);
                    cmd.Parameters.AddWithValue("ModifyDate", DateTime.Now);

                    cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
                    con.Close();
                    //PaymentEmail email = new PaymentEmail();
                    //email.Email1(Session["User"].ToString(), "PAYMENT SUBMISSION EMAIL", "Mr.", ddlUser.SelectedItem.Text);
                    Response.Write("<script>alert('Payment Submit Sucessfully');window.location ='Default.aspx';</script>");
                }
            }
        }

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

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            this.InsertDataInDB();
        }

        protected void BtnValidate_Click(object sender, EventArgs e)
        {
            string EmailUser = Request.QueryString["PaymID"].ToString();
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            int lenght = fuImage.PostedFile.ContentLength;
            byte[] pic = new byte[lenght];
            fuImage.PostedFile.InputStream.Read(pic, 0, lenght);


            conn.Open();

            string sql2 = "UPDATE Payment SET PaymentStatus =@PaymentStatus, PaymentFees=@payment,PaymentType=@PaymentType,SelfPaid=@SelfPaid,CompanyPaid=@CompanyPaid,PaymentEvidance=@PaymentEvidance,BankName=@BankName , PaymentDate=@PaymentDate,PaymentReference=@PaymentReference,BasicFillersHandsW=@BasicFillersHandsW,BasicBotulinumToxinAW=@BasicBotulinumToxinAW,ThreadsHandsW=@ThreadsHandsW,MonoThreadsFaceNeckW=@MonoThreadsFaceNeckW,AdvanceFillersHandsW=@AdvanceFillersHandsW,AdvanceBotulinumToxinAW=@AdvanceBotulinumToxinAW,LaserCourseESCAD=@LaserCourseESCAD,RegistrationEarlyBird=@RegistrationEarlyBird,RegistrationNormalReg=@RegistrationNormalReg,RegistrationOnSite=@RegistrationOnSite,ModifyBy=@ModifyBy,ModifyDate=@ModifyDate WHERE PaymID='" + EmailUser + "'";

            SqlCommand cmd = new SqlCommand(sql2, conn);

            cmd.Parameters.AddWithValue("@PaymentType", ddlPayMode.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@BankName", txtBankName.Text.Trim());
            cmd.Parameters.AddWithValue("@PaymentDate", txtDate.Text.Trim());
            cmd.Parameters.AddWithValue("@PaymentStatus", "Paid");
            cmd.Parameters.AddWithValue("@PaymentReference", txtPayRef.Text.Trim());
            cmd.Parameters.AddWithValue("@SelfPaid", rdSelfPaid.Checked);
            cmd.Parameters.AddWithValue("@CompanyPaid", rdCompanyPaid.Checked);
            cmd.Parameters.AddWithValue("@PaymentEvidance", pic);
            cmd.Parameters.AddWithValue("@BasicFillersHandsW", chkBasicFil.Checked);
            cmd.Parameters.AddWithValue("@BasicBotulinumToxinAW", chkBasicToxin.Checked);
            cmd.Parameters.AddWithValue("@ThreadsHandsW", chkBasicThreads.Checked);
            cmd.Parameters.AddWithValue("@MonoThreadsFaceNeckW", chkBasicMono.Checked);
            cmd.Parameters.AddWithValue("@AdvanceFillersHandsW", chkAdvFill.Checked);
            cmd.Parameters.AddWithValue("@AdvanceBotulinumToxinAW", chkAdvToxin.Checked);
            cmd.Parameters.AddWithValue("@LaserCourseESCAD", rdLaserYes.Checked);
            cmd.Parameters.AddWithValue("@RegistrationEarlyBird", rdEarly.Checked);
            cmd.Parameters.AddWithValue("@RegistrationNormalReg", rdnormal.Checked);
            cmd.Parameters.AddWithValue("@RegistrationOnSite", rdSite.Checked);
            //cmd.Parameters.AddWithValue("@EmailAddress", Session["User"].ToString());
            cmd.Parameters.AddWithValue("@payment", Payment - Discount);
            cmd.Parameters.AddWithValue("@ModifyBy", EmailUser);
            cmd.Parameters.AddWithValue("ModifyDate", DateTime.Now);
            cmd.ExecuteNonQuery();



            //int res=cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Validate Sucessfully');window.location ='PaymentList.aspx';</script>");



        }

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