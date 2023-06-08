using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class Notification
    {
        public Guid Id { get; set; }
        public DateTime Created { get; set; }
        public string Title { get; set; }
        public string Message { get; set; }
        public string DataUrl { get; set; }
        public string Data { get; set; }
        public bool IsRead { get; set; }
        public Guid? UserId { get; set; }

        public virtual AspNetUser User { get; set; }
    }
}
