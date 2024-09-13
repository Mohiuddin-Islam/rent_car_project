<?php 

include('vendor/inc/config.php');

$id=$_REQUEST['del'];

  
    $sq="DELETE FROM tms_user  WHERE u_id='$id'";
    $delete = mysqli_query($mysqli,$sq);

    if($delete){
      $succ = "User Removed";
      header("location: admin-manage-user.php");
    }else{
        $err = "Try Again Later";
      }



?>