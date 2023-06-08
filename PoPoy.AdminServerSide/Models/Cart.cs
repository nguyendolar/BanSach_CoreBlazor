using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class Cart
    {
        public int Id { get; set; }
        public int ProductId { get; set; }
        public int Quantity { get; set; }
        public int ProductVariantQuantity { get; set; }
        public string SizeName { get; set; }
        public int SizeId { get; set; }
        public int ColorName { get; set; }
        public int ColorId { get; set; }
        public decimal Price { get; set; }
        public string PaymentMode { get; set; }
        public Guid UserId { get; set; }
        public DateTime DateCreated { get; set; }
        public decimal TotalPrice { get; set; }
        public double PayPalPayment { get; set; }
        public double VnPayPayment { get; set; }
        public string OrderReference { get; set; }
        public int CheckoutCount { get; set; }
        public int AddressId { get; set; }

        public virtual Address Address { get; set; }
        public virtual Product Product { get; set; }
        public virtual AspNetUser User { get; set; }
    }
}
