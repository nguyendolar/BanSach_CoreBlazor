using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class ProductColor
    {
        public ProductColor()
        {
            ProductQuantities = new HashSet<ProductQuantity>();
        }

        public int Id { get; set; }
        public string ColorName { get; set; }

        public virtual ICollection<ProductQuantity> ProductQuantities { get; set; }
    }
}
