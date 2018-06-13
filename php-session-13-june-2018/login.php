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
 
require "db.php";
 $sql = "SELECT * FROM users WHERE name='$user'";

  
  $result = $conn->query($sql);
 $row=mysqli_fetch_array($result);
 
 
 
               $user1 = $row['name'];
			   
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