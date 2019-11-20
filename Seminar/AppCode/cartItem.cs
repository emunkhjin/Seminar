using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Seminar.App_Code
{
    
    public class cartItem
    {
        public int ID { get; set; }
        public string product_name { get; set; }
        public string product_images { get; set; }
        public string product_desc { get; set; }
        public double product_price { get; set; }
        public int product_qty { get; set; }
        public cartItem()
        {

        }
        public cartItem(int ID,string product_name, string product_image, string product_desc, double product_price, int product_qty)
        {
            this.ID = ID;
            this.product_name = product_name;
            this.product_images = product_image;
            this.product_desc = product_desc;
            this.product_price = product_price;
            this.product_qty = product_qty;
        }
    }
}