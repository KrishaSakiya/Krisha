﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;


public partial class admin_card_details : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("Select * from debitcard", con);

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
}