using RoyalLibraryApi.Models;
using RoyalLibraryApi.Repository;

namespace RoyalLibraryApi.Service
{
    public class BookService : IBookService
    {
        private IBookReposity bookReposity;

        public BookService(IBookReposity bookReposity)
        {
            this.bookReposity = bookReposity;
        }

        public async Task<IEnumerable<Book>> SearchBook(SearchType type, string value)
        {
            switch (type) 
            {
                case SearchType.Autor:
                    return await bookReposity.SearchByAuthor(value);
                case SearchType.ISBN:
                    return await bookReposity.SearchByIsbn(value);
                case SearchType.General:
                    return await bookReposity.GeneralSearch(value);
                case SearchType.None:
                default:
                    return await bookReposity.GetAll();
            }
        }
    }
}
