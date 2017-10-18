using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Account_Add_Magazine : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=SHREYA-PC\ShreyaSrivastava;Initial Catalog=LCMS_Database;Integrated Security=True"); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }
     protected void BtnUpload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (fileExtension.ToLower() != ".pdf")
            {
                LblMessage.Text = "Only PDF Files are allowed !!";
                LblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {

                string str = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/Uploads/Magazines/" + FileUpload1.FileName));
                string path = "~/Uploads/Magazines/" + str.ToString();
                SqlCommand cmd = new SqlCommand("Insert Into tblUploadMagazine values (@MName, @PName, @IssueNo, @DateOfIssue, @Category, @PSchedule,@Ptype, @Keywords,@Path)", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@MName", txtMagazineName.Text);
                cmd.Parameters.AddWithValue("@PName", txtPublisherName.Text);
                cmd.Parameters.AddWithValue("@IssueNo", txtIssueNo.Text);
                cmd.Parameters.AddWithValue("@DateOfIssue", txtDateOfIssue.Text);
                cmd.Parameters.AddWithValue("@Category", ddlCategory.Text);
                cmd.Parameters.AddWithValue("@PSchedule", ddlPublication.Text);
                cmd.Parameters.AddWithValue("@Ptype", ddlPublicationType.Text);
                cmd.Parameters.AddWithValue("@Keywords", txtKeywords.Text);
                cmd.Parameters.AddWithValue("@Path", path);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                LblMessage.Text = "File Uploaded";
                LblMessage.ForeColor = System.Drawing.Color.Green;
            }
        }
        else
        {
            LblMessage.Text = "Please select a file to upload!!";
            LblMessage.ForeColor = System.Drawing.Color.Red; 
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {

            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDateOfIssue.Text = Calendar1.SelectedDate.ToLongDateString();
        Calendar1.Visible = false;
    }
}
