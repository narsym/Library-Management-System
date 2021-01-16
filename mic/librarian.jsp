<html>
	<head>
	<title>Library Management System</title>
	<style>
	.fb-body{
	position:absolute;
	left:0px;
	top:90px;
	width:100%;
	height:645px;
}
body{
    margin: 0;
    padding: 0;
    background: url(https://farm9.static.flickr.com/8519/29655983081_a270ca0c88_b.jpg);
    background-size: cover;
    background-position:center;
    font-family: sans-serif;
    }
#intro2{
	left:150px;
	top:100px;
	font-family:verdana;
	font-size:30px;
	color:white;
	font-weight:bold;
	height:75px;
	width:500px;
}
#form3{
	top:150px;
	left:150px;
	background-color: solid black;
	font-family:verdana;
	font-size:20px;
	color:#142170;
	width:450px;
	height:495px;
}
#namebox{
	width:200px;
	height:40px;
	border-radius:5px 5px 5px 5px;
	background:white;
	padding:10px;
	font-size:18px;
	margin-top:8px;
	border-width: 1px;
	border-style:solid;
	border-color: gray;
}
#mailbox{
	width:408px;
	height:40px;
	border-radius:5px 5px 5px 5px;
	background:white;
	padding:10px;
	font-size:18px;
	margin-top:8px;
	border-width: 1px;
	border-style:solid;
	border-color: gray;
}
#PH
{WIDTH:50PX;
    HEIGHT: 40PX;
    BORDER-color: gray;
  BORDER-RADIUS: 12PX;
    OUTLINE: 0;
    PADDING: 2PX;
}
#PH1
{WIDTH:90PX;
    HEIGHT: 40PX;
    BORDER-color: gray;
  BORDER-RADIUS: 12PX;
    OUTLINE: 0;
    PADDING: 2PX;
}
.vl {
  border-left: 6px solid black;
  height: 100%;
  position: absolute;
  left: 50%;
  margin-left: -3px;
  top: 90px;
}
#num{WIDTH: 210PX;
    HEIGHT: 40PX;
    BORDER-color: gray;
    BORDER-RADIUS: 12PX;
    PADDING: 5PX;}
#MAIL{width: 363px;
    height: 30px;
    padding: 5px;
    border: gray;
    border-radius: 3px;}
#PASS{
WIDTH:310PX;
HEIGHT:30PX;
BORDER:gray;
BORDER-RADIUS:3PX;
PADDING:5PX;
}
#hem1{
	left:500px;
	top:10px;
	font-family:verdana;
	font-size:35px;
	color:black;
	font-weight:bold;
	height:100px;
	width:600px;
}
.cs{
	position:absolute;
	left:0px;
	margin-top:15px;
	width:100%;
	height:645px;
}
.loginbox{
    width: 300px;
    height: 150px;
    background: black;
    color: white;
    top: 20%;
    left: 70%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding:8px;
}
.loginbox1{
    width: 300px;
    height: 300px;
    background: black;
    color: white;
    top: 53%;
    left: 70%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding:8px;
}
.loginbox2{
    width: 300px;
    height: 150px;
    background: black;
    color: white;
    top: 88%;
    left: 70%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding:8px;
}
</style>
</head>
	<body >
		<div class="vl"></div>
		<form action="l1.do">
		<div class="fb-body">
			<div id="intro2" class="fb-body">Add Customer</div>
			<div id="form3" class="fb-body">
				<input placeholder="First Name" type="text" id="namebox" name="fname" />
				<input placeholder="Last Name" type="text" id="namebox"  name = "lname"/> <br>
				<input placeholder="Email" type="text" id="mailbox" name="email"/><br>
				<input placeholder="Password" type="password" id="mailbox"  name="pass"/><br>
				<input type="date" id="namebox"  name="date"/><br><br>
				<LABEL>MOBILE:</LABEL>
		<SELECT ID="PH" name="phno" required>
			<option value="+91">+91</option>
			<option value="+92">+92</option>
			<option value="+93">+93</option>
			<option value="+94">+94</option>
		</select>
<INPUT TYPE="number" NAME="number" ID="num" PLACEHOLDER="ENTER YOUR MOBILE NUMBER "  required>
<BR><BR>
<LABEL>Type:</LABEL>
		<SELECT ID="PH1" name="type" required>
			<option value="Admin">Admin</option>
			<option value="Librarian">Librarian</option>
			<option value="Customer">Customer</option>
		</select>
<input type="submit" class="button" value="Sign Up" /><br>
</div>
</div>
</form>
<div id="hem1" class="cs">Library Management System</div>
 <div class="loginbox">
        <h1>Remove Customer</h1>
        <form action="l2.do">
            <p>Username</p>
            <input type="text" name="id" placeholder="Enter Customer_id">
            <input type="submit" name="login" value="Submit">
        </form>
    </div>
 <div class="loginbox1">
        <h1>Add Book</h1>
        <form action="l3.do">
            <p>Book-id:</p>
            <input type="text" name="book_id" placeholder="Enter Book-id"> 
	    <p>Book Name</p>
	     <input type="text" name="book_name" placeholder="Enter Book Name"> 
	    <p>Author</p>
	     <input type="text" name="author" placeholder="Author Name"> 
            <input type="submit" name="login" value="Submit">
        </form>
      </div>
	<div class="loginbox2">
        <h1>Remove Book</h1>
        <form action="l4.do">
            <p>Remove Book</p>
            <input type="text" name="book_id" placeholder="Enter Book Name"> 
	    
            <input type="submit" name="login" value="Submit">
        </form>
        </div>
</body>
</html>
