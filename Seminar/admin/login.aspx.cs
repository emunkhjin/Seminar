using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Seminar.admin
{
    public partial class login1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Хичээлтэй холбоотой\Seminar\Seminar\Seminar\App_Data\hudaldaa.mdf;Integrated Security=True");
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            i = 0;
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from users where username='" + u1.Text + "' and password='" + p1.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());
            foreach (DataRow dr in dt.Rows)
            {
                Session["username"] = dr["username"].ToString();
                Response.Redirect("dashboard.aspx");

            }

            //if (i == 1)
            //{
            //    Session["username"] = DropDownList.
            //    Response.Redirect("dashboard.aspx");
            //}
            //else
            //{
            //    Label1.Text = "Nuuts ug esvel hereglegch buruu baina .!";
            //}



            con.Close();


        }
    }
}