using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class ProductSize
    {
        public ProductSize()
        {
            ProductQuantities = new HashSet<ProductQuantity>();
        }

        public int Id { get; set; }
        public string SizeName { get; set; }

        public virtual ICollection<ProductQuantity> ProductQuantities { get; set; }
    }
}
