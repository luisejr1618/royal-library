using Microsoft.EntityFrameworkCore;
using RoyalLibraryApi.Models;

namespace RoyalLibraryApi.Repository
{
    public class RoyalLibraryContext : DbContext
    {
        public RoyalLibraryContext(DbContextOptions<RoyalLibraryContext> options) : base(options)
        {
        }
        public DbSet<Book> Books { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder) 
        {
            modelBuilder.Entity<Book>(entity =>
            {
                entity.HasKey(b => b.Book_id);
            });
        }
    }
}