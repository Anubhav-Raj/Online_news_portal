<?php
 include  "config.php";
 session_start();
  
  if($_SERVER["REQUEST_METHOD"] == "POST")
  {
    $post=$_FILES["fileToUpload"]; 
    $traget_dir = "upload/";
    $target_file =  $traget_dir. basename($_FILES["fileToUpload"]["name"]);

    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    $name =$_FILES["fileToUpload"]["name"];
    $extensions_arr = array("jpg","jpeg","png","webp");  
    if($_FILES["fileToUpload"]["size"] > 2097125)
    {
     echo" <div class='alert alert-denger'>File size must be 2 MB or lower.</div>";
    }
    $new_name= time()."-".basename($name);
    $target="upload/". $new_name;
   
    if(in_array($imageFileType,$extensions_arr) ){
      move_uploaded_file($_FILES['fileToUpload']['tmp_name'],$target);
    } else{
       
        echo "<div class='alert alert-denger'> This extension file not allowed, Plese choose a JPG or PNG file.</div>";
    }
   
 $title=htmlspecialchars($_POST["post_title"]);
 $dec=htmlspecialchars($_POST["postdesc"]);
 $category= htmlspecialchars($_POST["category"]);
 $date=date("d M, Y ");
 $author=$_SESSION['user_id'];

  $title =mysqli_real_escape_string($conn, $title);
  $dec= mysqli_real_escape_string($conn, $dec);
  $category=mysqli_real_escape_string($conn,  $category);

  $sql = "INSERT INTO post (title,description,category,post_date,author, post_img) VALUES('{$title}','{$dec}',{$category},'{$date}',{$author},'{$new_name}');";
    $sql .= "UPDATE category SET post = post + 1 WHERE category_id = {$category}";


     if(mysqli_multi_query($conn, $sql))
     {
        header("Location:{$sys_link}admin/post.php");
     }  else{
          echo "<div class='alert alert-denger'>Cant run </div>";
     }
                   
  }
?>