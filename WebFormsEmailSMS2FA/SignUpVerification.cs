using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MailKit.Net.Smtp;
using MailKit;

using MimeKit;

namespace WebFormsEmailSMS2FA
{
    public class SignUpVerificationEmail
    {
        public void Email1(string To_Email, string subject, string FName)
        {
            //CultureInfo cultureInfo = Thread.CurrentThread.CurrentCulture;
            //TextInfo textInfo = cultureInfo.TextInfo;

            //string FirstName = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(FName);

            var message = new MimeMessage();
            message.From.Add(new MailboxAddress("GAP", "jahanzaib.aslam@ghazibrothers.com.pk"));
            //message.From.Add(new MailboxAddress("PAADS2019", "events@ghazihealthcare.com"));
            //message.To.Add(new MailboxAddress("Naveed", "Muhammad.naveed@ghazibrothers.com.pk"));
            message.To.Add(new MailboxAddress(To_Email, To_Email));
           // message.Cc.Add(new MailboxAddress("Sarim", "sarim.ahmed@ghazihealthcare.com"));
           // message.Cc.Add(new MailboxAddress("Noshin", "noshin.shahzad@ghazihealthcare.com"));
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
        <strong style='margin-left: 10%;width: 80%;font-family: sans-serif;font-size: 15px;'>Dear:Dr. " + FName + @"</strong>
        <p style='margin-left: 10%;width: 80%;font-family: sans-serif;font-size: 15px;'>Thank you for sharing your interest and signing up to Ghazi Aesthetics Program (G.A.P) your gateway to a comprehensive training program that is geared to advancing aesthetics skills.
    <br><br>        
        Your request is been processed by our team and you shall be notified shortly on successful enrolment.
        <br><br>
        Looking forward to having you as part of the most current medical aesthetics program.
        <br><br>
        Regards,
        <br><br>
        Team Ghazi Aesthetics Program (G.A.P)
        <br>
        Ghazi HealthCare
        </p>

    "
            };



            using (var client = new SmtpClient())
            {
                client.Connect("192.168.2.2", 587, false);
               // client.Connect("mailen1.cloudsector.net", 587, false);
                //client.Connect("192.96.210.10", 587, false);
                // Note: since we don't have an OAuth2 token, disable
                // the XOAUTH2 authentication mechanism.
                client.AuthenticationMechanisms.Remove("XOAUTH2");

                // Note: only needed if the SMTP server requires authentication
                //client.Authenticate("Jahanzaib.aslam@ghazibrothers.com.pk", "Ghazi@321");
                //client.Authenticate("no-reply@ghazihealthcare.com", "Ghazi@321");
                client.Authenticate("jahanzaib.aslam@ghazibrothers.com.pk", "Gh@z!@5441");

                client.Send(message);
                client.Disconnect(true);
            }


        }
    }
}