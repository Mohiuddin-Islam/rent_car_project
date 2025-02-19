<!DOCTYPE html>
<html lang="en">

<?php include("vendor/inc/head.php");?>

<body>


  <!-- Navigation -->
 <?php include("vendor/inc/nav.php");?>
  <!-- Page Content -->
  <div class="container p-4 m-4 offset-md-5 col-lg-12">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Contact Us
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.php">Home</a>
      </li>
      <li class="breadcrumb-item active">Contact</li>
    </ol>

    <!-- Content Row -->
    
  <?php 
  require_once "config.php";
  if(isset($_POST['submit'])){
    extract($_POST);

    $sql = "INSERT INTO tms_contact (fname,phone,email,message) VALUES ('$fname','$phone','$email','$message')";

    $insert = mysqli_query($mysqli,$sql);
    if($insert){
      echo "<h3 style= 'color:green'>Thank You for Contact Us</h3>";
    }
  }
  
  ?>



    <div class="row">
      <!-- Map Column -->
      <div class="col-lg-8 mb-4">
        <h3>Send us a Message</h3>
        <form name="sentMessage" novalidate method="post">
          <div class="control-group form-group">
            <div class="controls">
              <label>Full Name:</label>
              <input type="text" class="form-control" name="fname" placeholder="Enter Your Name" id="name" required data-validation-required-message="Please enter your name.">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Phone Number:</label>
              <input type="tel" class="form-control" name="phone" placeholder="Enter Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Email Address:</label>
              <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email Address" required data-validation-required-message="Please enter your email address.">
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Message:</label>
              <textarea rows="10" cols="100" name="message" class="form-control" placeholder="Enter Message Here" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
            </div>
          </div>
          <div id="success"></div>
          <!-- For success/fail messages -->
          <button type="submit" class="btn btn-success" name="submit" >Send Message</button>
        </form>
      </div>
      <!-- Contact Details Column -->
      <div class="col-lg-4 mb-4">
        <h3>Contact Details</h3>
        <p>
          <br>54, Inner Circular-Road,
          Purana Paltan, Scout Market
          <br>
        </p>
        <p>
          <span title="Phone">Contact:</span> +8801567980553
        </p>
        <p>
          <span title="Email">Email:</span>
          <a href="mailto:mail@tms.com">mohiuddincr7@gmail.com
          </a>
        </p>
        <p>
          <span title="Hours">H</span>: Sunday to Friday: 9:00 AM to 8:00 PM
        </p>
      
    </div>
    <!-- /.row -->

    <!-- Contact Form -->
    <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <div class="row">
      

    </div>
    <!-- /.row -->

  </div>
  </div>
  </div>
  </div>
  <!-- /.container -->

  <!-- Footer -->
  <?php include("vendor/inc/footer.php");?>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Contact form JavaScript -->
  <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

</body>

</html>
