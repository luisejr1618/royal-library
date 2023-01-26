using RoyalLibraryApi.Models;

namespace RoyalLibraryApi.Repository
{
    public interface IBookReposity
    {
        Task<IEnumerable<Book>> SearchByAuthor(string value);
        Task<IEnumerable<Book>> SearchByIsbn(string value);
        Task<IEnumerable<Book>> GeneralSearch(string value);
        Task<IEnumerable<Book>> GetAll();
    }
}
