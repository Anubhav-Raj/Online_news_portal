<?php
  if($_SESSION["user_role"]=='0')
  {
    header("Location:{$sys_link}admin/post.php ");
  }
include "config.php";
$ct_id= $_GET['id'];
$sql = "DELETE FROM category WHERE category_id={$ct_id}";
if(mysqli_query($conn,$sql))
{
    header("Location:{$sys_link}admin/category.php ");
}
 else{
     echo "<p style= 'color :red; margin:10px 0;'> cant DELETE the user Record</p>";
 }
  mysqli_close($conn);
?>