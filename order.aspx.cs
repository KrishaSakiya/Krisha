using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;


public partial class admin_order : System.Web.UI.Page
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
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        connect();
        cmd = new SqlCommand("delete from checkout where bid=" + gv1.Rows[e.RowIndex].Cells[0].Text + "", con);
        cmd = new SqlCommand("delete from cart where bid=" + gv1.Rows[e.RowIndex].Cells[0].Text + "", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Order Completed Successfully')</script>");
        bind_grd();
    }

    public void bind_grd()
    {
        try
        {
            if (dt == null || dt.Rows.Count < 1)
            {
                connect();
                SqlCommand cmd = new SqlCommand("select cart.bid,cart.tid,cart.mid,cart.p_name,cart.p_prize,cart.qty,cart.total,checkout.name,checkout.address,checkout.payment,checkout.mnumber from cart,checkout where cart.bid=checkout.bid", con);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                dt = new DataTable();
                adapter.Fill(dt);
                cmd.Dispose();
                con.Close();

            }
            gv1.DataSource = dt;
            gv1.DataBind();
        }
        catch (Exception ex)
        {

        }
    }
    protected void datagrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            bind_grd();
            gv1.PageIndex = e.NewPageIndex;
            gv1.DataBind();
        }
        catch (Exception ex)
        {

        }
    }
}