using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

public partial class admin_gallery : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    public void connect()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["giftshop"].ConnectionString);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connect();
        if(FileUpload1.HasFiles)
        {
            try
            {
                string extension = Path.GetExtension(FileUpload1.FileName);
                if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                {
                    string fname = Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/image") + fname);
                    cmd = new SqlCommand("insert into gallery  values('" + FileUpload1.FileName + "')", con);
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Image Upload Successfully')</script>");
                    }
                }
                else
                {
                    Label1.Text = "Your only use Jpg,Jpeg and Png Format only";
                }

            }
            catch(Exception ex)
            {
                Label1.Text="the file could not be be upload. the following error occured:"+ex.Message;
            }
        }
    }
        
}