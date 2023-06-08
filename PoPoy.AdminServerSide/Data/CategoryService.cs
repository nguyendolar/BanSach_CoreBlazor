
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using PoPoy.AdminServerSide.Models;

namespace PoPoy.AdminServerSide.Data
{
    public class CategoryService
    {
        private readonly DBPoPoyContext _context;

        public CategoryService(DBPoPoyContext context)
        {
            _context = context;
        }

        public  List<Category> GetCategoriesAsync()
        {
            List<Category> categories = _context.Categories.ToList();
            return categories;
        }
    }
}
