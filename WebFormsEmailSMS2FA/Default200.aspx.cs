using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebFormsEmailSMS2FA
{
  public partial class _Default : Page
  {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            MasterPageFile = "~/Site.Master";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            PercentageImg25.Visible = false;
            PercentageImg50.Visible = false;
            PercentageImg75.Visible = false;
            PercentageImg100.Visible = false;

            if (Session["User"] != null)
            {

                string User = Session["User"].ToString();
                string UserEmail = Session["User"].ToString();
                //string Mudassir = "Mudassir.g";
                //string Amir = "Amir.Shah";
                //string Arshad = "Arshad.a";
                //if (User == Mudassir || User == Arshad || User == Amir)
                //{
                //    multiselect2.Visible = false;
                //    multiselect4.Visible = false;
                //}
                //Label1.Text = "Welcome:" + Session["User"].ToString().ToUpper();

                //try
                //{


                string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(conString))
                {
                    string sql = "select ID from UserRegistrationDetail where Email = @Email";// + Session["User"].ToString() + "'";
                    using (SqlCommand cmd = new SqlCommand(sql, conn))
                    {
                        //SqlCommand cmd = new SqlCommand(sql, conn);
                        SqlParameter[] prms = new SqlParameter[1];
                        prms[0] = new SqlParameter("@Email", SqlDbType.NVarChar, 50);
                        prms[0].Value = Context.User.Identity.Name;//Session["User"].ToString();
                        cmd.Parameters.AddRange(prms);
                        //cmd.Parameters.Add("@Email", "UserEmail");
                        conn.Open();
                        object obj = cmd.ExecuteScalar();
                        conn.Close();
                        if (obj != null)
                        {
                            //lblText.Text = "Your Registration Is Already Done Now you Can Validate Registation Form";
                            btnRegister.Visible = false;
                            btnUpdateRegister.Visible = true;
                            submitborder.Attributes["class"] = "borderBox activeColor";
                            submitImage.Attributes["class"] = "img img-responsive relatePic";
                            submitPara.Attributes["class"] = "FormSubmit text-center";
                            PercentageImg25.Visible = true;

                        }
                        else
                        {
                            //lblText.Text = "Please Do PAADS Registration";
                            btnRegister.Visible = true;
                            btnUpdateRegister.Visible = false;
                        }

                    }

                    string sql3 = "select ID from UserRegistrationDetail where status='Paid' and Email = @Email";// + Session["User"].ToString() + "'";
                    using (SqlCommand cmd = new SqlCommand(sql3, conn))
                    {
                        //SqlCommand cmd = new SqlCommand(sql, conn);
                        SqlParameter[] prms = new SqlParameter[1];
                        prms[0] = new SqlParameter("@Email", SqlDbType.NVarChar, 50);
                        prms[0].Value = Context.User.Identity.Name;//Session["User"].ToString();
                        cmd.Parameters.AddRange(prms);
                        //cmd.Parameters.Add("@Email", "UserEmail");
                        conn.Open();
                        object obj = cmd.ExecuteScalar();
                        conn.Close();
                        if (obj != null)
                        {
                            //lblText.Text = "Your Registration Is Already Done Now you Can Validate Registation Form";
                            btnRegister.Visible = false;
                            btnUpdateRegister.Visible = true;
                            submitborder.Attributes["class"] = "borderBox activeColor";
                            submitImage.Attributes["class"] = "img img-responsive relatePic";
                            submitPara.Attributes["class"] = "FormSubmit text-center";
                            formvalidateborder.Attributes["class"] = "borderBox activeColor";
                            formvalidateimage.Attributes["class"] = "img img-responsive relatePic";
                            formvalidatepara.Attributes["class"] = "FormSubmit text-center";
                            PercentageImg25.Visible = true;
                            PercentageImg50.Visible = true;

                        }
                        //else
                        //{
                        //    //lblText.Text = "Please Do PAADS Registration";
                        //    btnRegister.Visible = true;
                        //    btnUpdateRegister.Visible = false;
                        //}

                    }

                    //    string UserEmail = Session["User"].ToString();
                    string sql2 = "select PaymentID from payment where EmailAddress =@Email"; //'" + UserEmail + "'";// + Session["User"].ToString() + "'";
                    using (SqlCommand cmd = new SqlCommand(sql2, conn))
                    {
                        //SqlCommand cmd = new SqlCommand(sql, conn);
                        SqlParameter[] prms = new SqlParameter[1];
                        prms[0] = new SqlParameter("@Email", SqlDbType.NVarChar, 50);
                        prms[0].Value = Context.User.Identity.Name;//Session["User"].ToString();
                        cmd.Parameters.AddRange(prms);
                        //cmd.Parameters.Add("@Email", "UserEmail");
                        conn.Open();
                        object obj = cmd.ExecuteScalar();
                        conn.Close();
                        if (obj != null)
                        {
                            //lblText.Text = "Your Registration Is Already Done Now you Can Validate Registation Form";
                            btnRegister.Visible = false;
                            btnUpdateRegister.Visible = true;
                            submitborder.Attributes["class"] = "borderBox activeColor";
                            submitImage.Attributes["class"] = "img img-responsive relatePic";
                            submitPara.Attributes["class"] = "FormSubmit text-center";
                            formvalidateborder.Attributes["class"] = "borderBox activeColor";
                            formvalidateimage.Attributes["class"] = "img img-responsive relatePic";
                            formvalidatepara.Attributes["class"] = "FormSubmit text-center";
                            paymentborder.Attributes["class"] = "borderBox activeColor";
                            paymentImage.Attributes["class"] = "img img-responsive relatePic";
                            paymentpara.Attributes["class"] = "FormSubmit text-center";
                            PercentageImg25.Visible = true;
                            PercentageImg50.Visible = true;
                            PercentageImg75.Visible = true;

                        }
                        //else
                        //{
                        //    //lblText.Text = "Please Do PAADS Registration";
                        //    btnRegister.Visible = true;
                        //    btnUpdateRegister.Visible = false;
                        //}

                    }

                    string sql4 = "select PaymentID from payment where Paymentstatus='Paid' and EmailAddress =@Email"; //'" + UserEmail + "'";// + Session["User"].ToString() + "'";
                    using (SqlCommand cmd = new SqlCommand(sql4, conn))
                    {
                        //SqlCommand cmd = new SqlCommand(sql, conn);
                        SqlParameter[] prms = new SqlParameter[1];
                        prms[0] = new SqlParameter("@Email", SqlDbType.NVarChar, 50);
                        prms[0].Value = Context.User.Identity.Name;//Session["User"].ToString();
                        cmd.Parameters.AddRange(prms);
                        //cmd.Parameters.Add("@Email", "UserEmail");
                        conn.Open();
                        object obj = cmd.ExecuteScalar();
                        conn.Close();
                        if (obj != null)
                        {
                            //lblText.Text = "Your Registration Is Already Done Now you Can Validate Registation Form";
                            btnRegister.Visible = false;
                            btnUpdateRegister.Visible = true;
                            submitborder.Attributes["class"] = "borderBox activeColor";
                            submitImage.Attributes["class"] = "img img-responsive relatePic";
                            submitPara.Attributes["class"] = "FormSubmit text-center";
                            formvalidateborder.Attributes["class"] = "borderBox activeColor";
                            formvalidateimage.Attributes["class"] = "img img-responsive relatePic";
                            formvalidatepara.Attributes["class"] = "FormSubmit text-center";
                            paymentborder.Attributes["class"] = "borderBox activeColor";
                            paymentImage.Attributes["class"] = "img img-responsive relatePic";
                            paymentpara.Attributes["class"] = "FormSubmit text-center";
                            completeborder.Attributes["class"] = "borderBox activeColor";
                            completeimage.Attributes["class"] = "img img-responsive relatePic";
                            completepara.Attributes["class"] = "FormSubmit text-center";
                            PercentageImg25.Visible = true;
                            PercentageImg50.Visible = true;
                            PercentageImg75.Visible = true;
                            PercentageImg100.Visible = true;

                        }
                        //else
                        //{
                        //    //lblText.Text = "Please Do PAADS Registration";
                        //    btnRegister.Visible = true;
                        //    btnUpdateRegister.Visible = false;
                        //}

                    }

                }
            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");

            }


        }


            //}
            //catch
            //{
            //    Response.Write("<script>alert('Please Do Registration Login First ');window.location ='Login.aspx';</script>");
            //}
        }
    }
