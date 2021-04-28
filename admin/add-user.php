<?php include "header.php"; 
  if($_SESSION["user_role"]=='0')
  {
    header("Location:{$sys_link}admin/post.php ");
  }?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="admin-heading">Add User</h1>
              </div>
              <div class="col-md-offset-3 col-md-6">
                  <!-- Form Start -->
                  <form  action="<?php  $_SERVER['PHP_SELF']; ?>" method ="POST" autocomplete="off">
                      <div class="form-group">
                          <label>First Name</label>
                          <input type="text" name="fname" class="form-control" placeholder="First Name" required>
                      </div>
                          <div class="form-group">
                          <label>Last Name</label>
                          <input type="text" name="lname" class="form-control" placeholder="Last Name" required>
                      </div>
                      <div class="form-group">
                          <label>User Name</label>
                          <input type="text" name="user" class="form-control" placeholder="Username" required>
                      </div>

                      <div class="form-group">
                          <label>Password</label>
                          <input type="password" name="password" class="form-control" placeholder="Password" required>
                      </div>
                      <div class="form-group">
                          <label>User Role</label>
                          <select class="form-control" name="role" >
                              <option value="0">Normal User</option>
                              <option value="1">Admin</option>
                          </select>
                      </div>
                      <input type="submit"  name="save" class="btn btn-primary" value="Save" required />
                  </form>
                   <!-- Form End-->
                    <?php
                     if(isset($_POST['save'])){
                          include "config.php";
                          $fname=htmlspecialchars($_POST["fname"]);
                          $lname=htmlspecialchars($_POST["lname"]);
                          $user= htmlspecialchars($_POST["user"]);
                          $pass= htmlspecialchars($_POST["password"]);
                          $user_role= htmlspecialchars($_POST["role"]);

                          $fname =mysqli_real_escape_string($conn, $fname);
                          $lname= mysqli_real_escape_string($conn, $lname);
                          $user=mysqli_real_escape_string($conn, $user);
                          $pass=mysqli_real_escape_string($conn, md5($pass));
                          $user_role= mysqli_real_escape_string($conn, $user_role);
                     
                          $sql = "SELECT username FROM user WHERE username='$user' ";
                          $result= mysqli_query($conn, $sql) or die("Query faild". mysqli_connect_error());

                          if(mysqli_num_rows($result)>0)
                          {
                               echo "<P style = 'color:red; text-aligin:center; margin:10px 0;'> User alradey existe</p>";
                          } else
                          {
                               $sql1 ="INSERT INTO `user` (`first_name`,`last_name`,`username`,`password`,`role`) 
                               VALUES ('$fname','$lname','$user', '$pass','$user_role')";
                               if(mysqli_query($conn, $sql1))
                               {
                                  header("Location:{$sys_link}admin/users.php");
                               }
                            }
                        }
                    ?>
               </div>
           </div>
       </div>
   </div>
<?php include "footer.php"; ?>
