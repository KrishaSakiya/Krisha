using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class admin_show_product : System.Web.UI.Page
{
    string cs = WebConfigurationManager.ConnectionStrings["giftshop"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter adapt;
    DataTable dt;
    SqlDataReader dr;
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
        dt = new DataTable();
        connect();
        adapt = new SqlDataAdapter("Select * from product order by p_id ASC", con);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        con.Close();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        if (Session["id"] != null)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GridView1.EditIndex = e.NewEditIndex;
            //ShowData();
        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //Finding the controls from Gridview for the row which is going to update  
        Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
        TextBox txt_main_cat = (TextBox)GridView1.Rows[e.RowIndex].FindControl("main_cat");
        TextBox txt_sub_cat = (TextBox)GridView1.Rows[e.RowIndex].FindControl("sub_cat");
        TextBox txt_p_name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("p_name");
        TextBox txt_prize = (TextBox)GridView1.Rows[e.RowIndex].FindControl("p_prize");
        FileUpload file_upload1 = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("fu1");
        string path = file_upload1.FileName;
        if (file_upload1.HasFile)
        {
            //path += file_upload1.FileName;
            //save image in folder
            file_upload1.SaveAs(MapPath("product img/" + path));
        }
        else
        {
            //use previous user image if new image is not changed
            Image img = (Image)GridView1.Rows[e.RowIndex].FindControl("img1");

        }
        con = new SqlConnection(cs);
        con.Open();
        //updating the record  
        SqlCommand cmd = new SqlCommand("Update product set main_cat = '" + txt_main_cat.Text + "',sub_cat = '" + txt_sub_cat.Text + "',p_name = '" + txt_p_name.Text + "',p_prize = " + txt_prize.Text + ",p_image='" + path + "' where p_id=" + Convert.ToInt32(id.Text), con);
        cmd.ExecuteNonQuery();
        con.Close();
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        Response.Write("<script language='javascript'>alert('Successfully Updated');</script>");
        //Call ShowData method for displaying updated data   
        bind_grd();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        //ShowData();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
        string conn = WebConfigurationManager.ConnectionStrings["giftshop"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        cmd = new SqlCommand("delete from product where p_id =" + Convert.ToInt32(id.Text), con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Write("<script language='javascript'>alert('Successfully Deleted');</script>");
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