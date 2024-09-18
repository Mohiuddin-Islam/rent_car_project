<?php 

include('vendor/inc/config.php');

$id=$_REQUEST['del'];

  
    $sq="DELETE FROM tms_user WHERE u_id='$id'";
    $delete = mysqli_query($mysqli,$sq);

      if($delete){
        $succ = "Driver Fired";
        header("location:admin-manage-driver.php");
      }else{
          $err = "Try Again Later";
        }




?>