using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Account_User_Feedback : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=SHREYA-PC\ShreyaSrivastava;Initial Catalog=LCMS_Database;Integrated Security=True"); 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmitFeedback_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert Into tblFeedback values (@Name, @SAP, @FeedBack)", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@Name", txtName.Text);
        cmd.Parameters.AddWithValue("@SAP", txtSap.Text);
        cmd.Parameters.AddWithValue("@FeedBack", txtFeedback.Text);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        LblMessage.Text = "FeedBack Submitted";
        LblMessage.ForeColor = System.Drawing.Color.Green;
    }
}