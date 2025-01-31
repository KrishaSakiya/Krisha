using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_product : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    public void connect()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["giftshop"].ConnectionString);
        con.Open();

    }
    public void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connect();
        cmd = new SqlCommand("insert into product(main_cat,sub_cat,p_name,p_details,p_prize,p_image)values('"+DropDownList1.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"',"+TextBox4.Text+",'"+FileUpload1.FileName+"')",con);
        cmd.ExecuteNonQuery();
        clear();
        Response.Write("<script>alert('Product Upload Successfully')</script>");


    }
 
}