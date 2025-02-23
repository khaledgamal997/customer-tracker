<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />

    <link
      rel="stylesheet"
      href="node_modules/bootstrap/dist/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="node_modules/font-awesome/css/font-awesome.min.css"
    />
    <link
      rel="stylesheet"
      href="node_modules/bootstrap-social/bootstrap-social.css"
    />
    <link rel="stylesheet" href="css/style.css" />
    <title>Ristorante Con Fusion</title>
  </head>

<body>
	<nav class="navbar navbar-dark navbar-expand-md fixed-top">
		<div class="container">
			<a class="navbar-brand mr-auto" href="./index.html">
				<!--suppress CheckImageSize --> <img src="img/logo.png" alt="logo"
				height="30" width="40" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#Navbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="Navbar">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link active"
						href="./index.html"><span class="fa fa-home"></span>
							Home</a></li>
					<li class="nav-item"><a class="nav-link" href="./aboutus.html"><span
							class="fa fa-info-circle"></span> About</a></li>
					<li class="nav-item"><a class="nav-link" href="#"><span
							class="fa fa-th-list"></span> Menu</a></li>
					<li class="nav-item"><a class="nav-link"
						href="./contactus.html"><span
							class="fa fa-address-card"></span> Contact</a></li>
				</ul>
				<span class="navbar-text pl-md-4"> <a data-toggle="modal"
					data-target="#loginModal" style="cursor: pointer">
						<span class="fa fa-sign-in"></span> Login
				</a>
				</span>
			</div>
		</div>
	</nav>
	<div class="modal fade" id="loginModal" role="dialog">
		<div class="modal-dialog modal-md" role="content">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Login</h4>
					<button type="button" class="close" data-dismiss="modal">
						&times;</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-row">
							<div class="form-group col-sm-4">
								<label class="sr-only" for="exampleInputEmail3">Email
									address</label> <input type="email"
									class="form-control form-control-sm mr-1"
									id="exampleInputEmail3" placeholder="Enter email" />
							</div>
							<div class="form-group col-sm-4">
								<label class="sr-only" for="exampleInputPassword3">Password</label>
								<input type="password" class="form-control form-control-sm mr-1"
									id="exampleInputPassword3" placeholder="Password" />
							</div>
							<div class="col-sm-auto">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" /> <label
										class="form-check-label"> Remember me </label>
								</div>
							</div>
						</div>
						<div class="form-row">
							<button type="button" class="btn btn-secondary btn-sm ml-auto"
								data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary btn-sm ml-1">
								Sign in</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<header class="jumbotron">
		<div class="container">
			<div class="row row-header justify-content-between">
				<div class="col-12 col-md-6">
					<h1>Ristorante con Fusion</h1>
					<p>We take inspiration from the World's best cuisines, and
						create a unique fusion experience. Our lipsmacking creations will
						tickle your culinary senses!</p>
				</div>
				<div class="col-12 col-md-4 align-self-center mb-2">
					<img src="img/logo.png" alt="logo" class="img-fluid" />
				</div>
				<div class="col-12 col-lg-2 align-self-center">
					<a type="button" class="btn btn-warning btn-sm btn-block"
						data-toggle="tooltip" data-html="true"
						title="Or Call us at <br>
              <strong>01099425030</strong>"
						data-placement="bottom" href="#reserve"> Reserve
						Table</a>
				</div>
			</div>
		</div>
	</header>

	<div class="row row-content">
		<div class="col">
			<div class="carousel slide" id="mycarousel" data-ride="carousel">
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img src="img/uthappizza.png" alt="Uthappizza"
							class="d-block img-fluid" />
						<div class="carousel-caption d-none d-md-block">
							<h2>
								Uthappizza <span class="badge badge-danger">HOT!</span> <span
									class="badge badge-pill badge-info">$4.99</span>
							</h2>
							<p class="d-none d-sm-block">A unique combination of Indian
								Uthappam (pancake) and Italian pizza, topped with Cerignola
								olives, ripe vine cherry tomatoes, Vidalia onion, Guntur
								chillies and Buffalo Paneer.</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="img/buffet.png" alt="Buffet" class="d-block img-fluid" />
						<div class="carousel-caption d-none d-md-block">
							<h2>
								Weekend Grand Buffet <span class="badge badge-success">NEW</span>
							</h2>

							<p class="d-none d-sm-block">Featuring mouthwatering
								combinations with a choice of five different salads, six
								enticing appetizers, six main entrees and five choicest
								desserts. Free flowing bubbly and soft drinks. All for just
								$19.99 per person</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="img/alberto.png" alt="Alberto" class="d-block img-fluid" />
						<div class="carousel-caption d-none d-md-block">
							<h2>Alberto Somayya</h2>
							<h4>Executive Chef</h4>
							<p class="d-none d-sm-block">Award winning three-star
								Michelin chef with wide International experience having worked
								closely with whos-who in the culinary world, he specializes in
								creating mouthwatering Indo-Italian fusion experiences.</p>
						</div>
					</div>

					<ol class="carousel-indicators">
						<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
						<li data-target="#mycarousel" data-slide-to="1"></li>
						<li data-target="#mycarousel" data-slide-to="2"></li>
					</ol>
				</div>
			</div>
			<a class="carousel-control-prev" href="#mycarousel" role="button"
				data-slide="prev"> <span
				class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#mycarousel" role="button"
				data-slide="next"> <span
				class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
	<div class="container">
		<div class="row row-content align-items-center">
			<!-- I'm going to apply the classes as column 12, column sm-4, column md-3. So, stating that for extra small screen sizes,
          this will occupy the entire row, for small,
          it will occupy full columns, and then for medium to extra large,
             it will occupy three columns in the row. -->
			<div class="col-12 col-sm-4 order-sm-last col-md-3">
				<h3>Our Lipsmacking Culinary Creations</h3>
			</div>
			<div class="col col-sm order-sm-first col-md">
				<div class="media">
					<img class="d-flex mr-3 img-thumbnail align-self-center"
						src="img/uthappizza.png" alt="Uthappizza" />
					<div class="media-body">
						<h2 class="mt-0">
							Uthappizza <span class="badge badge-danger">HOT!</span> <span
								class="badge badge-pill badge-info">$4.99</span>
						</h2>
						<p class="d-none d-sm-block">A unique combination of Indian
							Uthappam (pancake) and Italian pizza, topped with Cerignola
							olives, ripe vine cherry tomatoes, Vidalia onion, Guntur chillies
							and Buffalo Paneer.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row row-content align-items-center">
			<div class="col-12 col-sm-4 col-md-3">
				<h3>This Month's Promotions</h3>
			</div>
			<div class="col col-sm col-md">
				<div class="media">
					<div class="media-body">
						<h2 class="mt-0">
							Weekend Grand Buffet <span class="badge badge-success">NEW</span>
						</h2>

						<p class="d-none d-sm-block">Featuring mouthwatering
							combinations with a choice of five different salads, six enticing
							appetizers, six main entrees and five choicest desserts. Free
							flowing bubbly and soft drinks. All for just $19.99 per person</p>
					</div>
					<img class="d-flex ml-3 img-thumbnail align-self-center"
						src="img/buffet.png" alt="grand buffet" />
				</div>
			</div>
		</div>

		<div class="row row-content align-items-center">
			<div class="col-12 col-sm-4 order-sm-last col-md-3">
				<h3>Meet our Culinary Specialists</h3>
			</div>
			<div class="col col-sm order-sm-first col-md">
				<div class="media">
					<img class="d-flex mr-3 img-thumbnail align-self-center"
						src="img/alberto.png" alt="Alberto Somayya" />
					<div class="media-body">
						<h2 class="mt-0">Alberto Somayya</h2>
						<h4>Executive Chef</h4>
						<p class="d-none d-sm-block">Award winning three-star Michelin
							chef with wide International experience having worked closely
							with whos-who in the culinary world, he specializes in creating
							mouthwatering Indo-Italian fusion experiences.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-12 col-sm-8">
				<div class="card" id="reserve">
					<h4 class="card-header bg-warning text-white">Resrve a Table</h4>
					<div class="card-body">
						<form action="">
							<div class="row form-group">
								<legend class="col-form-label col-12 col-lg-2 pt-0">
									Number of Guests </legend>
								<div class="col-12 col-lg-10">
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="option1" />
										<label class="form-check-label" for="inlineRadio1">1</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="option2" />
										<label class="form-check-label" for="inlineRadio2">2</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio3" value="option3" />
										<label class="form-check-label" for="inlineRadio3">3</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio4" value="option4" />
										<label class="form-check-label" for="inlineRadio4">4</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio5" value="option5" />
										<label class="form-check-label" for="inlineRadio5">5</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio6" value="option6" />
										<label class="form-check-label" for="inlineRadio6">6</label>
									</div>
								</div>
							</div>
							<div class="row form-group">
								<label class="col-form-label col-12 col-lg-2 pt-0"> Date
									and Time </label>
								<div class="col-12 col-lg-5">
									<input type="date" class="form-control" id="Date" name="date"
										placeholder="Date" />
								</div>
								<div class="col-12 col-lg-5">
									<input type="time" class="form-control" id="time" name="time"
										placeholder="Time" />
								</div>
							</div>
							<div class="form-group row">
								<div class="offset-lg-2 col-lg-10">
									<button class="btn btn-primary">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-4 offset-1 col-sm-2">
					<h5>Links</h5>
					<ul class="list-unstyled">
						<li><a href="./index.html">Home</a></li>
						<li><a href="./aboutus.html">About</a></li>
						<li><a href="#">Menu</a></li>
						<li><a href="./contactus.html">Contact</a></li>
					</ul>
				</div>
				<div class="col-7 col-sm-5">
					<h5>Our Address</h5>
					<address>
						121, Clear Water Bay Road<br /> Clear Water Bay, Kowloon<br />
						HONG KONG<br /> <i class="fa fa-phone fa-lg"></i> : +852 1234
						5678<br /> <i class="fa fa-fax fa-lg"></i> : +852 8765 4321<br />
						<i class="fa fa-envelope fa-lg"></i> : <a
							href="mailto:confusion@food.net">confusion@food.net</a>
					</address>
				</div>
				<div class="col-12 col-sm-4 align-self-center">
					<div class="text-center">
						<a class="btn btn-social-icon" href="https://google.com/+"><i
							class="fa fa-google-plus fa-lg"></i></a> <a
							class="btn btn-social-icon"
							href="https://www.facebook.com/profile.php?id="><i
							class="fa fa-facebook fa-lg"></i></a> <a class="btn btn-social-icon"
							href="https://www.linkedin.com/in/"><i
							class="fa fa-linkedin fa-lg"></i></a> <a class="btn btn-social-icon"
							href="https://twitter.com/"><i
							class="fa fa-twitter fa-lg"></i></a> <a class="btn btn-social-icon"
							href="https://youtube.com/"><i
							class="fa fa-youtube fa-lg"></i></a> <a class="btn btn-social-icon"
							href="mailto:"><i
							class="fa fa-envelope fa-lg"></i></a>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-auto">
					<p>� Copyright 2018 Ristorante Con Fusion</p>
				</div>
			</div>
		</div>
	</footer>
	<script src="node_modules\jquery\dist\jquery.slim.min.js"></script>
	<script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
	<script src="node_modules\bootstrap\dist\js\bootstrap.min.js"></script>
	<script>
      $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
      });
    </script>
</body>
</html>
