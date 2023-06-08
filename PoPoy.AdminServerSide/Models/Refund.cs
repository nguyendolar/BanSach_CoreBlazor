using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class Refund
    {
        public int Id { get; set; }
        public string OrderId { get; set; }
        public DateTime DateRefunded { get; set; }

        public virtual Order Order { get; set; }
    }
}
