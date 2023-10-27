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

namespace WebFormsEmailSMS2FA
{
    public partial class Payment : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string sConnectionString = @"Data Source=GB-ERP-JAHANZAI;Initial Catalog=WorkshopRegistration;Integrated Security=True";
            if (!IsPostBack)
            {
                if (Session["User"].ToString().ToUpper() == "ADMIN")
                {
                    string ID = Request.QueryString["ID"].ToString();
                    calPaymentDate.Visible = false;
                    using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                    {
                        string query = @"select distinct ID,FirstName from UserRegistrationDetail where ID='" + ID + "'";

                        SqlCommand cmd = new SqlCommand(query, sqlConn);
                        sqlConn.Open();
                        DropDownUser.DataSource = cmd.ExecuteReader();
                        DropDownUser.DataTextField = "FirstName";
                        DropDownUser.DataValueField = "ID";
                        DropDownUser.DataBind();
                        sqlConn.Close();
                    }



                    using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                    {
                        string query2 = @"select distinct WorkShopID,WorkShopName from WorkShop";

                        SqlCommand cmd2 = new SqlCommand(query2, sqlConn);
                        sqlConn.Open();
                        DropDownWorkShop.DataSource = cmd2.ExecuteReader();
                        DropDownWorkShop.DataTextField = "WorkShopName";
                        DropDownWorkShop.DataValueField = "WorkShopID";
                        DropDownWorkShop.DataBind();
                        sqlConn.Close();
                    }


                    SqlDataReader dReader;
                    //string ID = Request.QueryString["ID"].ToString();
                    
                    using (SqlConnection conn = new SqlConnection(sConnectionString))
                    {
                        conn.Open();
                        SqlCommand getUsercmd = new SqlCommand("SELECT RegistrationFees FROM UserRegistrationDetail where ID='" + ID + "'", conn);
                        dReader = getUsercmd.ExecuteReader();

                        while (dReader.Read())
                        {

                            txtBilling.Text = dReader.GetSqlValue(0).ToString().ToUpper();
                            //txtGuardian.Text = dReader.GetSqlValue(1).ToString();
                        }
                        getUsercmd.Dispose();


                        conn.Close();
                    }

                }
                else
                {
                    string EmailUser = Session["User"].ToString();
                    calPaymentDate.Visible = false;
                    using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                    {
                        string query = @"select distinct ID,FirstName from UserRegistrationDetail where Email='" + EmailUser + "'";

                        SqlCommand cmd = new SqlCommand(query, sqlConn);
                        sqlConn.Open();
                        DropDownUser.DataSource = cmd.ExecuteReader();
                        DropDownUser.DataTextField = "FirstName";
                        DropDownUser.DataValueField = "ID";
                        DropDownUser.DataBind();
                        sqlConn.Close();
                    }



                    using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                    {
                        string query2 = @"select distinct WorkShopID,WorkShopName from WorkShop";

                        SqlCommand cmd2 = new SqlCommand(query2, sqlConn);
                        sqlConn.Open();
                        DropDownWorkShop.DataSource = cmd2.ExecuteReader();
                        DropDownWorkShop.DataTextField = "WorkShopName";
                        DropDownWorkShop.DataValueField = "WorkShopID";
                        DropDownWorkShop.DataBind();
                        sqlConn.Close();
                    }


                    SqlDataReader dReader;
                    
                    using (SqlConnection conn = new SqlConnection(sConnectionString))
                    {
                        conn.Open();
                        SqlCommand getUsercmd = new SqlCommand("SELECT RegistrationFees FROM UserRegistrationDetail where Email='" + EmailUser + "'", conn);
                        dReader = getUsercmd.ExecuteReader();

                        while (dReader.Read())
                        {

                            txtBilling.Text = dReader.GetSqlValue(0).ToString().ToUpper();
                            //txtGuardian.Text = dReader.GetSqlValue(1).ToString();
                        }
                        getUsercmd.Dispose();


                        conn.Close();
                    }
                }
            }
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


                string sConnectionString = @"Data Source=GB-ERP-JAHANZAI;Initial Catalog=WorkshopRegistration;Integrated Security=True";

                string sQuery = string.Format("INSERT INTO Payment (PaymentType,UserID,WorkShopID,PaymentReference,BankName,PaymentDate,PaymentStatus,SelfPaid,CompanyPaid,PaymentEvidance) Values (@PaymentType,@UserID,@WorkShopID,@PaymentReference,@BankName,@PaymentDate,@PaymentStatus,@SelfPaid,@CompanyPaid,@PaymentEvidance)");

                SqlConnection con = new SqlConnection(sConnectionString);

                con.Open();
                SqlCommand cmd = new SqlCommand(sQuery, con);
                ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
                cmd.Parameters.AddWithValue("@PaymentType", DropDownPayment.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@UserID", DropDownUser.SelectedItem.Value);
                //cmd.Parameters["@CustID"].Value = DropDownList1.SelectedItem.Value;
                cmd.Parameters.AddWithValue("@WorkShopID", DropDownWorkShop.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PaymentReference", txtPaymentReference.Text.Trim());
                //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
                cmd.Parameters.AddWithValue("@BankName", txtBankName.Text.Trim());
                cmd.Parameters.AddWithValue("@PaymentDate", calPaymentDate.SelectedDate);
                cmd.Parameters.AddWithValue("@PaymentStatus", "Paid");
                cmd.Parameters.AddWithValue("@SelfPaid", RbtnSelfPaid.Checked);
                cmd.Parameters.AddWithValue("@CompanyPaid", RbtnCompanyPaid.Checked);
                cmd.Parameters.AddWithValue("@PaymentEvidance", pic);

                cmd.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
                con.Close();
                
            }
        }

        public void Email(string To_Email, string subject, string _Body)
        {

            var message = new MimeMessage();
            message.From.Add(new MailboxAddress("Jahanzaib", "Jahanzaib.aslam@ghazibrothers.com.pk"));
            //message.To.Add(new MailboxAddress("Naveed", "Muhammad.naveed@ghazibrothers.com.pk"));
            message.To.Add(new MailboxAddress("Admin", To_Email));
            message.Cc.Add(new MailboxAddress("Jahanzaib Aslam", "Jahanzaib.aslam@ghazibrothers.com.pk"));

            // message.Subject = "PAADS Payment Details";
            message.Subject = subject;
            message.Body = new TextPart("plain")
            {
                Text = _Body
            };
            //message.Body = new TextPart("plain")
            //{
            //    Text = @"Miss Nosheen,

            //User " + DropDownUser.SelectedItem.Text + "  having registration ID " + Request.QueryString["ID"].ToString() +  " payment agianst workshop " + DropDownWorkShop.SelectedItem.Text + " submitted with evidance for 2nd PAADs 2019. Please validate payment received and update Payment Status."


            //};

            using (var client = new SmtpClient())
            {
                client.Connect("192.168.2.2", 587, false);

                // Note: since we don't have an OAuth2 token, disable
                // the XOAUTH2 authentication mechanism.
                client.AuthenticationMechanisms.Remove("XOAUTH2");

                // Note: only needed if the SMTP server requires authentication
                client.Authenticate("Jahanzaib.aslam@ghazibrothers.com.pk", "Ghazi@321");

                client.Send(message);
                client.Disconnect(true);
            }


        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            calPaymentDate.Visible = true;
        }

        protected void calPaymentDate_SelectionChanged(object sender, EventArgs e)
        {
            txtPaymentDate.Text = calPaymentDate.SelectedDate.ToShortDateString().ToString();
            calPaymentDate.Visible = false;
        }

        protected void calPaymentDate_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.DarkCyan;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.InsertDataInDB();
            Page.Validate();
        }

        protected void RbtnSelfPaid_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RbtnCompanyPaid_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}