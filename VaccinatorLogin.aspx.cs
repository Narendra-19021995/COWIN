﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace COWINSYSTEM
{
    public partial class Vaccinator : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CowinConnectionString"].ToString()); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "select count(*) from vaccinator where Rmn='" + uname.Text + "' and password='" + password.Text + "' ";
            string query_id = "select Vid, Username from vaccinator where Rmn='" + uname.Text + "' and password='" + password.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlCommand cd = new SqlCommand(query_id, con);
            string output = cmd.ExecuteScalar().ToString();
            SqlDataReader dr = cd.ExecuteReader();
            if (output == "1")
            {
                // now we create a session

                while (dr.Read())
                {
                    Session["Vid"] = dr.GetValue(0);
                    Session["Username"] = dr.GetValue(1);
                }
                Response.Redirect("Vaccinoperator/index.aspx");
            }

            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script langauge='javascript'>alert('Please Enter Correct Username and Password')</script>");
            }
        }
    }
}