using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Seminar
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //NameValueCollection list = new NameValueCollection();
            //list.Add("AJAX in Action", "~/img/Jellyfish.jpg");
            //list.Add("AJAX Bible", "~/img/Koala.jpg");
            //list.Add("my AJAX", "~/img/Lighthouse.jpg");
            //list.Add("AJAX", "~/img/Penguins.jpg");
            //list.Add("Bhai", "~/img/Tulips.jpg");
            //Random r = new Random();
            //int index = r.Next(0, 5);
            //Label1.Text = list.Keys[index].ToString();
            //Textbox1.ImageUrl = list[index].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text;
        }
    }
}