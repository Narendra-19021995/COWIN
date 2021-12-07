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
    public partial class userregister : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CowinConnectionString"].ToString());
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter sda;
            DataTable dt;
            con.Open();
            sda = new SqlDataAdapter("select isnull(max(cast(Bid as int)),0)+1 from benficiary", con);
            dt = new DataTable();
            sda.Fill(dt);
            id = dt.Rows[0][0].ToString();
            con.Close();
            //Response.Write(id);
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            var d = DateTime.Now.Date;
            string date = d.ToString("dd/MM/yyyy");
            SqlCommand cmd = new SqlCommand("reg", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@RMN", SqlDbType.VarChar).Value = mob.Text;
            cmd.Parameters.Add("@idprooftype", SqlDbType.VarChar).Value = drop.SelectedItem.Text;
            cmd.Parameters.Add("@idno", SqlDbType.VarChar).Value = id_proof.Text;
            cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = name.Text;
            cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = gender.SelectedItem.Text;
            cmd.Parameters.Add("@yearofbirth", SqlDbType.Char).Value = year.Text;
            cmd.Parameters.Add("@date", SqlDbType.VarChar).Value=date;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            string space = " ";
            int bid = Convert.ToInt16(id);
            cmd = new SqlCommand("doseid", con);
            cmd.CommandType = CommandType.StoredProcedure; 
            cmd.Parameters.Add("@vcname", SqlDbType.VarChar).Value = space;
            cmd.Parameters.Add("@dose_1", SqlDbType.VarChar).Value = space;
            cmd.Parameters.Add("@date_d1", SqlDbType.VarChar).Value = space;
            cmd.Parameters.Add("@dose_2", SqlDbType.VarChar).Value = space;
            cmd.Parameters.Add("@date_d2", SqlDbType.VarChar).Value = space;
            cmd.Parameters.Add("@Bid", SqlDbType.VarChar).Value = bid;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Registration Done Successfully..');</script>");
        }
    }
}