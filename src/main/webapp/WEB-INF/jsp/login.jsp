	<!DOCTYPE html>
	<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

	<head>

		<link
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
		rel="stylesheet" />
		<!-- Include roboto.css to use the Roboto web font, material.css to include the theme and ripples.css to style the ripple effect -->
		<link href="dist/css/roboto.min.css" rel="stylesheet" />
		<link href="dist/css/material.min.css" rel="stylesheet" />
		<link href="dist/css/ripples.min.css" rel="stylesheet" />
		<title>Welcome to DockCh</title>

	</head>

	<body>
		<header>
			<div>
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#">Brand</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
								<li><a href="#">Link</a></li>

							</ul>

							<ul class="nav navbar-nav navbar-right">
								<li><a href="#">Link</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Action</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="#">Separated link</a></li>
									</ul>
								</li>
							</ul>
						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>

			</div>

		</header>

		<div class="container">
			<div class="row">
				<div class="col-sm-9 col-xs-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Medical Center</h3>
						</div>
						<div class="panel-body">


							<span>Medical Center Registration </span>
							<a href="#"  data-toggle="modal" data-target="#medi-reg-dialog" class="btn btn-success">Register for Medical Center</a>


						</div>
					</div>		


				</div>

				<div class="col-sm-3 col-xs-12">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Login Here</h3>
						</div>
						<div class="panel-body">
							<form th:action="@{/login}" method="post">
								<div>
									<label> User Name : <input type="text" name="username" />
									</label>
								</div>
								<div>
									<label> Password: <input type="password" name="password" />
									</label>
								</div>
								<div>
									<input type="submit" class="btn btn-primary" value="Login" />
									<a href="javascript:void(0)" class="btn btn-success">Sing In</a>
								</div>
							</form>
						</div>
					</div>		
				</div>
			</div>
		</div>


		<!-- Medical Center Registation Dialog start -->
		<div id="medi-reg-dialog" class="modal fade" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">

						<h4 class="modal-title">Medical Center Registration</h4>
					</div>
					<div class="modal-body">

						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#addMediCenterDiv" aria-controls="addMediCenterDiv" role="tab" data-toggle="tab">Medi Info</a></li>
							<li role="presentation"><a href="#adminInfoDev" aria-controls="profile" role="tab" data-toggle="tab">Admin Information</a></li>
							<li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
						</ul>

						<!--Add Medical Center Form start -->
						<div class="tab-content">
							<div id="addMediCenterDiv" role="tabpanel" class="tab-pane active" >
								<form class="form-horizontal" id="addMediCenterForm" data-toggle="validator"  role="form">
									<br />
									<div class="form-group">
										<label for="inName" class="col-lg-3 control-label">Name</label>
										<div class="col-lg-8">
											<input type="text" class="form-control" id="inName" name="name" placeholder="Hospital Name"  data-error="Name is required" required>
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="form-group">
										<label for="inEmail" class="col-lg-3 control-label">Email</label>
										<div class="col-lg-8">
											<input type="email" class="form-control" name="email"  id="inEmail" placeholder="E-Mail" data-error="Email address is not invalid" required>
											<div class="help-block with-errors"></div>
										</div>
								
													
									</div>

									<div class="form-group">
										<label for="inTp" class="col-lg-3 control-label">T.P.</label>
										<div class="col-lg-8">
											<input type="text" class="form-control" name="tp" id="inTp" placeholder="Contact No"  data-error="Contact No required" required>
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="form-group">
										<label for="inProvince" class="col-lg-3 control-label">Province</label>
										<div class="col-lg-8">
											<select id="inProvince" class="form-control" data-error="Province is required"  placeholder="Contact No"  required >
												<option>Mustard</option>
												<option>Ketchup</option>
												<option>Relish</option>
											</select>
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="form-group">
										<label for="inDistrict" class="col-lg-3 control-label">District</label>
										<div class="col-lg-8">
											<select id="inDistrict" class="form-control" data-toggle="validator"  data-error="District is required" required>
												<option>Mustard</option>
												<option>Ketchup</option>
												<option>Relish</option>
											</select>
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="form-group">
										<label for="inCity" class="col-lg-3 control-label">City</label>
										<div class="col-lg-8">
											<select class="form-control" id="inCity" placeholder="City" data-error="City is required" required >
												<option>Mustard</option>
												<option>Ketchup</option>
												<option>Relish</option>
											</select>
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="form-group">
										<label for="inDiscription" class="col-lg-3 control-label">Discription</label>
										<div class="col-lg-8">
											<textarea class="form-control"  id="inDiscription" rows="6" placeholder="Enter a short discription hospital"></textarea>
										</div>
									</div>



									<div class="form-group">
										<label for="inputLogType" class="col-lg-3 control-label">Logo</label>
										<div class="col-lg-8">
											<div class="btn-group" >
												<img src="images/pro-pic" alt="..." class="img-rounded">

												<label class="col-lg-2 control-label"  for="inLogo">Upload Image</label>
												<div class="col-lg-8">
													<input type="file" class="form-control"  id="inLogo">

													<p class="help-block">Example block-level help text here.</p>
												</div>
											</div>          
										</div>            
									</div>




									<div class="form-group modal-footer">
										<button type="button" class="btn btn-primary" onclick="createMediCenter()">NEXT</button>
									</div>
								</form>
							</div>
							<!--Add Medical Center Form End-->


							<!--Admin infomation Start -->

							<div id="adminInfoDev" role="tabpanel" class="tab-pane" >
								<form class="form-horizontal" role="form" id="adminInfoForm" data-toggle="validator" >
									<br />
									<div class="form-group">
										<label for="userName" class="col-lg-3 control-label">Name</label>
										<div class="col-lg-8">
											<input type="text" class="form-control" id="userName" placeholder="Admin Name" required>
												<div class="help-block with-errors"></div>
										</div>

									</div>
									<div class="form-group">
										<label for="email" class="col-lg-3 control-label">Email</label>
										<div class="col-lg-8">
											<input type="email" class="form-control" id="email" placeholder="Email" required>
												<div class="help-block with-errors"></div>
										</div>
									</div>
									
									<div class="form-group">
										<label for="password" class="col-lg-3 control-label">Password</label>
										<div class="col-lg-8">
											<input type="password" class="form-control" id="password" placeholder="Password" required>
												<div class="help-block with-errors"></div>
										</div>
									</div>
									<div>
										<div class="form-group">
											<label for="conPassword" class="col-lg-3 control-label">Con Password</label>
											<div class="col-lg-8">
												<input type="password" class="form-control" id="conPassword" placeholder="Password" required>
													<div class="help-block with-errors"></div>
											</div>
										</div>
										<div class="form-group">
											<label for="tp" class="col-lg-3 control-label">TP</label>
											<div class="col-lg-8">
												<input type="text" class="form-control" id="tp" placeholder="Mobile" required>
													<div class="help-block with-errors"></div>
											</div>
										</div>

										<div class="modal-footer form-group">
												<button type="submit" class="btn btn-primary">Finish</button>
										</div>


									</form>



								</div>





								<!--Admin information Stop -->
							</div>



						</div>

					</div>
				</div>
			</div>

			<!-- Medical Center Registation Dialog End -->
			<footer>

				© Company 2013
			</footer>







			<!-- Your site ends -->

			<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
			<script
			src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

			<script src="dist/js/ripples.min.js"></script>
			<script src="dist/js/material.min.js"></script>
			<script src="dist/js/validator.min.js"></script>
			<script src="js/hello.js"></script>
			<script>
				$(document).ready(function() {
				// This command is used to initialize some elements and make them work properly
				$.material.init();
			});
			</script>

		</body>

		</html>
