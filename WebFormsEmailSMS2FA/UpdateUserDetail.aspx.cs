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

namespace WebFormsEmailSMS2FA
{
    public partial class UpdateUserDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                    string databaseString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlDataReader dReader;
                    string ID = Request.QueryString["ID"].ToString();
                    //string EmailUser = Session["User"].ToString();
                    SqlConnection conn = new SqlConnection(databaseString);
                    conn.Open();
                    SqlCommand getUsercmd = new SqlCommand("SELECT FIRSTNAME, LASTNAME, Speciality, City, SecurityStamp, PhoneNumber, Email,Country FROM Users where Email='" + ID + "'", conn);
                    dReader = getUsercmd.ExecuteReader();

                    while (dReader.Read())
                    {

                        txtFirsName.Text = dReader.GetSqlValue(0).ToString().ToUpper();
                        txtLastName.Text = dReader.GetSqlValue(1).ToString().ToUpper();
                        DropDownSpeciality.Items.FindByText(dReader.GetSqlValue(2).ToString()).Selected = true;
                        
                        
                        DropDownCity.Items.FindByText(dReader.GetSqlValue(3).ToString()).Selected = true;
                        txtPmdcNo.Text = dReader.GetSqlValue(4).ToString();
                        txtPhoneNumber.Text = dReader.GetSqlValue(5).ToString();
                        txtEmail.Text = dReader.GetSqlValue(6).ToString();
                        DropDownCountry.Items.FindByText(dReader.GetSqlValue(7).ToString()).Selected = true;



                }
                    getUsercmd.Dispose();


                    conn.Close();
                
                
            }
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            conn.Open();
            //string ID = Request.QueryString["ID"].ToString();
            string ID = Request.QueryString["ID"].ToString();
            string sql2 = "UPDATE Users SET FirstName =@FirstName, LastName =@LastName  , Speciality=@Speciality , City=@City,Country=@Country , SecurityStamp=@SecurityStamp , PhoneNumber= @PhoneNumber  , Email=@Email WHERE Email='" + ID + "'";

            SqlCommand cmd = new SqlCommand(sql2, conn);


            cmd.Parameters.AddWithValue("@FirstName", txtFirsName.Text.Trim());
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
            cmd.Parameters.AddWithValue("@Speciality", DropDownSpeciality.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@City", DropDownCity.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Country", DropDownCountry.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text.Trim());
            cmd.Parameters.AddWithValue("@SecurityStamp", txtPmdcNo.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            
      
        
            cmd.ExecuteNonQuery();



            //int res=cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Validated Sucessfully');window.location ='UsersDetail.aspx';</script>");


        }
    }
}