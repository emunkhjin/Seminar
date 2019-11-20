using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Seminar.App_Code;


namespace Seminar.admin
{
    public partial class products : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Desktop\Seminar\Seminar\Seminar\App_Data\hudaldaa.mdf;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM product";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            adminProducts.DataSource = dt;
            adminProducts.DataBind();

            con.Close();
        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}