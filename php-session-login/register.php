<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>

<form action=' ' method="post">
<table width="200" border="1">
  <tr>
    <td>name</td>
    <td><input type="text" name="name"></td>
  </tr>
 
  <tr>
    <td>passward</td>
    <td><input type="text" name="passward"></td>
  </tr>
  <tr>
    <td><input type="submit" name="submit"></td>
    <td><input type="reset"></td>
  </tr>
</table>

</form>

<?php 


 session_start();
 
if (isset($_REQUEST['submit']))
 {
 $user = $_REQUEST['name'];
 $pass = $_REQUEST['passward'];

 if ($user=="")
 {
     die("<br /> You Forgot to type in the Username for the user !<br /> ");
 }
 if ($pass=="")
 {
     die("<br /> You Forgot to type in the Password for the user !<br /> ");
 }
$servername = "localhost";
$username = "root";
$password = "";
$db = "nidhi";
$table = "users";
 $conn = new mysqli($servername, $username, $password,$db);
 if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql ="INSERT INTO users(name, passward) VALUES ('$user','$pass')";


if (mysqli_query($conn, $sql)) {
    echo "New user created successfully";
	
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
 } 
 ?>
 
</body>
</html>