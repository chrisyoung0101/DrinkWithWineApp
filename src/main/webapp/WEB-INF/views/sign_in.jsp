<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- below is Spring Form  -->
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>SIGN IN</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="/">Sign In</a></h1>
							<p></p>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a class="icon fa-home" href="/"><span>Introduction</span></a></li>
									<li>
										<a href="#" class="icon fa-bar-chart-o"><span>Dropdown</span></a>
										<ul>
											<li><a href="#">Lorem ipsum dolor</a></li>
											<li><a href="#">Magna phasellus</a></li>
											<li><a href="#">Etiam dolore nisl</a></li>
											<li>
												<a href="#">Phasellus consequat</a>
												<ul>
													<li><a href="#">Magna phasellus</a></li>
													<li><a href="#">Etiam dolore nisl</a></li>
													<li><a href="#">Phasellus consequat</a></li>
												</ul>
											</li>
											<li><a href="#">Veroeros feugiat</a></li>
										</ul>
									</li>
									<li><a class="icon fa-cog" href="left-sidebar.html"><span>Left Sidebar</span></a></li>
									<li><a class="icon fa-retweet" href="right-sidebar.html"><span>Right Sidebar</span></a></li>
									<li><a class="icon fa-sitemap" href="no-sidebar.html"><span>No Sidebar</span></a></li>
								</ul>
							</nav>

					</div>
				</section>

			<!-- Features -->
				<section id="features">
					<div class="container">
				
						<div class="row aln-center">
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
                                <div class="col-6 col-12-medium">
                                    <section>
                                        <form:form action="signInCustomer" method="POST" modelAttribute="customer" class="form" id="form1">
                                            <div class="row gtr-50">
                                                
                                                <div class="col-6 col-12-small">
                                                    <input name="email" placeholder="email" type="text" id="email" />
                                                </div>
                                                <div class="col-6 col-12-small">
                                                    <input name="password" placeholder="password" type="password" />
                                                </div>
                                                
                                                
                                                <div class="col-6 col-12-small">
                                                </div>
                                                
                                                <!-- <div class="col-12">
                                                    <a type="submit" value="SEND" class="form-button-submit button">Sign Up</a>
                                                </div> -->
                                                <!-- <div class="submit"> -->
                                                <div class="col-12">
        										<input type="submit" value="Sign In" class="form-button-submit button"/>
      											</div>
                                            </div>
                                        </form:form>
                                    </section>
                                </div>

							</div>
							

								
							</div>
							
						</div>
					</div>
				</section>

			<!-- Banner -->
				<section id="banner">
					<div class="container">
						<!-- <p>Use this space for <strong>profound thoughts</strong>.<br />
						Or an enormous ad. Whatever.</p> -->
					</div>
				</section>

				
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>