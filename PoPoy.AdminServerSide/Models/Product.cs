using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class Product
    {
        public Product()
        {
            Carts = new HashSet<Cart>();
            OrderDetails = new HashSet<OrderDetail>();
            ProductImages = new HashSet<ProductImage>();
            ProductInCategories = new HashSet<ProductInCategory>();
            ProductQuantities = new HashSet<ProductQuantity>();
        }

        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public decimal ReviewAverage { get; set; }
        public int CheckoutCount { get; set; }
        public int CategoryId { get; set; }
        public int Views { get; set; }
        public DateTime DateCreated { get; set; }

        public virtual ICollection<Cart> Carts { get; set; }
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
        public virtual ICollection<ProductImage> ProductImages { get; set; }
        public virtual ICollection<ProductInCategory> ProductInCategories { get; set; }
        public virtual ICollection<ProductQuantity> ProductQuantities { get; set; }
    }
}
