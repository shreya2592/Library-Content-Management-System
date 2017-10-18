using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.Data;
using System.Web.Security;

public partial class Account_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (AuthenticateUser(txtUniqueID.Text, txtPassword.Text))
        {
            
           FormsAuthentication.RedirectFromLoginPage(txtUniqueID.Text, chkBoxRememberMe.Checked);
        }
        else
        {
            lblMessage.Text = "Invalid UserName and/Or Password";
        }
        
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    private bool AuthenticateUser(string UniqueID, string password)
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
            cmd.CommandType = CommandType.StoredProcedure;

            string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
            SqlParameter paramUniqueID = new SqlParameter("@UniqueID", UniqueID);
            SqlParameter paramPassword = new SqlParameter("@Password", password);

            cmd.Parameters.Add(paramUniqueID);
            cmd.Parameters.Add(paramPassword);

            con.Open();
            int ReturnCode = (int)cmd.ExecuteScalar();
            return ReturnCode == 1;

        }
    }
}