<?php
  
 include "config.php";
  if(empty($_FILES['new-image']['name']))
  {
    $image_name= $_POST['old-image'];
  } else{
    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
      $post=$_FILES["new-image"]; 
      $traget_dir = "upload/";
      $target_file =  $traget_dir. basename($_FILES["new-image"]["name"]);
  
      $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
      $name =$_FILES["new-image"]["name"];
      $extensions_arr = array("jpg","jpeg","png","webp");  
      if($_FILES["new-image"]["size"] > 2097125)
      {
       echo" <div class='alert alert-denger'>File size must be 2 MB or lower.</div>";
      }
      $new_name= time()."-".basename($name);
      
      $target="upload/". $new_name;
      $image_name= $new_name;
      
      if(in_array($imageFileType,$extensions_arr) ){
        move_uploaded_file($_FILES['new-image']['tmp_name'],$target);
      } else{
         
          echo "<div class='alert alert-denger'> This extension file not allowed, Plese choose a JPG or PNG file.</div>";
      }
    }
  }
   $post_id= $_POST["post_id"];
  $title=htmlspecialchars($_POST["post_title"]);
 $dec=htmlspecialchars($_POST["postdesc"]);
 $category= htmlspecialchars($_POST["category"]);
 
 $title =mysqli_real_escape_string($conn, $title);
 $dec= mysqli_real_escape_string($conn, $dec);
 $category=mysqli_real_escape_string($conn,  $category);

     $sql = "UPDATE post SET title='{$title}',description='{$dec}', category=$category, post_img='{$image_name}' WHERE post_id={$post_id};";
     
     if($_POST['old_category']!= $_POST["category"])
     {
      $sql .= "UPDATE category SET post=post - 1 WHERE category_id={$_POST['old_category']};";
      $sql .= "UPDATE category SET post=post + 1 WHERE category_id={$_POST['category']};";
     }
      $result= mysqli_multi_query($conn,$sql) or die("query faild");
    if ($result)
    {
            header("Location:{$sys_link}admin/post.php");
    } else{
        echo "<div class='alert alert-denger'> Query Faild.</div>";
    }
?>