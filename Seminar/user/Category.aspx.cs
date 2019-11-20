using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Seminar.App_Code;

namespace Seminar.user
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Category_ID = Request.QueryString["Category_ID"];
                if (Category_ID != null)
                {
                    d1Category.DataSource = DataAccess.selectQuery("Select * from product where Category_ID=" + Category_ID + "");

                    d1Category.DataBind();
                }

            }
        }
    }
}