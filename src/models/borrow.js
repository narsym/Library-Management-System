const mongoose = require("mongoose");

const borrowSchema = new mongoose.Schema({
    bookname: {
        type: String, 
        required: true
    }, 
    studentid: {
        type: String,
        required: true
    }
})

const borrow = new mongoose.model("Borrow", borrowSchema);

module.exports = borrow;