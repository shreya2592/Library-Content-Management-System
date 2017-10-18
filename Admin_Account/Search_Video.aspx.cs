using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Account_Search_Video : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=SHREYA-PC\ShreyaSrivastava;Initial Catalog=LCMS_Database;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string str = "select * from tblUploadVideo where ((VNumber like '%' + @Search+'%') OR (VName like '%' + @Search+'%') OR (OwnedBy like '%' + @Search+'%') OR (AuthorName like '%' + @Search+'%') OR(Category like '%' + @Search+'%') OR( DateOfIssue like '%' + @Search+'%') OR(Topic like '%' + @Search+'%') OR (Nationality like '%' + @Search+'%') OR (Keywords like '%' + @Search+'%'))";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.Parameters.Add("@Search", SqlDbType.NVarChar).Value = txtSearch.Text;
        con.Open();
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds, "VName");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();

    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {


        Response.Redirect(e.CommandArgument.ToString());
            // string str = e.CommandArgument.ToString();
        //Response.Redirect("Play_Video.aspx");
      //  Response.Redirect("Play_Video.aspx? Parameters=" + str);
        
    }
}