using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MailKit.Net.Smtp;
using MailKit;
using MimeKit;

namespace WebFormsEmailSMS2FA
{
    public class Email
    {
        public void Email1(string To_Email, string subject, string _Body)
        {

            var message = new MimeMessage();
            message.From.Add(new MailboxAddress("PAADS2019", "events@ghazihealthcare.com"));
            //message.To.Add(new MailboxAddress("Naveed", "Muhammad.naveed@ghazibrothers.com.pk"));
            message.To.Add(new MailboxAddress("Admin", To_Email));
            message.Cc.Add(new MailboxAddress("Jahanzaib Aslam", "Jahanzaib.aslam@ghazibrothers.com.pk"));

            // message.Subject = "PAADS Payment Details";
            message.Subject = subject;
            message.Body = new TextPart("HTML")
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