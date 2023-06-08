using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class OrderDetail
    {
        public string OrderId { get; set; }
        public int ProductId { get; set; }
        public string OrderIdFromOrder { get; set; }
        public int Quantity { get; set; }
        public string SizeName { get; set; }
        public int ColorName { get; set; }
        public decimal Price { get; set; }
        public double TotalPrice { get; set; }

        public virtual Order OrderIdFromOrderNavigation { get; set; }
        public virtual Product Product { get; set; }
    }
}
