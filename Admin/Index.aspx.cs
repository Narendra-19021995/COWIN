using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COWINSYSTEM.Admin
{
    public partial class Index : System.Web.UI.Page
    {
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
            reg.Text=Session["rg"].ToString();
            pv.Text = Session["rg1"].ToString();
            fv.Text = Session["rg2"].ToString();
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("../index.aspx");
        }
    }
}