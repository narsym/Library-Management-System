<html>
<head>
<style>
.fb-body{
	position:absolute;
	left:0px;
	top:90px;
	width:100%;
	height:645px;
	color:solid black;
}
.loginbox2{
    width: 450px;
    height: 150px;
    background: black;
    color: white;
    top: 85%;
    left: 650px;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding:8px;
}
#form3{
	top:-40px;
	left:425px;
	background-color:black;
	font-family:verdana;
	font-size:20px;
	color:white;
	width:450px;
	height:430px;
	padding:10px;
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
body{
    margin: 0;
    padding: 0;
    background: url(https://farm9.static.flickr.com/8519/29655983081_a270ca0c88_b.jpg);
    background-size: cover;
    background-position:center;
    font-family: sans-serif;
}
#num{WIDTH: 210PX;
    HEIGHT: 40PX;
    BORDER-color: gray;
	BORDER-RADIUS: 12PX;
}

</style>
</head>
<body>
<form action="a1.do">
		<div class="fb-body">
			
			<div id="form3" class="fb-body" >
				<h1>Add Librarian</h1>
				<input placeholder="First Name" type="text" id="namebox" name="fname" />
				<input placeholder="Last Name" type="text" id="namebox" name="lname" /> <br>
				<input placeholder="Email" type="text" id="mailbox" name="email"/><br>
				<input placeholder="Password" type="password" id="mailbox"  name="pass"/><br>
				<input type="date" id="namebox"  name="date"/><br><br>
				<LABEL>MOBILE:</LABEL>
		<SELECT ID="PH" name="ph" required>
			<option value="+91">+91</option>
			<option value="+92">+92</option>
			<option value="+93">+93</option>
			<option value="+94">+94</option>
		</select>
<INPUT TYPE="number" NAME="phno" ID="num" PLACEHOLDER="ENTER YOUR MOBILE NUMBER "  required>
<BR><BR>
<input type="submit" class="button" value="Sign Up" /><br>
</div>
</div>
</form>
<div class="loginbox2">
        <h1>Remove Librarian</h1>
        <form action="a2.do">
            <p>Remove Librarian</p>
            <input type="text" name="id" placeholder="Enter Name"> 
	    
            <input type="submit" name="login" value="Submit">
        </form>
        </div>
</body>
</html>