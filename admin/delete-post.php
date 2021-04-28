<?php
  
include "config.php";
$postid= $_GET['id'];
 $catid= $_GET['cat_id'];

  $sql1 = "SELECT  *  FROM post WHERE post_id={$postid}";
  $result = mysqli_query($conn, $sql1) or die("query faild");
  $row= mysqli_fetch_assoc($result);
 
   unlink("upload/".$row['post_img']);


$sql = "DELETE FROM post WHERE post_id={$postid};";
$sql .= "UPDATE category SET post=post - 1 WHERE category_id={$catid}";
if(mysqli_multi_query($conn,$sql))
{
   header("Location:{$sys_link}admin/post.php ");
}
 else{
     echo "<p style= 'color :red; margin:10px 0;'> cant DELETE the user Record</p>";
 }
  mysqli_close($conn);
?>
