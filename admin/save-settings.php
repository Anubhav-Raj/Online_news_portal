<?php
include "config.php";

  $website_name=htmlspecialchars($_POST["website_name"]);
  $footer_desc= htmlspecialchars($_POST["footer_desc"]);

  $website_name= mysqli_real_escape_string($conn, $website_name);
  $footer_desc= mysqli_real_escape_string($conn, $footer_desc);
 

  if(empty($_FILES['logo']['name']))
  {
    $name= $_POST['old_logo'];
  } else
    {
      $logo=$_FILES["logo"]; 
      $traget_dir = "images/";
      $target_file =  $traget_dir. basename($_FILES["logo"]["name"]);
   
      $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

      $name =  "news.".$imageFileType;
     
      $extensions_arr = array("jpg","jpeg","png");  
      if($_FILES["logo"]["size"] > 2097125)
      {
       echo" <div class='alert alert-denger'>File size must be 2 MB or lower.</div>";
      }
      if(in_array($imageFileType,$extensions_arr) ){
        move_uploaded_file($_FILES['logo']['tmp_name'],$traget_dir.$name);
      } else{
         
          echo "<div class='alert alert-denger'> This extension file not allowed, Plese choose a JPG or PNG file.</div>";
      }
    }
  
  $sql = "UPDATE settings SET websitename='{$website_name}',logo='{$name}',footerdesc='{$footer_desc}'";

  $result = mysqli_query($conn,$sql);
  
  if($result){
   
    header("Location:{$sys_link}admin/setting.php");


  }else{
    echo "Query Failed";
  }
  
?>