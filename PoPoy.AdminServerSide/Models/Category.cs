using System;
using System.Collections.Generic;

#nullable disable

namespace PoPoy.AdminServerSide.Models
{
    public partial class Category
    {
        public Category()
        {
            ProductInCategories = new HashSet<ProductInCategory>();
        }

        public int Id { get; set; }
        public int SortOrder { get; set; }
        public int Status { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }

        public virtual ICollection<ProductInCategory> ProductInCategories { get; set; }
    }
}
