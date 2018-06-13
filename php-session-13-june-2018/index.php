<?php 
    session_start();

    $user = $_SESSION['name'];
    $password = $_SESSION['passward'];

    if(!$user && !$password)
    {
       header( 'Location:login.php' ) ;
    }
    else
   {
     
        echo "<div class='navigation'>"
             ."<ul>"
                ."<li>you are loged in</li>"
             ."</ul>"
           ."</div>";
echo"<a href='logout.php'>logout</a><br>";
echo"<a href='myprofile.php'>myprofile</a>";
   }
?>