using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class Order
    {
        public Order()
        {
            OrderDetails = new HashSet<OrderDetail>();
        }

        public string Id { get; set; }
        public Guid UserId { get; set; }
        public int AddressId { get; set; }
        public DateTime OrderDate { get; set; }
        public decimal TotalPrice { get; set; }
        public string PaymentMode { get; set; }
        public string PaymentGateUrl { get; set; }
        public int OrderStatus { get; set; }
        public int PaymentStatus { get; set; }
        public Guid? ShipperId { get; set; }

        public virtual Address Address { get; set; }
        public virtual AspNetUser Shipper { get; set; }
        public virtual AspNetUser User { get; set; }
        public virtual Refund Refund { get; set; }
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
