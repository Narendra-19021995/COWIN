using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace COWINSYSTEM
{
    public class Connection
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CowinConnectionString"].ToString());

        internal void open()
        {
            throw new NotImplementedException();
        }
    }
}