<?php 

include('vendor/inc/config.php');

$id=$_REQUEST['del'];

  
    $sq="DELETE FROM tms_contact WHERE id='$id'";
    $delete = mysqli_query($mysqli,$sq);

      if($delete){
        $succ = "Contact Delete";
        header("location:con_contact.php");
      }else{
          $err = "Try Again Later";
        }




?>