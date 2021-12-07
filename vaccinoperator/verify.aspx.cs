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
    public partial class verify : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["CowinConnectionString"].ToString());
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
            
            if (!IsPostBack) {
                name.Visible = false;
                Year.Visible = false;
                rmn.Visible = false;
                id.Visible = false;
                Dose_1.Visible = false;
                Dose_2.Visible = false;
                D_1.Visible = false;
                D_2.Visible = false;
                con.Visible = false;
                vaccine.Visible = false;
                vacc.Visible = false;
                v_name.Visible = false;
                Vname.Visible = false;
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }

        protected void search_Click(object sender, EventArgs e)
        {
            name.Visible = true;
            Year.Visible = true;
            rmn.Visible = true;
            id.Visible = true;
            Dose_1.Visible = true;
            Dose_2.Visible = true;
            D_1.Visible = true;
            D_2.Visible = true;
            con.Visible = true;
            vaccine.Visible = true;
            vacc.Visible = true;
            Vname.Visible = true;
            v_name.Visible = true;
            cn.Open();
            bool temp = false;
            SqlCommand cmd = new SqlCommand("Select benficiary.RMN, idno, name, yearofbirth, dose.dose_1, date_d1, dose_2, date_d2, vcname from benficiary join dose ON benficiary.Bid = dose.Bid where benficiary.RMN = '" + mobile.Text + "' ", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                rmn.Text = "Mobile:" + dr.GetString(0);
                id.Text = "ID:" + dr.GetString(1);
                name.Text = "Name:" + dr.GetString(2);
                Year.Text = "Year Of Birth:" + dr.GetString(3);
           
                if (dr.GetString(5) != " ") {
                    v_name.Text = dr.GetString(8);
                    Dose_1.Text = "Dose 1: Completed On Date: " + dr.GetString(4);
                    D_1.Text = "Vaccine" + dr.GetString(5);
                    Dose_2.Text = "Dose 2: On Date: " + dr.GetString(6);
                    D_1.Enabled = false;
                    D_2.Enabled = true;
                    con.Text = "Partialy Vaccinated..";
                    vacc.Visible = false;
                    vaccine.Visible = false;
                }
                if (dr.GetString(7) == "Done") {
                    v_name.Text = dr.GetString(8);
                    Dose_1.Text = "Dose 1: Completed On Date: " + dr.GetString(4);
           
                    Dose_2.Text = "Dose 2: Completed On Date: " + dr.GetString(6);
                    D_2.Text = "Vaccine" + dr.GetString(7);
           
                    D_2.Enabled = false;
                    con.Text = "Fully Vaccinated..";
                    vacc.Visible = false;
                }
                temp = true;
            }
            if (temp == false)
            {
                Response.Write("<script>alert('not found')</script>");
            }else{
                Response.Write("<script>alert('Beneficiary Verified..')</script>");
            }
            cn.Close();
            cn.Open();
            SqlCommand com = new SqlCommand("Select Bid from benficiary where RMN ='" + mobile.Text + "'", cn);
            SqlDataReader sdr = com.ExecuteReader();
            while (sdr.Read())
            {
                Session["Bid"] = sdr.GetInt32(0).ToString();
            }
           
            cn.Close();
            
        }

        protected void D_1_Click(object sender, EventArgs e)
        {
            string id = Session["Bid"].ToString();
           
            var date = DateTime.Now.Date;
            string d = date.ToString("dd/MM/yyyy");
            var day = DateTime.Now.AddDays(84);
            string d2 = day.ToString("dd/MM/yyyy");
            
            cn.Open();
            SqlCommand cmd;
            cmd = cn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update dose set vcname ='"+vacc.SelectedItem.Text+"', dose_1 = '"+ d +"', date_d1 = 'Done', dose_2 = '"+ d2 +"' where Bid = '"+ id +"'";
            cmd.ExecuteNonQuery();
            cn.Close();
            
        }

        protected void D_2_Click(object sender, EventArgs e)
        {
            string id = Session["Bid"].ToString();
           
            cn.Open();
            SqlCommand cmd;
            cmd = cn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update dose set date_d2 = 'Done' where Bid = '" + id + "'";
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}