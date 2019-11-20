using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Seminar.App_Code;

namespace Seminar.user
{
    public partial class Categories : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                d1Menu.DataSource = DataAccess.selectQuery("Select * from Category");
                d1Menu.DataBind();
            }
        }
    }
}