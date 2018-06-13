<?php


session_start();

 $sanjay1 = $_SESSION['name'];
 $sanjay = $_SESSION['passward'];

         if($sanjay && $sanjay1)
         {
		  include "header.php";
          include "divsection.php";
		  include "footer.php";        
         }


         else
         {

  header( 'Location: login.php' ) ;
           }
		   
?>