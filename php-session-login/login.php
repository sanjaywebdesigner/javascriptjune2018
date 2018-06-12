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
    <td></td>
  </tr>
</table>

</form>
<?php
session_start();

if (isset($_REQUEST['submit']))
 { 
 
 $user = $_REQUEST['name'];
 echo $user;
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
 
 $sql = "SELECT * FROM users WHERE name='$user'";

  
  $result = $conn->query($sql);
 $row=mysqli_fetch_array($result,MYSQLI_BOTH);
 
 
 
               $user1 = $row['name'];
			   echo $user1;
               if($user != $user1)
               {
                  die("<br />Username is wrong!<br /> ");
               }

               $real_password = $row['passward'];
               if($pass != $real_password)
               {
                     die("<br />Your password is wrong!<br /> ");
               }

               $_SESSION['name']=$user;
               $_SESSION['passward']=$pass;

               header( 'Location: index.php' ) ;
		   }
?>

</body>
</html>