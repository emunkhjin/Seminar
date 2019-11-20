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
    public partial class register : System.Web.UI.Page
    {
       // SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Desktop\Seminar\Seminar\Seminar\App_Data\hudaldaa.mdf;Integrated Security=True");
         
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into [users] (username,password,full_name,user_type,phone,email) values(N'" + u1.Text + "',N'" + p1.Text + "'," + fullname1.Text + ",0," + phone.Text + "," + email.Text + ")";
            //cmd.ExecuteNonQuery();

            //string _connStr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\DELL\\Desktop\\Seminar\\Seminar\\Seminar\\App_Data\\hudaldaa.mdf;Integrated Security=True";
            //string _query = "INSERT INTO [users] (username,password,full_name,phone,email) values (@first,@last,@email,@pass,@type)";
            //using (SqlConnection conn = new SqlConnection(_connStr))
            //{
            //    using (SqlCommand comm = new SqlCommand())
            //    {
            //        comm.Connection = conn;
            //        comm.CommandType = CommandType.Text;
            //        comm.CommandText = _query;
            //        comm.Parameters.AddWithValue("@username", u1.Text);
            //        comm.Parameters.AddWithValue("@password", p1.Text);
            //        comm.Parameters.AddWithValue("@full_name", fullname1.Text);
            //        comm.Parameters.AddWithValue("@phone", phone.Text);
            //        comm.Parameters.AddWithValue("@email", email.Text);
            //        try
            //        {
            //            conn.Open();
            //            comm.ExecuteNonQuery();
            //            conn.Close();
            //        }
            //        catch (SqlException ex)
            //        {
            //            Label1.Text = ex.ToString();
            //        }

            //    }
            //}

             SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Desktop\Seminar\Seminar\Seminar\App_Data\hudaldaa.mdf;Integrated Security=True");
            try
            {
                con.Open();
                string command = "insert into users(username,password,full_name,phone,email) VALUES(@u1,@p1,@fullname,@phone,@email)";
                SqlCommand cmd = new SqlCommand(command, con);

                cmd.Parameters.AddWithValue("@u1", u1.Text);
                cmd.Parameters.AddWithValue("@p1", p1.Text);
                cmd.Parameters.AddWithValue("@fullname", fullname1.Text);
                cmd.Parameters.AddWithValue("@phone", phone.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);

                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;

            }
            finally
            {
                con.Close();
            }


        }
    }
}