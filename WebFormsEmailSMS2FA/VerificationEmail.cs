using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MailKit.Net.Smtp;
using MailKit;
using MimeKit;

namespace WebFormsEmailSMS2FA
{
    public class VerificationEmail
    {
        public void Email1(string To_Email, string subject, string FName )
        {

            var message = new MimeMessage();
            message.From.Add(new MailboxAddress("GAP", "gap@ghazihealthcare.com"));
            //message.From.Add(new MailboxAddress("PAADS2019", "events@ghazihealthcare.com"));
            //message.To.Add(new MailboxAddress("Naveed", "Muhammad.naveed@ghazibrothers.com.pk"));
            message.To.Add(new MailboxAddress(To_Email, To_Email));
            message.Bcc.Add(new MailboxAddress("GAP", "Paads2019@gmail.com"));
            //message.Cc.Add(new MailboxAddress("GAP", "Paads2019@gmail.com"));

            // message.Subject = "PAADS Payment Details";
            message.Subject = subject;
            message.Body = new TextPart("HTML")
            {
                Text = @"<html> 
                <body style='background-color: gainsboro;'>

    <div style='background: #e3e9ee;width: 80%;margin: auto;border: 1px solid grey;'>
        <br>
        <img src='http://gap.ghazihealthcare.com/GapImage/01_GAP.png' style='width: 80%;margin-left: 10%;border: 2px solid #4fa2ea'  alt=''>
    <br><br>
        <p style='margin-left: 10%;width: 80%;font-family: sans-serif;font-size: 15px;'>Thanks For Signing Up Your Account! Please Verify Your Email Using The Link Below.
        </p>

    <div style='text-align: center;'>
        <a href='" + FName +"\' >click here</a> </div> </div></body></html>"};

           

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
                //client.Authenticate("no-reply@ghazihealthcare.com", "Ghazi@321");
                client.Authenticate("gap@ghazihealthcare.com", "Win-2016");
                                    
                client.Send(message);
                client.Disconnect(true);
            }


        }
    }
}