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
    public partial class addCategory : System.Web.UI.Page      
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Хичээлтэй холбоотой\Seminar\Seminar\Seminar\App_Data\hudaldaa.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO Category(CategoryName)" +
                                "VALUES(N'" + Tproductname.Text + "');";
            // cmd.CommandText = "insert into product values(N'"+Tproductname.Text+"',N'"+Tproductdesc.Text+ "',"+Tproductprice.Text+ ","+Tproductqty.Text+ ",'" + b.ToString() + "')";
            cmd.ExecuteNonQuery();
        }
    }
}