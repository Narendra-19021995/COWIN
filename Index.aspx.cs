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
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["CowinConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            string query = "select count(Bid) from benficiary";
            string query1 = "select count(date_d1) from dose where date_d1='Done'";
            string query2 = "select count(date_d2) from dose where date_d2='Done'";
            SqlCommand cm = new SqlCommand(query, cn);
            SqlCommand cm1 = new SqlCommand(query1, cn);
            SqlCommand cm2 = new SqlCommand(query2, cn);
            string rg = cm.ExecuteScalar().ToString();
            string rg1 = cm1.ExecuteScalar().ToString();
            string rg2 = cm2.ExecuteScalar().ToString();
            reg.Text = rg;
            pv.Text = rg1;
            fv.Text = rg2;
            Session["rg"] = rg;
            Session["rg1"] = rg1;
            Session["rg2"] = rg2;
            cn.Close();
        }
    }
}