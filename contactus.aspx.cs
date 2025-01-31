using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class admin_contactus : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind_grd();

        }
    }
    public void connect()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["giftshop"].ConnectionString);
        con.Open();

    }
    public void bind_grd()
    {
        try
        {
            if (dt == null || dt.Rows.Count < 1)
            {
                connect();
                SqlCommand cmd = new SqlCommand("Select * from contact", con);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                dt = new DataTable();
                adapter.Fill(dt);
                cmd.Dispose();
                con.Close();

            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        connect();
        cmd = new SqlCommand("delete from contact where id=" + GridView1.Rows[e.RowIndex].Cells[0].Text + "", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('contact Delete Successfully')</script>");
        bind_grd();
    }
    protected void datagrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            bind_grd();
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {

        }
    }
}