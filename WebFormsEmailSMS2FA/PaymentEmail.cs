using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MailKit.Net.Smtp;
using MailKit;
using MimeKit;

namespace WebFormsEmailSMS2FA
{
    public class PaymentEmail
    {
        public void Email1(string To_Email, string subject, string FName, string LName)
        {

            var message = new MimeMessage();
            message.From.Add(new MailboxAddress("PAADS2019", "events@ghazihealthcare.com"));
            //message.To.Add(new MailboxAddress("Naveed", "Muhammad.naveed@ghazibrothers.com.pk"));
            message.To.Add(new MailboxAddress(To_Email, To_Email));
            message.Cc.Add(new MailboxAddress("PAADS2019", "Paads2019@gmail.com"));

            // message.Subject = "PAADS Payment Details";
            message.Subject = subject;
            message.Body = new TextPart("HTML")
            {
                Text = @"<html> <body style='background-color: gainsboro;'>
                <div style='background: #e3e9ee;width: 80%;margin: auto;border: 1px solid grey;'>    <br>
    <img src='http://events.ghazihealthcare.com/Images/2nd%20PAADS%20.png' style='width: 80%;margin-left: 10%;border: 2px solid #4fa2ea'  alt=''>
<br><br>
    <strong style='margin-left: 10%;width: 80%;font-family: sans-serif;font-size: 15px;'>Dear:Dr. " + LName + @"</strong>
    
    
  
    <p style='margin-left: 10%;width: 80%;font-family: sans-serif;font-size: 15px;'>We Thank You For Your Submission of Registration For The Following:
<br>
<br><span style='font-weight: bold;'>2nd  PAADS (Pakistan Academy of Aesthetic Dermatologists and Surgeons) Aesthetic Conference </span> 
<br>
<br> Date: 12th to 14th July 2019
<br> Venue: Movenpick Hotel, Karachi, Pakistan 
<br> Supported by: <span style='font-weight: bold;'>Ghazi HealthCare</span> 
<br>
<br>

Please note that your payment is under the process of confirmation. On the receipt of payment your registration application shall be successfully completed.
<br>
<br>
In case of any queries please email us on: <a href='#'>paads2019@gmail.com</a> or <a href='#'>registration.paads2019@yahoo.com</a> 
<br>
<br>
Looking forward to welcoming you in Karachi
</p>

<p style='margin-left: 10%;width: 80%;font-family: sans-serif;font-size: 15px;font-weight: bold;'>
    Kind Regards, <br>
    Organisation Team
</p>



</div>

    
</body>
</html>


                     "
            };

            //message.Body = new TextPart("plain")
            //{
            //    Text = @"Miss Nosheen,

            //User " + DropDownUser.SelectedItem.Text + "  having registration ID " + Request.QueryString["ID"].ToString() +  " payment agianst workshop " + DropDownWorkShop.SelectedItem.Text + " submitted with evidance for 2nd PAADs 2019. Please validate payment received and update Payment Status."


            //};

            using (var client = new SmtpClient())
            {
                //client.Connect("192.168.2.2", 587, false);
                client.Connect("mailen1.cloudsector.net", 587, false);
                //client.Connect("192.96.210.10", 587, false);
                // Note: since we don't have an OAuth2 token, disable
                // the XOAUTH2 authentication mechanism.
                client.AuthenticationMechanisms.Remove("XOAUTH2");

                // Note: only needed if the SMTP server requires authentication
                //client.Authenticate("Jahanzaib.aslam@ghazibrothers.com.pk", "Ghazi@321");
                client.Authenticate("events@ghazihealthcare.com", "Gb+80+$vr");
                client.Send(message);
                client.Disconnect(true);
            }


        }
    }
}