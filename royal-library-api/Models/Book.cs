namespace RoyalLibraryApi.Models
{
    public class Book
    {
        public int Book_id { get; set; }

        public string Title { get; set; }

        public string First_Name { get; set; }

        public string Last_Name { get; set; }

        public int Total_Copies { get; set; }

        public int Copies_In_Use { get; set; }

        public string? Type { get; set; }

        public string? Isbn { get; set; }

        public string? Category { get; set; }
    }
}