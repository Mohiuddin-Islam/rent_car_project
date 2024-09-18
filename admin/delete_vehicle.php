<?php 

include('vendor/inc/config.php');

$id=$_REQUEST['del'];

  
    $sq="DELETE FROM tms_vehicle  WHERE v_id='$id'";
    $delete = mysqli_query($mysqli,$sq);

    if($delete){
      $succ = "Vehicle Removed";
      header("location: admin-manage-vehicle.php");
    }else{
        $err = "Try Again Later";
      }



?>