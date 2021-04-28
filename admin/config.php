
<?php
  $db_name="news-site";
  $db_user="root";
  $db_host="localhost";
  $db_pass="";
  $conn = mysqli_connect($db_host, $db_user, $db_pass,$db_name); 
  if($conn === false){ 
   die("ERROR: Could not connect. ". mysqli_connect_error());
  }
 
$sys_link="http://localhost/news/";

?>