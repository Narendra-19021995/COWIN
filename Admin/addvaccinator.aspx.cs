using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace COWINSYSTEM.Admin
{
    public partial class addvaccinator : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CowinConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                logout.Text = "Logout " + Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            var d = DateTime.Now.Date;
            string date = d.ToString("dd/MM/yyyy");
            SqlCommand cmd = new SqlCommand("vacc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = uname.Text;
            cmd.Parameters.Add("@Rmn", SqlDbType.VarChar).Value = mobile.Text;
            cmd.Parameters.Add("@role", SqlDbType.VarChar).Value = role_list.SelectedItem.Text;
            cmd.Parameters.Add("@block", SqlDbType.VarChar).Value = block_list.SelectedItem.Text;
            cmd.Parameters.Add("@district", SqlDbType.VarChar).Value = D_List.SelectedItem.Text;
            cmd.Parameters.Add("@status", SqlDbType.VarChar).Value = status_list.SelectedItem.Text;
            cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = passw.Text;
            cmd.Parameters.Add("@date", SqlDbType.VarChar).Value = date;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Registration Done Successfully..');</script>");
        }
       /* create procedure vacc
(
@Username varchar(50),
@Rmn varchar(50),
@role varchar(50),
@block varchar(50),
@district varchar(50),
@status varchar(50),
@password varchar(50),
@date varchar(50)
)
as
insert vaccinator(Username, Rmn, role, block, district, status, password, date)
values
(@Username, @Rmn, @role, @block, @district, @status, @password, @date)
go
     */  
    }
}