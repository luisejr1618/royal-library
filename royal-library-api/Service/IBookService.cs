using RoyalLibraryApi.Models;

namespace RoyalLibraryApi.Service
{
    public interface IBookService
    {
        Task<IEnumerable<Book>> SearchBook(SearchType type, string value);
    }
}
