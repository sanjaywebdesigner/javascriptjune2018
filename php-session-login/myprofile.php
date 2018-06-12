<?php
session_start();

 $user = $_SESSION['name'];
 $password = $_SESSION['passward'];

         if($user && $password)
         {
                  echo "usrname: ".$user."<br>";
				  echo "password: ".$password."<br>";
         }


         else
         {

  header( 'Location: login.php' ) ;
           }
?>