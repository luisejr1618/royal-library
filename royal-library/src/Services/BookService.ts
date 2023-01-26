import SearchType from "../Models/SearchType";


export const SearchBook = (type: SearchType, value: string) =>
{
    const url = 'https://localhost:7225';
    return fetch(`${url}/RoyalLibrary/book-search/${type}/${value}`)
     .then(result => result.json());
}   