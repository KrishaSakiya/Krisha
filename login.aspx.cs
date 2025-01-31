using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["giftshop"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from adminlogin where username ='" + txt1.Text + "' and password='" + txt2.Text + "'", con);
        //cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
        //cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["id"] = txt1.Text;
            Response.Redirect("category.aspx");
            Session.RemoveAll();
        }
        else
        {
            Label3.Text = "You're Username and Password is Incorrect";
            Label3.Visible = true;
        }  

    }
}