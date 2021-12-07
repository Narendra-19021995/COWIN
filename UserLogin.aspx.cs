using System;
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
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CowinConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "select count(*) from benficiary where RMN='" + mob.Text + "' and idno='" + id_proof.Text + "' ";
            string query_id = "select Bid, name from benficiary where RMN='" + mob.Text + "' and idno='" + id_proof.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlCommand cd = new SqlCommand(query_id, con);
            string output = cmd.ExecuteScalar().ToString();
            SqlDataReader dr = cd.ExecuteReader();
            if (output == "1")
            {
                // now we create a session

                while (dr.Read())
                {
                    Session["Bid"] = dr.GetValue(0);
                    Session["name"] = dr.GetString(1);
                }
                Response.Redirect("User/index.aspx");
            }

            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script langauge='javascript'>alert('Please Enter Correct Username and Password')</script>");
            }
        }
    }
}