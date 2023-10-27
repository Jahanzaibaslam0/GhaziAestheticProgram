using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Optimization;

namespace WebFormsEmailSMS2FA
{
    public partial class PaymentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader dReader;
            //string user12 = Session["User12"].ToString();
            if (Session["user"].ToString().ToUpper() == "NOSHINARSHAD@GMAIL.COM")
            {
                SqlCommand getUsercmd = new SqlCommand("select * from Payment inner join UserRegistrationDetail on Payment.UserID = UserRegistrationDetail.ID and Payment.EmailAddress = UserRegistrationDetail.Email and PaymentID != ''");
            //}
            //else
            //{
            // SqlCommand getUsercmd = new SqlCommand("SELECT * FROM UserRegistrationDetail where Email='" + "Jahanzaib@gmail.com" + "'");


            DataTable dt = new DataTable();
            dt.Columns.Add("PaymentID");
            dt.Columns.Add("FirstName");
            dt.Columns.Add("LastName");
            dt.Columns.Add("PaymentMode");
            dt.Columns.Add("PaymentType");
            dt.Columns.Add("PaymentReference");
            dt.Columns.Add("PaymentDate");
            dt.Columns.Add("BankName");
            dt.Columns.Add("PaymentFees");
            dt.Columns.Add("EmailAddress");
            dt.Columns.Add("CreatedDate");
            dt.Columns.Add("PaymID");
            dt.Columns.Add("PaymentStatus");


                db getUserlist = new db();
            dReader = getUserlist.returnDataReader(getUsercmd);


            while (dReader.Read())
            {
                var dr = dt.NewRow();
                dr["PaymentID"] = HttpUtility.HtmlDecode(GetUrl(dReader["PaymentID"].ToString(), dReader["PaymID"].ToString()));
                dr["FirstName"] = dReader["FirstName"].ToString();
                dr["LastName"] = dReader["LastName"].ToString();
                dr["PaymentMode"] = dReader["PaymentMode"].ToString();
                dr["PaymentType"] = dReader["PaymentType"].ToString();
                dr["PaymentReference"] = dReader["PaymentReference"].ToString();
                dr["PaymentDate"] = dReader["PaymentDate"].ToString();
                dr["BankName"] = dReader["BankName"].ToString();
                dr["PaymentFees"] = dReader["PaymentFees"].ToString();
                dr["EmailAddress"] = HttpUtility.HtmlDecode(GetPayment(dReader["PaymID"].ToString(), dReader["PaymID"].ToString()));
                dr["PaymentStatus"] = HttpUtility.HtmlDecode(GetPaymentStatus(dReader["PaymentStatus"].ToString(), dReader["PaymID"].ToString()));
                dr["CreatedDate"] = dReader["CreatedDate"].ToString();
                dr["PaymID"] = dReader["PaymID"].ToString();
                //dr["Status"] = HttpUtility.HtmlDecode(GetPayment(dReader["Status"].ToString(), dReader["ID"].ToString()));
                //dr["Image"] = dReader["Image"].ToString();


                dt.Rows.Add(dr);
            }

            SqlCommand rdsfeedback = new SqlCommand("select * from Payment inner join UserRegistrationDetail on Payment.UserID = UserRegistrationDetail.ID and Payment.EmailAddress = UserRegistrationDetail.Email and PaymentID != ''");



            User1.DataSource = dt;
            User1.DataBind();


            }
            else
            {
                string EmailUser = Session["user"].ToString();
                SqlCommand getUsercmd = new SqlCommand("select * from Payment inner join UserRegistrationDetail on Payment.UserID = UserRegistrationDetail.ID and Payment.EmailAddress = UserRegistrationDetail.Email and  Payment.ModifyBy= '" + EmailUser + "'");


                DataTable dt = new DataTable();
                dt.Columns.Add("PaymentID");
                dt.Columns.Add("FirstName");
                dt.Columns.Add("LastName");
                dt.Columns.Add("PaymentMode");
                dt.Columns.Add("PaymentType");
                dt.Columns.Add("PaymentReference");
                dt.Columns.Add("PaymentDate");
                dt.Columns.Add("BankName");
                dt.Columns.Add("PaymentFees");
                dt.Columns.Add("EmailAddress");
                dt.Columns.Add("CreatedDate");
                dt.Columns.Add("PaymID");
                dt.Columns.Add("PaymentStatus");



                db getUserlist = new db();
                dReader = getUserlist.returnDataReader(getUsercmd);


                while (dReader.Read())
                {
                    var dr = dt.NewRow();
                    dr["PaymentID"] = HttpUtility.HtmlDecode(GetUrl(dReader["PaymentID"].ToString(), dReader["PaymID"].ToString()));
                    dr["FirstName"] = dReader["FirstName"].ToString();
                    dr["LastName"] = dReader["LastName"].ToString();
                    dr["PaymentStatus"] = HttpUtility.HtmlDecode(GetPaymentStatus(dReader["PaymentStatus"].ToString(), dReader["PaymID"].ToString()));
                    dr["PaymentMode"] = dReader["PaymentMode"].ToString();
                    dr["PaymentType"] = dReader["PaymentType"].ToString();
                    dr["PaymentReference"] = dReader["PaymentReference"].ToString();
                    dr["PaymentDate"] = dReader["PaymentDate"].ToString();
                    dr["BankName"] = dReader["BankName"].ToString();
                    dr["PaymentFees"] = dReader["PaymentFees"].ToString();
                    dr["EmailAddress"] = HttpUtility.HtmlDecode(GetPayment(dReader["PaymID"].ToString(), dReader["PaymID"].ToString()));

                    dr["CreatedDate"] = dReader["CreatedDate"].ToString();
                    dr["PaymID"] = dReader["PaymID"].ToString();
                    //dr["Status"] = HttpUtility.HtmlDecode(GetPayment(dReader["Status"].ToString(), dReader["ID"].ToString()));
                    //dr["Image"] = dReader["Image"].ToString();


                    dt.Rows.Add(dr);
                }

                SqlCommand rdsfeedback = new SqlCommand("select * from Payment inner join UserRegistrationDetail on Payment.UserID = UserRegistrationDetail.ID and Payment.EmailAddress = UserRegistrationDetail.Email and PaymentID != ''");



                User1.DataSource = dt;
                User1.DataBind();
            }
        }

        private string GetUrl(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"WorkshopandCourses.aspx" + "?PaymID=" + p2 + "\">" + p1 + "</a>";
        }

        private string GetPaymentStatus(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"ReceiptPayment.aspx" + "?PaymID=" + p2 + "\">" + p1 + "</a>";
        }

        private string GetPayment(string p1, string p2)
        {
            //return "<a href=\"" + p2+"?id="+p1 + "\">" + p1 + "</a>";
            return "<a href=\"WorkshopandCourses.aspx" + "?PaymID=" + p2 + "\">" + p1 + "</a>";
        }
    }
}