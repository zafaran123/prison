<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- Jquery File -->
    <script type="text/javascript" src="jquery/jquery.min.js"></script>
    <!-- Bootstrap js File -->
    <script type="text/javascript" src="bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Bootstrap css File -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/vendor/bootstrap/css/bootstrap.min.css">
	<!-- Data Table Files -->
    <script type="text/javascript" src="datatables.net/js/jquery.datatables.min.js"></script>
    <script type="text/javascript" src="datatables.net-bs/js/jquery.datatables.bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="datatables.net-bs/css/dataTables.bootstrap.min.css">
    <!-- Font Awesome File -->
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.css">
    <!-- CSS File -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/general-css/general-css.css">
</head>
<body style="background-image: url('<?php echo base_url() ?>/assets/img/bg4.jpg');background-repeat: no-repeat;background-size: cover;">
	<div class="container-fluid">
		<div class="row" style="background-color: ;margin-top: 10px;">
			<div class="col-xs-6 col-sm-6 col-md-2">
				
			</div>
			<div class="col-md-7"></div>
			<div class="col-xs-6 col-sm-6 col-md-3" style="padding-top: 25px;">
				<h3 style="color: white;">Login Form</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-9" style="margin-bottom: 20px;">
				
			</div>
			<div class="col-md-3" style="margin-bottom: 20px;">
				<div class="form-container">
					<form class="login-form" autocomplete="off" <?php echo form_open('Admin/', 'role="form"') ?>>
						<div class="row">
							<div class="col-md-12">
								<p style="text-align: center;"><img src="<?php echo base_url() ?>/assets/img/male.png" class="user"></p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label style="color: white;">Username</label>
									<input type="text" name="user_name" placeholder="Enter a valid username" class="form-control" required="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label style="color: white;">Password</label>
									<input type="password" name="pwd" placeholder="Enter password" class="form-control" required="">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
								<p style="color: white;"><input type="checkbox" name="checkbox"> Remember me</p>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6">
								<a href="#" style="color: white;">Forget Password?</a>
							</div>
						</div><br>
						
						<div class="row">
							<div class="col-md-12">
								<input type="submit" name="login" value="login" class="btn btn-danger">
							</div>
						</div><br>
						<div class="row">
							<div class="col-md-12">
								<p style="color: white;">All system users should be registered by Admin</p>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>