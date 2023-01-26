using Microsoft.EntityFrameworkCore;
using RoyalLibraryApi.Models;

namespace RoyalLibraryApi.Repository
{
    public class BookRepository : IBookReposity
    {
        private readonly RoyalLibraryContext _context;

        public BookRepository(RoyalLibraryContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Book>> GeneralSearch(string value)
        {
            return await _context.Books.Where(book =>
                    book.First_Name.ToLower().Contains(value.ToLower()) ||
                    book.Last_Name.ToLower().Contains(value.ToLower()) ||
                    book.Title.ToLower().Contains(value.ToLower()) ||
                    (book.Category != null && book.Category.ToLower().Contains(value.ToLower()))
                    ).ToListAsync();
        }

        public async Task<IEnumerable<Book>> GetAll()
        {
            return await _context.Books.ToListAsync();
        }

        public async Task<IEnumerable<Book>> SearchByAuthor(string value)
        {
            return await _context.Books.Where(book =>
                book.First_Name.ToLower().Contains(value.ToLower()) || book.Last_Name.ToLower().Contains(value.ToLower()))
               .ToListAsync();
        }

        public async Task<IEnumerable<Book>> SearchByIsbn(string value)
        {
            return await _context.Books.Where(book =>
                (book.Isbn != null && book.Isbn == value))
               .ToListAsync();
        }
    }
}
