 $(function ()
  {$('#fullname').on('keyup',function()
  	{var fullname = $(this).val();
  		var $input=$(this);
  		if (fullname) {$.ajax({

  url:'check.php',
  method:'post',
  data:{fullname: fullname},
  success: function(response){

   response  =$.parseJSON(response);

   if(response.status == 'success')
   {$input.css('border','solid 2px red');
   //	$('#status').text('user exsits !');
   $('#status').html('An account with this username already exsists Would u like to <em> <a href="login/login-user.php">login</a> </em>');

   }
   else{    $input.css('border','solid 2px #2196F3');
            $('#status').text('');
            
   }

   console.log(response)
          }

      });
       
}
   

  	});

	});
$(function ()
{ 
  $.validator.setDefaults({
   errorClass: 'text-danger',
  errorElement: "span",
   highlight: function(element) {
    $(element)
    .closest('.form-control')
    .addClass('is-invalid');
   },
   unhighlight: function(element) {
    $(element)
    .closest('.form-control')
    .removeClass('is-invalid');
   },
   errorPlacement: function(error,element){
    error.insertBefore(element.parent().parent().parent());
   }
  });


$.validator.setDefaults({
   highlight: function(element) {
    $(element)
    .closest('.form-group')
    .addClass('has-error');
   },
   unhighlight: function(element) {
    $(element)
    .closest('.form-group')
    .removeClass('has-error');
   }
  });

$.validator.addMethod( "phoneUS", function( phone_number, element ) {
  phone_number = phone_number.replace( /\s+/g, "" );
  return this.optional( element ) || phone_number.length > 9 &&
    phone_number.match( /^(\+?1-?)?(\([2-9]([02-9]\d|1[02-9])\)|[2-9]([02-9]\d|1[02-9]))-?[2-9]\d{2}-?\d{4}$/ );
}, "Please specify a valid phone number" );

  

  $.validator.addMethod('strongpassword',function(value,element)
  {return this.optional(element)
    || value.length >= 6
    && /\d/.test(value)
    && /[a-z]/i.test(value);
  },"Incorrect Password!");


  $.validator.addMethod("minAge", function(value, element, min) {
    var today = new Date();
    var birthDate = new Date(value);
    var age = today.getFullYear() - birthDate.getFullYear();
    if (age > min+1) {
        return true;
    }
     var m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }
      return age >= min;
}, "You are not old enough!");

$('#password').passtrength({
  minChars: 6
});

$('#password').passtrength({
  passwordToggle:true,
  eyeImg :"img/eye.png" // toggle icon
});

$('#password').passtrength({
  tooltip:false,
  textWeak:"Weak",
  textMedium:"Medium",
  textStrong:"Strong",
  textVeryStrong:"Very Strong",

});



 
  $("#signup").validate({
     
     rules:{
            fullname:{
                      required: true,
                      nowhitespace:true,
                      maxlength:15,
                      minlength:5
                      
                     
                   },
             fullnamereal:{required: true,
                        nowhitespace:true,
                        lettersonly:true,
                        maxlength:20,
                        minlength:6
                        
             },
             licenceno:{required: true,
                        minlength:11
                             

             },
             mobileno:{required: true,
                       phoneUS:true
                   

             },
             age:{required: true,
                  minAge:19

             },
             emailid:{required: true,
                     email:true

             },
             password:{ required: true,
                        strongpassword:true,
                        nowhitespace:true
                                                             
             },
             confirmpass:{
              required: true,
                equalTo: "#password"

             },
             terms:{
              required:true
             }









    },
    messages:{
      fullname:{ required:'Please enter username!',
                 
        
      },
      fullnamereal:{
            required:'Please enter fullname!',
            lettersonly:'Only letters are allowed!'


      },
      licenceno:{
            required:'Please enter licence number! '
           
      },
      mobileno:{
            required:'Please enter phone number!'
            

      },
      age:{
            required:'Please enter age!',
            minAge:'You must be at least 19 years old!'

      },
      emailid:{required:'Please enter email id!',
              email:'Please enter valid email id!'
           

      },
      password:{required:'Please enter password!',
                  strongpassword:'Your password must be at least 6 characters long and contains at least one number and char'
      },            
      confirmpass:{required:'Please Re-enter password!'

           
      },
      terms:'Please accepts Terms and Conditions!'


    }




  });
});


 