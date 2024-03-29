<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
    .login-form {
        width: 340px;
        margin: 50px auto;
    }
    .login-form form {
        margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
</style>
</head>
  <body background="<?php echo base_url('assets/images/bg1.jpg'); ?>">
    <div class="login-form">
    <form class="form-signin" action="" id="form_register" method="POST" role="form">
        <h2 class="text-center">Sign Up</h2>    
        <div class="input-group">
            <?php echo validation_errors();?>
            <span class="input-group-addon">
              <span class="glyphicon glyphicon-user"></span>
            </span>
            <input type="text" name="firstname" id="firstname" class="form-control" placeholder="First Name" autofocus>
        </div>
        <br>
        <div class="input-group">
            <?php echo validation_errors();?>
            <span class="input-group-addon">
              <span class="glyphicon glyphicon-user"></span>
            </span>
            <input type="text" name="lastname" id="lastname" class="form-control" placeholder="Last Name" autofocus>
        </div>
        <br>
        <div class="input-group">
            <?php echo validation_errors();?>
            <span class="input-group-addon">
              <span class="glyphicon glyphicon-user"></span>
            </span>
            <input type="text" name="company" id="company" class="form-control" placeholder="Company" autofocus>
        </div>
        <br>
        <div class="input-group">
            <?php echo validation_errors();?>
            <span class="input-group-addon">
              <span class="glyphicon glyphicon-envelope"></span>
            </span>
            <input type="email" name="email" id="email" class="form-control" placeholder="E-mail" autofocus>
        </div>
        <br>
        <div class="input-group">
            <?php echo validation_errors();?>
            <span class="input-group-addon">
              <span class="glyphicon glyphicon-user"></span>
            </span>
            <input type="text" name="username" id="username" class="form-control" placeholder="Username" autofocus>
        </div>
        <br>
        <div class="input-group">
          <span class="input-group-addon">
              <span class="glyphicon glyphicon-lock"></span>
            </span>
           <input type="password" name="password" id="password" class="form-control" placeholder="Password">
        </div>
        <br>
        <div class="input-group" style="display:none;">
        <span class="input-group-addon">
              <span class="glyphicon glyphicon-th-list"></span>
            </span>
        
    </div>
      <br><button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
      <br>
      <div class="text-center">Already have account? <a href="<?php echo base_url('index.php/page/login') ?>">Log In</a></div> 
    </div>
        
    </form>
   
</div>
        </div>
      </div>
    </div>
  </body>
</html>

<script type="text/javascript">	
	$('#form_register').submit(function(event) {
		event.preventDefault();

		$.ajax({
			url: '<?=base_url('index.php/register/postdata/usermodel/cek_data')?>',
			type: 'post',
			dataType: 'json',
			data: $('#form_register').serialize(),
		})
		.done(function(output) {
			alert(output.message);
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});
	});

	
</script>