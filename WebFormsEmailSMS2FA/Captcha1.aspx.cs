using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;

namespace WebFormsEmailSMS2FA
{
    public partial class Captcha1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Session["RecaptchaImageValue"] = RandomText();
            RandomImg ci = new RandomImg(this.Session["RecaptchaImageValue"].ToString(), 161, 49);
            this.Response.Clear();
            this.Response.ContentType = "image/png";
            ci.image.Save(this.Response.OutputStream, ImageFormat.Png);
            ci.Dispose();

        }
        private String RandomText()
        {
            Random r = new Random();
            String s = "";
            for (int j = 0; j < 6; j++)
            {
                int i = r.Next(3);
                int ch;
                switch (i)
                {
                    case 1:
                        ch = r.Next(0, 9);
                        s = s + ch.ToString();
                        break;
                    case 2:
                        ch = r.Next(65, 90);
                        s = s + Convert.ToChar(ch).ToString();
                        break;
                    case 3:
                        ch = r.Next(97, 122);
                        s = s + Convert.ToChar(ch).ToString();
                        break;
                    default:
                        ch = r.Next(97, 122);
                        s = s + Convert.ToChar(ch).ToString();
                        break;
                }
                r.NextDouble();
                r.Next(100, 1999);

            }
            return s;
        }
    }
}