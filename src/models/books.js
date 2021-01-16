const mongoose = require("mongoose");

const booksSchema = new mongoose.Schema({
    bookname: {
        type: String, 
        required: true
    }, 
    authorname: {
        type: String,
        required: true
    },
    genre: {
        type: String,
        required: true
    }
})

const Book = new mongoose.model("Book", booksSchema);

module.exports = Book;