using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Account_Full_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search_Journal.aspx");
    }


    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search_Video.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search_Magazine.aspx");
    }
}