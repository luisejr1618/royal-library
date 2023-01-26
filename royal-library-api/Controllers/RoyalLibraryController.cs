using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RoyalLibraryApi.Models;
using RoyalLibraryApi.Repository;
using RoyalLibraryApi.Service;

namespace RoyalLibraryApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class RoyalLibraryController : ControllerBase
    {
        private readonly ILogger<RoyalLibraryController> _logger;
        private IBookService bookService;

        public RoyalLibraryController( 
            IBookService bookService,
            ILogger<RoyalLibraryController> logger)
        {
            this.bookService = bookService;
            _logger = logger;;
        }


        [HttpGet("book-search/{type}/{value}")]
        public async Task<IActionResult> BookSearch(SearchType type, string value)
        {
            var result = await bookService.SearchBook(type,value);
            return Ok(result);
        }
    }
}