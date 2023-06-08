using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class ProductQuantity
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public int SizeId { get; set; }
        public int ColorId { get; set; }
        public int Quantity { get; set; }
        public decimal Price { get; set; }

        public virtual ProductColor Color { get; set; }
        public virtual Product Product { get; set; }
        public virtual ProductSize Size { get; set; }
    }
}
