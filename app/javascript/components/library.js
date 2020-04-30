const myBooks = document.getElementById('myBooks');


let myLibrary = [];
  myLibrary.push(new Book('Kafka on the Shore', 'Murakami', 286, true));
  myLibrary.push(new Book('Dune', 'Frank Herbert', 365, true));
  myLibrary.push(new Book('The Goblet of Fire', 'J.K Rowling', 546, false));

myLibrary.forEach(insertBooks);

function insertBooks(book){
  myBooks.innerHTML = `
    <li>${book.title}</li> 
    <li>${book.author}</li>
    <li>${book.pages}</li>`
}



  
// myBooks.innerHTML = (`<li>${myLibrary[0].title}</li>`)


function Book(title, author, pages, read){
  this.title = title,
  this.author = author,
  this.pages = pages,
  this.read = read
  this.info = function(){
    return `${this.title} was written by ${this.author}. It is ${this.pages} long. Have I read it? ${this.read}`
  }
}


function addBookToLibrary(book){
  return myLibrary.push(book);
}

// addBookToLibrary(dune);
// console.log(myLibrary);
