
<?php
 include "config.php"; 
session_start();
 
if(isset($_SESSION["username"]))
{
    header("Location:{$sys_link}admin/post.php ");
}

?>

<!doctype html>

<html>
   <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>ADMIN | Login</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css" />
        <link rel="stylesheet" href="font/font-awesome-4.7.0/css/font-awesome.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <div id="wrapper-admin" class="body-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-offset-4 col-md-4">
                    <?php
                     $sql ="SELECT logo FROM settings";
                     $result = mysqli_query($conn, $sql) or die("Query Failed.");
                     if(mysqli_num_rows($result) > 0){
                        while($row = mysqli_fetch_assoc($result)) {
                        
                    ?>
                    <img class="logo"  src="images/<?php  echo $row['logo']; ?>" >
                  <!--  <img  src="images/news.jpg">-->
                    <?php
                        }}
                        ?>
                        <h3 class="heading">Admin</h3>
                        <!-- Form Start -->
                        <form  action="<?php  $_SERVER['PHP_SELF'];?>" method ="POST">
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" name="username" class="form-control" placeholder="" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" placeholder="" required>
                            </div>
                            <input type="submit" name="login" class="btn btn-primary" value="login" />
                        </form>
                        <!-- /Form  End -->
                        <?php
                        if(isset($_POST['login']))
                        {
                            include "config.php";
                             $username= htmlspecialchars($_POST["username"]);
                             $username=mysqli_real_escape_string($conn, $username);
                             $password=htmlspecialchars($_POST["password"]);
                             $password=mysqli_real_escape_string($conn, md5($password));
                             $sql= "SELECT  user_id, username,role  FROM  user WHERE  username='{$username}' AND password='{$password}' ";
                             $result = mysqli_query($conn,$sql) or die ("Query Faild");
                              if(mysqli_num_rows($result) > 0)
                              {
                                     while($row=mysqli_fetch_assoc($result))
                                     {
                                           session_start();
                                           $_SESSION["username"]=$row['username'];
                                           $_SESSION["user_id"]=$row['user_id'];
                                           $_SESSION["user_role"]=$row['role'];
                                           header("Location:{$sys_link}admin/post.php ");
                                     }
                              } else{
                                   echo "<div class='alert  alert-danger'> Username and Password are not Match</div>";
                              }
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>