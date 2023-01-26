import './App.css';
import React, {useState,useEffect} from 'react';
import {SearchBook} from './Services/BookService';
import SearchType from './Models/SearchType';

function App() {

  const[type, setType]= useState();
  const[value, setValue]= useState();
  const[books, setBooks]= useState([]);

  useEffect(() =>
    {
      if(type && value)
        {
            SearchBook(type, value).then((data) =>
            {
                setBooks(data);
            });
        }
    },[type, value]);
  
  return (
    <div className="App">
      <header className="">
      </header>
      <div>
        <h2>Royal Library</h2>
        <div style={{width:400,height:100, margin: "auto" ,border: "solid 1px"}}>
          <label>
            Search By:  
            <select
              name="searchType" 
              onChange={e => setType(e.target.value)}
              defaultValue = {undefined}>
                <option value={SearchType.None}></option>
                <option value={SearchType.Autor}>Author</option>
                <option value={SearchType.ISBN}>ISBN</option>
                <option value={SearchType.General}>Own/love/want</option>
            </select>
          </label>
          <br/>
          <br/>
          <label>
            Search Value:  
            <input name="valueToSearch" onChange={e => setValue(e.target.value)} defaultValue=""/>
          </label>
        </div>
        <br/>
        <br/>

        <div style={{width:"60%",height:400, margin: "auto", border: "solid 1px"}}>
            <h3>Search Results</h3>
            <table>
              <tbody>
                  <tr>
                            <th>Book Title</th>
                            <th>Authors</th>
                            <th>Type</th>
                            <th>ISBN</th>
                            <th>Category</th>
                            <th>Available Copies</th>
                    </tr>
                    {books ? books.map((book, index) => (
                    <tr key={index} className={index}>
                            <td>{book.title}</td>
                            <td>{book.first_Name} {book.last_Name}</td>
                            <td>{book.type}</td>
                            <td>{book.isbn}</td>
                            <td>{book.category}</td>
                            <td>{`${book.copies_In_Use}/${book.total_Copies}`}</td>
                    </tr>
                    )): []}
                  </tbody>
            </table>
        </div>
      </div>
    </div>
  );
}

export default App;
