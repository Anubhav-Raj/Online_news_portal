<?php include "header.php"; 
  if($_SESSION["user_role"]=='0')
  {
    header("Location:{$sys_link}/admin/post.php ");
  }?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="admin-heading">Add New Category</h1>
              </div>
              <div class="col-md-offset-3 col-md-6">
                  <!-- Form Start -->
                  <form action="" method="POST" autocomplete="off">
                      <div class="form-group">
                          <label>Category Name</label>
                          <input type="text" name="cat" class="form-control" placeholder="Category Name" required>
                      </div>
                      <input type="submit" name="save" class="btn btn-primary" value="Save" required />
                  </form>
                  <!-- /Form End -->

                  <?php
                     include "config.php";
                      if(isset($_POST['save']))
                      {
                          $category= htmlspecialchars($_POST["cat"]);
                          $category=mysqli_real_escape_string($conn, $category);
                          $sql = "SELECT category_name FROM category WHERE category_name='$category' ";
                          $result= mysqli_query($conn, $sql) or die("Query faild". mysqli_connect_error());

                          if(mysqli_num_rows($result)>0)
                          {
                               echo "<P style = 'color:red; text-aligin:center; margin:10px 0;'> Category alradey existe</p>";

                          } else
                          {
                               $sql1 ="INSERT INTO `category` (`category_name`) 
                               VALUES ('$category')";
                               if(mysqli_query($conn,$sql1))
                               {
                                  header("Location:{$sys_link}admin/category.php");
                               }
                            }
                        }
                      

                    ?>
              </div>
          </div>
      </div>
  </div>
<?php include "footer.php"; ?>
