<?php

$servername = "localhost";
$username = "june2018";
$password = "123";
$dbname = "june2018";

// Create connection
$sanjay = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($sanjay->connect_error) {
    die("Connection failed: " . $sanjay->connect_error);
} 
$n1=$_POST['username'];
$p1=$_POST['password'];


                    $june = "INSERT INTO register (username, password)
VALUES ('$n1', '$p1')";

if ($sanjay->query($june) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $june . "<br>" . $sanjay->error;
}


?>
