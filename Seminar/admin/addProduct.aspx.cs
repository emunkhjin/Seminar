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
    public partial class addProduct : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Хичээлтэй холбоотой\Seminar\Seminar\Seminar\App_Data\hudaldaa.mdf;Integrated Security=True");
        string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommand drop = new SqlCommand("select CategoryID, CategoryName from Category", con);
            //con.Open();
            //DropDownList1.DataSource = drop.ExecuteReader();
            //DropDownList1.DataTextField = "CategoryName";
            //DropDownList1.DataValueField = "CategoryID";
            //DropDownList1.DataBind();
           



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            a = Class1.GetRandomPassword(10).ToString();
            f1.SaveAs(Request.PhysicalApplicationPath + "./images/"+ a +f1.FileName.ToString());
            b = "images/" + a + f1.FileName.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO product(product_name, Category_ID, product_desc, product_price, product_qty, product_images)" +
                                "VALUES(N'" + Tproductname.Text + "',N'" + catname.Text + "',N'" + Tproductdesc.Text + "','" + Tproductprice.Text + "','" + Tproductqty.Text + "','" + b.ToString() + "');";
           // cmd.CommandText = "insert into product values(N'"+Tproductname.Text+"',N'"+Tproductdesc.Text+ "',"+Tproductprice.Text+ ","+Tproductqty.Text+ ",'" + b.ToString() + "')";
            cmd.ExecuteNonQuery();
        }
    }
}