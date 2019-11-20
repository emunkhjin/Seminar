using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace Seminar.App_Code
{

    public static class DataAccess

    {
        private static string myConString;
        static DataAccess()
        {
            myConString = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        }
        public static DataTable selectQuery(string query)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(myConString);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            dt.Load(cmd.ExecuteReader());

            con.Close();
            return dt;


        }
    }
}