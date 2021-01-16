const express = require('express');
const path = require('path');
const hbs = require('hbs');
const app = express();

require("./db/conn");
const Register = require("./models/registers");
const Book = require("./models/books");
const Borrow = require("./models/borrow");
const borrow = require('./models/borrow');


const port = process.env.PORT || 3000;

const static_path = path.join(__dirname, "../public");
const template_path = path.join(__dirname, "../templates/views");
const partial_path = path.join(__dirname, "../templates/partials")

app.use(express.json()); 
app.use(express.urlencoded({extended:false}));

app.use(express.static(static_path));
app.set("view engine", "hbs");
app.set("views", template_path);
hbs.registerPartials(partial_path);

app.get("/", (req, res) => {
    res.render("index");
})

app.get("/register", (req, res) => {
    res.render("register");
})

app.get("/login", (req, res) => {
    res.render("login");
})

app.get("/librarian", (req, res) => {
    res.render("librarian");
})
app.get("/student", (req, res) => {
    res.render("student");
})

app.get("/admin", (req, res) => {
    res.render("admin");
})

// create a new user in our database
app.post("/register", async(req, res) => {
    try{
        const fname = req.body.fname, lname = req.body.lname, email = req.body.email;
        const password = req.body.password, confirmpassword = req.body.confirmpassword, designation = req.body.designation;
        console.log(fname, lname, email, password, confirmpassword);
        if(password === confirmpassword) {
            const registerEmployee = new Register({
                firstname :fname, lastname: lname, designation: designation, email: email, password: password
            })
            const result = await registerEmployee.save();
            res.status(201).render("index");
        }
        else{
            res.send("passwords do not match");
        }
    }catch(e) {
        res.status(400).send(e);
    }
})

app.post("/login", async(req, res) => {
    try{
        const email = req.body.email, password = req.body.password;
        const user = await Register.findOne({email:email});
        if(user.password === password){
            if(user.designation == "student"){
                res.render("student", {
                        studentid: user._id
                });
            }else if(user.designation == "librarian"){
                res.render("librarian");
            }else if(user.designation == "admin") {
                res.render("admin");
            }else {
                res.send("you are no one");
            }
        }else {
            res.send("invaid details");
        }
    }catch(e) {
        res.status(400).send("not found");
    }
})

app.post("/librarian", async(req, res) => {
    try{
        const book = req.body.book, author = req.body.author, genre = req.body.genre;
        const addbook = new Book({
            bookname: book, authorname: author, genre: genre,
        })
        const result = await addbook.save();
        res.render("success", {
            message: "Successfully book added"
        })
        console.log('Added book:',result);
    }catch(e) {
        console.log(e);
    }
})

app.post("/student", async(req, res) => {
    try{
        const book = req.body.book, studentid = req.body.studentid;
        console.log(book, studentid);
        const borrowBook = new Borrow({
            bookname: book,
            studentid: studentid
        })
        const result = await borrowBook.save();
        res.render("success", {
            message: "book borrowed successfully"
        })
        console.log('Updates details: ',result);

    }catch(e) {
        console.log(e);
    }
    
})

app.delete("/lib/:book", async(req, res) => {
    try{
        if(!req.params.book) {
            return res.status(400).send();
        }
        res.statusCode = 200
        const book = req.params.book;
        const bookInst = await Book.findOne({bookname:book})
        const result = await Book.findByIdAndDelete({_id: bookInst._id});
        res.send("Hello");
        console.log('Deleted book: ',result);
    }catch(e) {
        res.send(e);
    }
})

app.delete("/admin/removeLibrarian/:id", async(req, res) => {
    try{
        if(!req.params.id) {
            return res.status(400).send();
        }
        const _id = req.params.id;
        const result = await Register.findByIdAndDelete(_id);
        res.send(result);
        console.log('Deleteing the librarian via admin: ',result);
    }catch(e) {
        res.send(e);
    }
})

app.delete("/student/removeBook/:book", async(req, res) => {
    try{
        if(!req.params.book) {
            return res.status(400).send();
        }
        const book = req.params.book;
        const bookInst = await Borrow.findOne({bookname: book});
        const result = await Borrow.findByIdAndDelete({_id: bookInst._id});
        console.log('Deleteing the book from borrows: ',result);
        res.send(result);
    }catch(e) {
        res.send(e);
    }
})

app.delete("/librarian/removeStudent/:id", async(req, res) => {
    try{
        if(!req.params.id) {
            return res.status(400).send();
        }
        const _id = req.params.id;
        const result = await Register.findByIdAndDelete(_id);
        console.log('Deleteing the student: ',result);
        res.send(result);
    }catch(e) {
        res.send(e);
    }
})


app.listen(port, () => {
    console.log(`server is running at port ${3000}`);
})
