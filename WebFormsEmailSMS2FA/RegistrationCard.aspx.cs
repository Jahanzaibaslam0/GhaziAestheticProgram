using QRCoder;
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

namespace WebFormsEmailSMS2FA
{
    public partial class RegistrationCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataReader dReader;
            string ID = Request.QueryString["ID"].ToString();
            lblID.Text = Request.QueryString["ID"].ToString();
            SqlConnection conn = new SqlConnection(databaseString);
            conn.Open();
            SqlCommand getUsercmd = new SqlCommand("SELECT ID,FIRSTNAME,STATUS,CREATEDDATE,IMAGE,VISITORTYPE,RegistrationID FROM UserRegistrationDetail where RegistrationID='" + ID + "'", conn);
            dReader = getUsercmd.ExecuteReader();

            while (dReader.Read())
            {
                DateTime dt = new DateTime();
                dt = Convert.ToDateTime(dReader.GetSqlValue(3).ToString());

                lblID.Text = dReader.GetSqlValue(6).ToString();
                lblName.Text = dReader.GetSqlValue(1).ToString().ToUpper();
                //lblStatus.Text = dReader.GetSqlValue(2).ToString();
                lblDate.Text = dt.Date.ToShortDateString();
                
                lblVisitorType.Text = dReader.GetSqlValue(5).ToString();
                byte[] imageData = (byte[])dReader["IMAGE"];
                string img = Convert.ToBase64String(imageData, 0, imageData.Length);
                Image1.ImageUrl = "data:image/png;base64," + img;


            }
            getUsercmd.Dispose();


            conn.Close();

            string id = lblID.Text.Trim();
            string name = lblName.Text.Trim();
            string type = lblVisitorType.Text.Trim();

            //String txtqrcode = string.Format(" ID = {0} \n Name = {1} \n Type = {2}", id, name, type);
          
            //String txtqrcode = string.Format("https://localhost:44307/OnsiteRegistrationValidation?ID=" + id);
            String txtqrcode = string.Format("http://events.ghazihealthcare.com/OnsiteRegistrationValidation?ID=" + id);
            QRCodeGenerator qrgen = new QRCodeGenerator();
            QRCodeGenerator.QRCode qrcode = qrgen.CreateQrCode(txtqrcode, QRCodeGenerator.ECCLevel.Q);
            System.Web.UI.WebControls.Image imgqr = new System.Web.UI.WebControls.Image();
            imgqr.Height = 95;
            imgqr.Width = 95;

            using (Bitmap bitmap = qrcode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteimg = ms.ToArray();
                    imgqr.ImageUrl = "data:images/png;base64," + Convert.ToBase64String(byteimg);
                }
                Qrcodeph.Controls.Add(imgqr);
            }

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            //string id = lblID.Text.Trim();
            //string name = lblName.Text.Trim();
            //string type = lblVisitorType.Text.Trim();

            //String txtqrcode = string.Format(" ID = {0} \n Name = {1} \n Type = {2}", id, name, type);
            //QRCodeGenerator qrgen = new QRCodeGenerator();
            //QRCodeGenerator.QRCode qrcode = qrgen.CreateQrCode(txtqrcode, QRCodeGenerator.ECCLevel.Q);
            //System.Web.UI.WebControls.Image imgqr = new System.Web.UI.WebControls.Image();
            //imgqr.Height = 150;
            //imgqr.Width = 150;

            //using (Bitmap bitmap = qrcode.GetGraphic(20))
            //{
            //    using (MemoryStream ms = new MemoryStream())
            //    {
            //        bitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
            //        byte[] byteimg = ms.ToArray();
            //        imgqr.ImageUrl = "data:images/png;base64," + Convert.ToBase64String(byteimg);
            //    }
            //    Qrcodeph.Controls.Add(imgqr);
            //}
        }
    }
}