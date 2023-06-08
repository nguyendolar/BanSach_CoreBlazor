﻿using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class AspNetUserToken
    {
        public Guid UserId { get; set; }
        public string LoginProvider { get; set; }
        public string Name { get; set; }
        public string Value { get; set; }

        public virtual AspNetUser User { get; set; }
    }
}
