using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["id"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Label1.Text = "Hello  " + Session["id"].ToString();
            Label1.Visible = true;
        }
    }
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            Session["id"].ToString();
            Session.Abandon();
            Session.RemoveAll();
            Session.Clear();
        }
        Response.Redirect("~/Admin/Login.aspx");
    }
}
 