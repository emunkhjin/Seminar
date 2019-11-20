using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Seminar.App_Code;


namespace Seminar.user
{
    public partial class product_desc : System.Web.UI.Page
    {
        
        
        Carts myCart;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Desktop\Seminar\Seminar\Seminar\App_Data\hudaldaa.mdf;Integrated Security=True");
        //int id;
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            
                if (Session["MyCart"] == null)
                {
                    myCart = new Carts();
                    Session["MyCart"] = myCart;


                }
            string id = Request.QueryString["ID"];
            myCart = (Carts)Session["myCart"];
            DataTable dt = DataAccess.selectQuery("select * from product where id =" + id);
            DataRow row = dt.Rows[0];
            myCart.Insert(new cartItem(Int32.Parse(id),
                row["product_name"].ToString(), 
                row["product_images"].ToString(), 
                row["product_desc"].ToString(),
                Double.Parse(row["product_price"].ToString()),
                1));
                
               // myCart = (Cart)Session["myCart"];
           
            

        }

        protected void Page_Load(object sender, EventArgs e)
           

        {
            if (!Page.IsPostBack)
            {
                string id = Request.QueryString["ID"];
                if(id != null)
                {
                    d1.DataSource = DataAccess.selectQuery("SELECT * FROM product where id="+ id);
                    d1.DataBind();
                }
            }

            //if (!Page.IsPostBack)
            //{


                //    if (Request.QueryString["id"] == null)
                //    {
                //        Response.Redirect("display_item.aspx");
                //    }
                //    else
                //    {
                //        id = Convert.ToInt32(Request.QueryString["id"].ToString());
                //        con.Open();
                //        SqlCommand cmd = con.CreateCommand();
                //        cmd.CommandType = CommandType.Text;
                //        cmd.CommandText = "SELECT * FROM product where id=" + id + "";
                //        cmd.ExecuteNonQuery();
                //        DataTable dt = new DataTable();
                //        SqlDataAdapter da = new SqlDataAdapter(cmd);
                //        da.Fill(dt);
                //        d1.DataSource = dt;
                //        d1.DataBind();

                //        con.Close();
                //    }

                //}
        }

    }
}