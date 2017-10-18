using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;



public partial class Account_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnRegister_Click(object sender, EventArgs e)
    {
        captcha1.ValidateCaptcha(TextBox6.Text.Trim());
        if (Page.IsValid)
        {
            if (captcha1.UserValidated)
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spRegisterUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");

                    SqlParameter UniqueID = new SqlParameter("@UniqueID", txtUniqueID.Text);
                    SqlParameter FirstName = new SqlParameter("@FirstName", txtFirstName.Text);
                    SqlParameter LastName = new SqlParameter("@LastName", txtLastName.Text);
                    SqlParameter Course = new SqlParameter("@Course", ddlCourse.Text);
                    SqlParameter Department = new SqlParameter("@Department", ddlDepartment.Text);
                    SqlParameter Year = new SqlParameter("@Year", ddlYear.Text);
                    SqlParameter Password = new SqlParameter("@Password", txtPassword.Text);
                    SqlParameter MobileNo = new SqlParameter("@MobileNo", txtMobNo.Text);
                    SqlParameter Email = new SqlParameter("@Email", txtEmail.Text);

                    if (RadioButton1.Checked)
                        cmd.Parameters.AddWithValue("@Role", "Admin");
                    else
                        cmd.Parameters.AddWithValue("@Role", "User");

                     cmd.Parameters.Add(UniqueID);
                     cmd.Parameters.Add(FirstName);
                     cmd.Parameters.Add(LastName);
                     cmd.Parameters.Add(Course);
                     cmd.Parameters.Add(Department);
                     cmd.Parameters.Add(Year);
                    cmd.Parameters.Add(Password);
                     cmd.Parameters.Add(MobileNo);
                    cmd.Parameters.Add(Email);

                    con.Open();
                    int ReturnCode = (int)cmd.ExecuteScalar();
                    if (ReturnCode == -1)
                    {
                        lblMessage.Text = "Username already exists .. choose another";
                    }
                    else
                    {
                        Response.Redirect("~/Account/Login.aspx");
                    }




                }
            }
            else
            {
                Response.Redirect("Register.aspx");
                Label2.ForeColor = System.Drawing.Color.Red;
                Label2.Text = "You have Entered InValid Captcha Characters please Enter again";
            }


        }
    }

   
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {

            Labeladmin.Visible = true;
            txtUniqueID.Visible = true;
            Labeluser.Visible = false;
            
        }
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked)
        {

            Labeluser.Visible = true;
            txtUniqueID.Visible = true;
            Labeladmin.Visible = false;
            
        }
    }


}