
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
using IDAutomation.NetAssembly;
using System.CodeDom.Compiler;

namespace WebFormsEmailSMS2FA
{
    public partial class Badges : System.Web.UI.Page
    {
        FontEncoder Encode = new FontEncoder();
        protected void Page_Load(object sender, EventArgs e)
        {
            string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlDataReader dReader;
            string ID = Request.QueryString["ID"].ToString();
            //lblID.Text = Request.QueryString["ID"].ToString();
            SqlConnection conn = new SqlConnection(databaseString);
            conn.Open();
            SqlCommand getUsercmd = new SqlCommand("SELECT ID,FIRSTNAME,LASTNAME,STATUS,CITY,CREATEDDATE,IMAGE,VISITORTYPE,RegistrationID FROM UserRegistrationDetail where RegistrationID='" + ID + "'", conn);
            dReader = getUsercmd.ExecuteReader();

            while (dReader.Read())
            {
               // DateTime dt = new DateTime();
               // dt = Convert.ToDateTime(dReader.GetSqlValue(3).ToString());

                lblCompany.Text = dReader.GetSqlValue(8).ToString();
                lblFName.Text = dReader.GetSqlValue(1).ToString().ToUpper();
                
                lblLName.Text = dReader.GetSqlValue(2).ToString();
                lblCity.Text= dReader.GetSqlValue(4).ToString();
                //lblDate.Text = dt.Date.ToShortDateString();

                //lblVisitorType.Text = dReader.GetSqlValue(5).ToString();
                byte[] imageData = (byte[])dReader["IMAGE"];
                string img = Convert.ToBase64String(imageData, 0, imageData.Length);
                Image2.ImageUrl = "data:image/png;base64," + img;


            //}

            //while (dReader.Read())
            //{
                //String barCode = string.Format("http://events.ghazihealthcare.com/OnsiteRegistrationValidation?ID=" + ID);
                string barCode = dReader.GetSqlValue(7).ToString().ToUpper();
                System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
                using (Bitmap bitMap = new Bitmap(barCode.Length * 40, 80))
                {
                    using (Graphics graphics = Graphics.FromImage(bitMap))
                    {
                        //var myFonts = new System.Drawing.Text.PrivateFontCollection();
                        //myFonts.AddFontFile("@C:/Users/jahanzaib/Desktop/new/298.Generate Bar Code/Generate Bar Code/IDAutomationHC39M.TTF");
                        IDAutomation.NetAssembly.UniversalFontEncoder UniversalFontEncoder = new
                        IDAutomation.NetAssembly.UniversalFontEncoder();
                        //TextBox1.Text = UniversalFontEncoder.IDAutomation_Uni_C128(barCode, true);
                        //Font oFont = new Font("IDAutomationGS1 50", 12, FontStyle.Regular);
                        //var oFont = new System.Drawing.Font(myFonts.Families[0], 20);
                        //TextBox1.Text = Encode.Code128(barCode, 0, false);
                        //TextBox textbox1 = new TextBox();
                        //textbox1.Font.Bold = true;
                        //textbox1.Font.Size = 24;
                        //textbox1.Font.Name = "IDAutomationSC128L";
                        //TextBox1.Text = Encode.Code128(barCode, 0, false);
                        Font oFont2 = new Font(UniversalFontEncoder.IDAutomation_Uni_C39(barCode,2,true), 18, FontStyle.Regular);
                        //MyPanel.Controls.Add(Text);
                        //Font ofont1 = 
                        //Font oFont1 = new Font("IDAutomationHC39M", 16, FontStyle.Regular);
                        //webcontrol.TextBox1.Font = oFont1;//new Font("IDAutomationSC128L", 18, FontStyle.Regular);
                        //new System.Drawing.Font("IDAutomationHC39M", 20);
                        //FontFamily fam = new FontFamily("~\fonts\\IDAutomationHC39M.TTF");
                        //Font oFont = new Font(FontFamily.GenericSansSerif, 16);
                        //Font oFont = new Font("IDAutomationHC39M", 16);
                        PointF point = new PointF(2f, 2f);
                        SolidBrush blackBrush = new SolidBrush(Color.Black);
                        SolidBrush whiteBrush = new SolidBrush(Color.White);
                        graphics.FillRectangle(whiteBrush, 0, 0, bitMap.Width, bitMap.Height);
                        
                        graphics.DrawString("*" + barCode + "*",oFont2, blackBrush, point);
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

                String txtqrcode = string.Format("http://events.ghazihealthcare.com/OnsiteRegistrationValidation?ID=" + ID);
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
                    PlaceHolder2.Controls.Add(imgqr);
                }
            }
            getUsercmd.Dispose();


            conn.Close();

            //string id = lblID.Text.Trim();
            //string name = lblName.Text.Trim();
            //string type = lblVisitorType.Text.Trim();

            //String txtqrcode = string.Format(" ID = {0} \n Name = {1} \n Type = {2}", id, name, type);

            //String txtqrcode = string.Format("https://localhost:44307/OnsiteRegistrationValidation?ID=" + id);
            

        }
    }
}