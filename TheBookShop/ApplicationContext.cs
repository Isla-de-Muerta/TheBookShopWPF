using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace TheBookShop
{
    public class ApplicationContext : DbContext
    {
        public DbSet<BookTable> bookTables { get; set; }
        public DbSet<CategoryTable> categoryTables { get; set; }
        public DbSet<ContactTable> contactTables { get; set; }
        public DbSet<SubcatTable> subcatTables { get; set; }
        public DbSet<UserTable> userTables { get; set; }

        public ApplicationContext() : base("Bookshop.db")
        {
        }
    }
}
