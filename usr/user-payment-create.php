<?php
  session_start();
  include('vendor/inc/config.php');
  include('vendor/inc/checklogin.php');
  check_login();
  $aid=$_SESSION['u_id'];
  //Add Booking

$id = $_REQUEST['v_id'];

  if(isset($_POST['book_vehicle']))

    {
        extract($_POST);
        $sql = "UPDATE tms_vehicle SET v_price = '$v_price', start_date = '$start_date', last_date = '$last_date' WHERE v_id = '$id'";

        $stmt = mysqli_query($mysqli,$sql);

            
                if($stmt)
                {
                    $succ = "Booking Submitted";
                }
                else 
                {
                    $err = "Please Try Again Later";
                }
            }

            $sql1 = $mysqli->query("SELECT * FROM tms_vehicle WHERE v_id = '$id'");
            $row = $sql1->fetch_assoc();
?>
<!DOCTYPE html>
<html lang="en">

<?php include('vendor/inc/head.php');?>

<body id="page-top">
 <!--Start Navigation Bar-->
  <?php include("vendor/inc/nav.php");?>
  <!--Navigation Bar-->

  <div id="wrapper">

    <!-- Sidebar -->
    <?php include("vendor/inc/sidebar.php");?>
    <!--End Sidebar-->
    <div id="content-wrapper">

      <div class="container-fluid">
      <?php if(isset($succ)) {?>
                        <!--This code for injecting an alert-->
        <script>
                    setTimeout(function () 
                    { 
                        swal("Success!","<?php echo $succ;?>!","success");
                    },
                        100);
        </script>

        <?php } ?>
        <?php if(isset($err)) {?>
        <!--This code for injecting an alert-->
        <script>
                    setTimeout(function () 
                    { 
                        swal("Failed!","<?php echo $err;?>!","Failed");
                    },
                        100);
        </script>

        <?php } ?>

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="user-dashboard.php">Dashboard</a>
          </li>
          <li class="breadcrumb-item">Vehicle</li>
          <li class="breadcrumb-item ">Book Vehicle</li>
          <li class="breadcrumb-item active">Confirm Booking</li>
        </ol>
        <hr>
        <div class="card">
        <div class="card-header">
          Confirm Booking
        </div>
        <div class="card-body">
          <!--Add User Form-->
          
          <form method ="post"> 
          <div class="form-group">
                <label for="exampleInputEmail1">Vehicle Price</label>
                <input type="number" value="<?php echo $row['v_price'];?>"  class="form-control" name="v_price">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Booking Start Date</label>
                <input type="date" readonly class="form-control" name="start_date">
            </div>

            <div class="form-group">
                <label for="exampleInputEmail1">Booking Last Date</label>
                <input type="date" class="form-control" id="exampleInputEmail1"  name="last_date">
            </div>
            <div class="form-group" style="display:none">
                <label for="exampleInputEmail1">Book Status</label>
                <input type="text" value="Pending" class="form-control" id="exampleInputEmail1"  name="u_car_book_status">
            </div>
  
            <button type="submit" name="book_vehicle" class="btn btn-success">Confirm Booking</button>
          </form>
          <!-- End Form-->
       
        </div>
      </div>
       
      <hr>
     

      <!-- Sticky Footer -->
      <?php include("vendor/inc/footer.php");?>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-danger" href="admin-logout.php">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="vendor/js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="vendor/js/demo/datatables-demo.js"></script>
  <script src="vendor/js/demo/chart-area-demo.js"></script>
 <!--INject Sweet alert js-->
 <script src="vendor/js/swal.js"></script>

</body>

</html>
