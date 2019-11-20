using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Seminar.App_Code
{
    public class Carts
    {
        public List<cartItem> Items { get; set; }
        public Carts()
        {
            Items = new List<cartItem>();
        }
        private int ItemIndexOf(int ID)
        {
            foreach (cartItem item in Items)
            {
                if (item.ID == ID)
                {
                    return Items.IndexOf(item);
                }
            }
            return -1;
        }
        public void Insert(cartItem item)
        {
            int index = ItemIndexOf(item.ID);
            if (index == -1)
            {
                Items.Add(item);

            }
            else
            {
                Items[index].product_qty++;
            }
        }
        public void Delete(int rowID)
        {
            Items.RemoveAt(rowID);
        }
        public void Update(int rowID, int Quantity)
        {
            if (Quantity > 0)
            {
                Items[rowID].product_qty = Quantity;

            }
            else
            {
                Delete(rowID);
            }
        }
        public Double GrandTotal
        {
            get
            {
                if (Items == null)
                {
                    return 0;
                }
                else
                {
                    double grandTotal = 0;
                    foreach (cartItem item in Items)
                    {
                        grandTotal += item.product_qty * item.product_price;
                    }
                    return grandTotal;
                }
            }
        }
    }
}