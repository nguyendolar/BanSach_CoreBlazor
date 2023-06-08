using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class Chat
    {
        public Guid Id { get; set; }
        public string Message { get; set; }
        public bool? IsRead { get; set; }
        public string Data { get; set; }
        public DateTime Created { get; set; }
        public Guid? SenderId { get; set; }
        public Guid? ReceiverId { get; set; }

        public virtual AspNetUser Receiver { get; set; }
        public virtual AspNetUser Sender { get; set; }
    }
}
