using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using IronPdf;
using System.Globalization;

namespace WebFormsEmailSMS2FA
{
    public partial class GAPWelcomeLetter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["ID"].ToString();
            TextInfo textInfo = new CultureInfo("en-US", false).TextInfo;

            lblEmail.Text = ID;

            string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataReader dReader;
            //string ID = Request.QueryString["ID"].ToString();
            //string EmailUser = Session["User"].ToString();
            SqlConnection conn = new SqlConnection(databaseString);
            conn.Open();
            SqlCommand getUsercmd = new SqlCommand("select USERID, FirstName, LastName, U.SecurityStamp as PMDC, A.Email as Email, Password, A.PhoneNumber as PhoneNumber, City, Country, Speciality from Users U inner join AspNetUsers A on U.Email = A.Email and A.Email='" + ID + "'", conn);
            dReader = getUsercmd.ExecuteReader();

            while (dReader.Read())
            {

                lblDrName.Text = textInfo.ToTitleCase(dReader.GetSqlValue(1).ToString().ToLower());
                lblName.Text = textInfo.ToTitleCase(dReader.GetSqlValue(1).ToString().ToLower());
                lblPassword.Text = dReader.GetSqlValue(5).ToString();

                // dt.Date.ToShortDateString();




            }
            getUsercmd.Dispose();
     

            conn.Close();
            IronPdf.PdfPrintOptions PrintOptions = new IronPdf.PdfPrintOptions { DPI = 300, MarginTop = 5, MarginRight = 5, MarginLeft = 10, MarginBottom = 10, PaperSize = IronPdf.PdfPrintOptions.PdfPaperSize.A4 };
            IronPdf.AspxToPdf.RenderThisPageAsPdf(AspxToPdf.FileBehavior.Attachment, ID + "-GAPWELCOMELETTER.pdf", PrintOptions);
        }
    }
}