using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace COWINSYSTEM.User
{
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["CowinConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                logout.Text = "LOGOUT " + Session["name"].ToString();
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
            string id = Session["Bid"].ToString();
            int Bid = Convert.ToInt16(id);
            cn.Open();
            bool temp = false;
            SqlCommand cmd = new SqlCommand("Select benficiary.RMN, idno, name, yearofbirth, dose.dose_1, dose_2, date_d1, date_d2, vcname from benficiary join dose ON benficiary.Bid = dose.Bid where benficiary.Bid = '" + Bid + "' ", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                rmn.Text = dr.GetString(0);
                ids.Text = dr.GetString(1);
                name.Text =dr.GetString(2);
                year.Text =dr.GetString(3);
              
                if (dr.GetString(4) != " ")
                {
                    vaccine.Text = dr.GetString(8);
                    dose1.Text = "First Dose Completed On Date: " + dr.GetString(4);
                    dose2.Text = "Next On Date: " + dr.GetString(5);
                    status.Text = "Partialy Vaccinated...";
                }
                else {
                    vc.Visible = false;
                    vaccine.Visible = false;
                    d1.Visible = false;
                    dose1.Visible = false;
                    d2.Visible = false;
                    status.Visible = false;
                }
              
                if (dr.GetString(7) == "Done")
                {
                    dose2.Text = "Second Dose Completed On Date: " + dr.GetString(5);
                    status.Text = "Fully Vaccinated...";
                }
                else
                {
                    status.Text = "Partialy Vaccinated...";
                }
              
                temp = true;
            }
            if (temp == false)
            {
                Response.Write("<script>alert('not found')</script>");
            }
            else
            {
                Response.Write("<script>alert('Beneficiary Verified..')</script>");
            }
            cn.Close();
        }


        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("name");
            Response.Redirect("../index.aspx");
        }
    }
}