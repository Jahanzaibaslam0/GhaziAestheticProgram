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
    
    public partial class WebForm5 : System.Web.UI.Page
    {
        int Payment = 0;
        string PaymentMode = "";
        int Discount = 0;
        string sConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            MasterPageFile = "~/Site.Master";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDOB1.Visible = false;
            if (Session["User"] != null)
            {
                //string User = Context.User.Identity.Name;//Session["User"].ToString();
                //string UserEmail = Session["User"].ToString();

            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");

            }
            if (!IsPostBack)
            {


                string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlDataReader dReader;
                //string ID = Request.QueryString["ID"].ToString();
                string EmailUser = Session["User"].ToString();
                //try
                //{

                    using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                    {
                        string query = @"select count(*) from Profile where Email='" + EmailUser + "'";
                        // SqlCommand cmd = new SqlCommand("insert into lo")
                        sqlConn.Open();
                        SqlCommand cmda = new SqlCommand(query, sqlConn);
                        int count = (int)cmda.ExecuteScalar();
                        if (count > 0)
                        {
                        txtDob.Visible = false;
                        txtDOB1.Visible = true;
                            //using (SqlConnection sqlConn1 = new SqlConnection(sConnectionString))
                            //{
                            //    string query1 = @"select distinct Spectiality from Profile where Email='" + EmailUser + "'";

                            //    SqlCommand cmd1 = new SqlCommand(query1, sqlConn1);
                            //    sqlConn1.Open();
                            //    DropDownSpeciality.DataSource = cmd1.ExecuteReader();
                            //    DropDownSpeciality.DataTextField = "Spectiality";

                            //    DropDownSpeciality.DataBind();
                            //    sqlConn1.Close();
                            //}

                            SqlDataReader dReader1;
                            using (SqlConnection conn1 = new SqlConnection(sConnectionString))
                            {
                                conn1.Open();
                                SqlCommand getUsercmd1 = new SqlCommand("SELECT FNAME,LNAME,DOB,Speciality,CompanyName,Address,City,Country,ZipCode,MobileNo,Email,Remarks,Picture,CoverPicture,Gender FROM Profile where Email='" + EmailUser + "'", conn1);
                                dReader1 = getUsercmd1.ExecuteReader();

                                while (dReader1.Read())
                                {

                                    txtFName.Text = dReader1.GetSqlValue(0).ToString().ToUpper();
                                    txtLname.Text = dReader1.GetSqlValue(1).ToString();
                                    txtDOB1.Text = Convert.ToDateTime(dReader1.GetSqlValue(2).ToString()).ToShortDateString();
                                   // DropDownSpeciality.Items.FindByValue(dReader1.GetSqlValue(3).ToString()).Selected = true;
                                    DropDownSpeciality.Items.FindByText(dReader1["Speciality"].ToString()).Selected = true;

                                    txtCompanyName.Text = dReader1.GetSqlValue(4).ToString();
                                    txtAddress.Text = dReader1.GetSqlValue(5).ToString();
                                    txtCity.Text = dReader1.GetSqlValue(6).ToString();

                                    txtCountry.Text = dReader1.GetSqlValue(7).ToString();
                                    txtZipCode.Text = dReader1.GetSqlValue(8).ToString();
                                    txtMobileNo.Text = dReader1.GetSqlValue(9).ToString();
                                    txtEmail.Text = dReader1.GetSqlValue(10).ToString();
                                    if(dReader1["Gender"].ToString() == "Male")
                                    {  rdMale.Checked = true; }
                                    else if (dReader1["Gender"].ToString() == "Female")
                                    { rdFemale.Checked = true; }

                                //txtGuardian.Text = dReader.GetSqlValue(1).ToString();
                                byte[] imageData = (byte[])dReader1["Picture"];
                                string img = Convert.ToBase64String(imageData, 0, imageData.Length);
                                Image1.ImageUrl = "data:image/png;base64," + img;

                            }
                                getUsercmd1.Dispose();


                                conn1.Close();

                            }
                        }

                        else
                        {
                            SqlConnection conn = new SqlConnection(databaseString);
                            conn.Open();
                            SqlCommand getUsercmd = new SqlCommand("SELECT FIRSTNAME,LASTNAME,PracticeLocation,City,Mobile,Email,ZipCode,PrivateClinic FROM UserRegistrationDetail where Email='" + EmailUser + "'", conn);
                            dReader = getUsercmd.ExecuteReader();

                            while (dReader.Read())
                            {

                                txtFName.Text = dReader["FIRSTNAME"].ToString();
                                txtLname.Text = dReader["LASTNAME"].ToString();
                                //DropDownSpeciality.Items.FindByValue(dReader["Speciality"].ToString()).Selected = true;
                                DropDownSpeciality.Items.FindByText(dReader["Speciality"].ToString()).Selected = true;
                                txtAddress.Text = dReader["PracticeLocation"].ToString();

                                txtCity.Text = dReader["City"].ToString();

                                txtMobileNo.Text = dReader["Mobile"].ToString();


                                txtEmail.Text = dReader["Email"].ToString();
                                txtZipCode.Text = dReader["ZipCode"].ToString();

                                txtCompanyName.Text = dReader["PrivateClinic"].ToString();




                            byte[] imageData = (byte[])dReader["Picture"];
                            string img = Convert.ToBase64String(imageData, 0, imageData.Length);
                            Image1.ImageUrl = "data:image/png;base64," + img;


                        }
                            getUsercmd.Dispose();


                            conn.Close();

                        }

                    }

                //}
                //catch
                //{
                //    using (SqlConnection sqlConn1 = new SqlConnection(sConnectionString))
                //    {
                //        string query1 = @"select distinct Speciality from UserRegistrationDetail where Email='" + EmailUser + "'";

                //        SqlCommand cmd = new SqlCommand(query1, sqlConn1);
                //        sqlConn1.Open();
                //        DropDownSpeciality.DataSource = cmd.ExecuteReader();
                //        DropDownSpeciality.DataTextField = "Speciality";

                //        DropDownSpeciality.DataBind();
                //        sqlConn1.Close();
                //    }

                //}
            }
        }

        public string ConvertNumbertoWords(long number)
        {
            if (number == 0) return "ZERO";
            if (number < 0) return "minus " + ConvertNumbertoWords(Math.Abs(number));
            string words = "";
            if ((number / 1000000) > 0)
            {
                words += ConvertNumbertoWords(number / 100000) + " LAKES ";
                number %= 1000000;
            }
            if ((number / 1000) > 0)
            {
                words += ConvertNumbertoWords(number / 1000) + " THOUSAND ";
                number %= 1000;
            }
            if ((number / 100) > 0)
            {
                words += ConvertNumbertoWords(number / 100) + " HUNDRED ";
                number %= 100;
            }
            //if ((number / 10) > 0)  
            //{  
            // words += ConvertNumbertoWords(number / 10) + " RUPEES ";  
            // number %= 10;  
            //}  
            if (number > 0)
            {
                if (words != "") words += "AND ";
                var unitsMap = new[]
                {
            "ZERO", "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE", "TEN", "ELEVEN", "TWELVE", "THIRTEEN", "FOURTEEN", "FIFTEEN", "SIXTEEN", "SEVENTEEN", "EIGHTEEN", "NINETEEN"
        };
                var tensMap = new[]
                {
            "ZERO", "TEN", "TWENTY", "THIRTY", "FORTY", "FIFTY", "SIXTY", "SEVENTY", "EIGHTY", "NINETY"
        };
                if (number < 20) words += unitsMap[number];
                else
                {
                    words += tensMap[number / 10];
                    if ((number % 10) > 0) words += " " + unitsMap[number % 10];
                }
            }
            return words;
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            string EmailUser = Session["User"].ToString();
            string Gender = "";
            if (rdMale.Checked)
            {
                Gender = rdMale.Text.Trim();
            }
            else if (rdFemale.Checked)
            {
                Gender = rdFemale.Text.Trim();
            }
            //try
            //{

            using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                {
                    string query = @"select count(*) from Profile where Email='" + EmailUser + "'";
                    // SqlCommand cmd = new SqlCommand("insert into lo")
                    sqlConn.Open();
                    SqlCommand cmda = new SqlCommand(query, sqlConn);
                    int count = (int)cmda.ExecuteScalar();
                    if (count > 0)
                    {
                    int lenght = FileUpload1.PostedFile.ContentLength;
                    byte[] pic = new byte[lenght];
                    FileUpload1.PostedFile.InputStream.Read(pic, 0, lenght);
                    string connstring1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                        SqlConnection conn3 = new SqlConnection(sConnectionString);
                        conn3.Open();
                        //string ID = Request.QueryString["ID"].ToString();
                        string sql3 = "UPDATE Profile SET FName =@FirstName, LName =@LastName  , DOB=@DOB,Speciality=@Speciality , CompanyName=@CompanyName ,Address=@Address,City=@City,Country=@Country,ZipCode=@zipCode,MobileNo=@MobileNo,Email=@Email,Remarks=@Remarks,Gender=@Gender, ModifyDate=@ModifyDate  WHERE Email='" + EmailUser + "'";

                        SqlCommand cmd3 = new SqlCommand(sql3, conn3);


                        cmd3.Parameters.AddWithValue("@FirstName", txtFName.Text.Trim());
                        cmd3.Parameters.AddWithValue("@LastName", txtLname.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);

                        cmd3.Parameters.AddWithValue("@DOB", txtDOB1.Text.Trim());
                        cmd3.Parameters.AddWithValue("@CompanyName", txtCompanyName.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                        cmd3.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Country", txtCountry.Text.Trim());
                        cmd3.Parameters.AddWithValue("@zipCode", txtZipCode.Text.Trim());
                        cmd3.Parameters.AddWithValue("@MobileNo", txtMobileNo.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Remarks", txtRemarks.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Gender", Gender);
                        cmd3.Parameters.AddWithValue("@ModifyDate", DateTime.Now.ToString("M/d/yyyy"));
                        
                    //cmd3.Parameters.AddWithValue("@ModifyBy", EmailUser);


                    cmd3.ExecuteNonQuery();



                        //int res=cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Record Updated Sucessfully');window.location ='Default.aspx';</script>");
                    }

                    else
                    {
                    int lenght = FileUpload1.PostedFile.ContentLength;
                    byte[] pic = new byte[lenght];
                    FileUpload1.PostedFile.InputStream.Read(pic, 0, lenght);


                    string sQuery = string.Format("INSERT INTO Profile (FName,LName,DOB,Speciality,CompanyName,Address,City,Country,Zipcode,MobileNo,Email,Remarks,Gender) Values (@FirstName,@LastName,@DOB,@Speciality,@CompanyName,@Address,@City,@Country,@ZipCode,@MobileNo,@Email,@Remarks,@Gender)");

                        SqlConnection con = new SqlConnection(sConnectionString);

                        con.Open();
                        SqlCommand cmdi = new SqlCommand(sQuery, con);
                        ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
                        cmdi.Parameters.AddWithValue("@FirstName", txtFName.Text.Trim());
                        cmdi.Parameters.AddWithValue("@LastName", txtLname.Text.Trim());
                        cmdi.Parameters.AddWithValue("@DOB", txtDob.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);

                        cmdi.Parameters.AddWithValue("@CompanyName", txtCompanyName.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                        cmdi.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                        //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Country", txtCountry.Text.Trim());
                        
                        cmdi.Parameters.AddWithValue("@MobileNo", txtMobileNo.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Zipcode", txtZipCode.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        //cmd.Parameters.AddWithValue("@EventID", txtEvent.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Remarks", txtRemarks.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Gender", Gender);
                        
                    cmdi.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
                        con.Close();
                        Response.Write("<script>alert('Profile Created Successfully' );window.location ='Default.aspx';</script>");

                    }

                    sqlConn.Close();
                }
            //}
            //catch
            //{
            //    using (SqlConnection sqlConn2 = new SqlConnection(sConnectionString))
            //    {
            //        string query2 = @"select distinct Speciality from UserRegistrationDetail where Email='" + EmailUser + "'";

            //        SqlCommand cmd2 = new SqlCommand(query2, sqlConn2);
            //        sqlConn2.Open();
            //        DropDownSpeciality.DataSource = cmd2.ExecuteReader();
            //        DropDownSpeciality.DataTextField = "Speciality";

            //        DropDownSpeciality.DataBind();
            //        sqlConn2.Close();
            //    }

            //}

            

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile)
            {
                lblImage.Text = "Please insert Image";
            }
            else
            {
                int lenght = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[lenght];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, lenght);

                string EmailUser = Session["User"].ToString();
                string Gender = "";
                if (rdMale.Checked)
                {
                    Gender = rdMale.Text.Trim();
                }
                else if (rdFemale.Checked)
                {
                    Gender = rdFemale.Text.Trim();
                }
                //try
                //{

                using (SqlConnection sqlConn = new SqlConnection(sConnectionString))
                {
                    string query = @"select count(*) from Profile where Email='" + EmailUser + "'";
                    // SqlCommand cmd = new SqlCommand("insert into lo")
                    sqlConn.Open();
                    SqlCommand cmda = new SqlCommand(query, sqlConn);
                    int count = (int)cmda.ExecuteScalar();
                    if (count > 0)
                    {
                        //int lenght = FileUpload1.PostedFile.ContentLength;
                        //byte[] pic = new byte[lenght];
                        //FileUpload1.PostedFile.InputStream.Read(pic, 0, lenght);
                        string connstring1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                        SqlConnection conn3 = new SqlConnection(sConnectionString);
                        conn3.Open();
                        //string ID = Request.QueryString["ID"].ToString();
                        string sql3 = "UPDATE Profile SET FName =@FirstName, LName =@LastName  , DOB=@DOB,Speciality=@Speciality , CompanyName=@CompanyName ,Address=@Address,City=@City,Country=@Country,ZipCode=@zipCode,MobileNo=@MobileNo,Email=@Email,Remarks=@Remarks,Gender=@Gender, ModifyDate=@ModifyDate, Picture=@Picture  WHERE Email='" + EmailUser + "'";

                        SqlCommand cmd3 = new SqlCommand(sql3, conn3);


                        cmd3.Parameters.AddWithValue("@FirstName", txtFName.Text.Trim());
                        cmd3.Parameters.AddWithValue("@LastName", txtLname.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);

                        cmd3.Parameters.AddWithValue("@DOB", txtDOB1.Text.Trim());
                        cmd3.Parameters.AddWithValue("@CompanyName", txtCompanyName.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                        cmd3.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Country", txtCountry.Text.Trim());
                        cmd3.Parameters.AddWithValue("@zipCode", txtZipCode.Text.Trim());
                        cmd3.Parameters.AddWithValue("@MobileNo", txtMobileNo.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Remarks", txtRemarks.Text.Trim());
                        cmd3.Parameters.AddWithValue("@Gender", Gender);
                        cmd3.Parameters.AddWithValue("@Picture", pic);
                        cmd3.Parameters.AddWithValue("@ModifyDate", DateTime.Now.ToString("M/d/yyyy"));
                        //cmd3.Parameters.AddWithValue("@ModifyBy", EmailUser);


                        cmd3.ExecuteNonQuery();



                        //int res=cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Record Updated Sucessfully');window.location ='Default.aspx';</script>");
                    }

                    else
                    {



                        string sQuery = string.Format("INSERT INTO Profile (FName,LName,DOB,Speciality,CompanyName,Address,City,Country,Zipcode,MobileNo,Email,Remarks,Gender,Picture) Values (@FirstName,@LastName,@DOB,@Speciality,@CompanyName,@Address,@City,@Country,@ZipCode,@MobileNo,@Email,@Remarks,@Gender,@Picture)");

                        SqlConnection con = new SqlConnection(sConnectionString);

                        con.Open();
                        SqlCommand cmdi = new SqlCommand(sQuery, con);
                        ///cmd.Parameters.AddWithValue("@CustID", txtCustID.Text.Trim());
                        cmdi.Parameters.AddWithValue("@FirstName", txtFName.Text.Trim());
                        cmdi.Parameters.AddWithValue("@LastName", txtLname.Text.Trim());
                        cmdi.Parameters.AddWithValue("@DOB", txtDob.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);

                        cmdi.Parameters.AddWithValue("@CompanyName", txtCompanyName.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                        cmdi.Parameters.AddWithValue("@City", txtCity.Text.Trim());
                        //cmd.Parameters.AddWithValue("@Clinic", txtclinic.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Country", txtCountry.Text.Trim());

                        cmdi.Parameters.AddWithValue("@MobileNo", txtMobileNo.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Zipcode", txtZipCode.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        //cmd.Parameters.AddWithValue("@EventID", txtEvent.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Remarks", txtRemarks.Text.Trim());
                        cmdi.Parameters.AddWithValue("@Gender", Gender);
                        cmdi.Parameters.AddWithValue("@Picture", pic);
                        cmdi.ExecuteNonQuery(); //INSERT, UPDATE, DELETE
                        con.Close();
                        Response.Write("<script>alert('Profile Created Successfully' );window.location ='Default.aspx';</script>");

                    }

                    sqlConn.Close();
                }
            }
        }
    }
}