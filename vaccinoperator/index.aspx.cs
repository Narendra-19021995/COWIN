using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace COWINSYSTEM.vaccinoperator
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection cn= new SqlConnection(ConfigurationManager.ConnectionStrings["CowinConnectionString"].ToString());
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
            /*var d = DateTime.Now.AddDays(2);
            string date = d.ToString("dd/MM/yyyy");
            Response.Write(date);*/
            reg.Text = Session["rg"].ToString();
            pv.Text = Session["rg1"].ToString();
            fv.Text = Session["rg2"].ToString();
            if (!IsPostBack) {
                show();
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }
        private void show() {
            string id = Session["Vid"].ToString();
            cn.Open();
            string query = "Select Username, Rmn, role, status from vaccinator where Vid ='"+ id +"'";
            SqlCommand cm = new SqlCommand(query, cn);
            SqlDataReader dr = cm.ExecuteReader();
            while(dr.Read())
            {
                name.Text = dr.GetString(0);
                mob.Text=dr.GetString(1);
                role.Text=dr.GetString(2);
                status.Text = dr.GetString(3);
            }
            cn.Close();
        }
    }
}