<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Profile</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Profile</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body class="homepage is-preload">
    
    
    
    <c:forEach begin="0" end = "9" items="${wineList}" var="wine"> 
		
		<section>
			<ul class="divided">
				<li>
					<!-- Highlight -->
					<article class="box highlight">
						<header>
							<h3>
								<p>${wine.getWineName()}</p>
								<p>$${wine.getWinePrice()} <i class="fas fa-wine-glass-alt"></i> / ${wine.getType()}</p>
								<input type="hidden" name="WineID" value="${wine.getWineID()}">
							</h3>
						</header>
						<a href="#" class="image left"><img
							src="${wine.getWineLabel()}" /></a>
						<p>${wine.getWineDescrip()}</p>
						
						<!-- previous code  -->
						<ul class="actions">
							<%-- <li><a href="/food_suggestion?choice=${wine.getWineName()}"
								class="button icon"><i class="fas fa-angle-double-right"></i> Select & Pair</a></li>
								 --%>
								 <li>
						
								<input type="submit" value="Select & Pair" class="fas fa-angle-double-right"/></li>
						</ul>
						

					</article>

				</li>

			</ul>
		</section>
		
	</c:forEach>
    
    
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.jsp">Strongly Typed</a></h1>
							<p>A responsive HTML5 site template. Manufactured by HTML5 UP.</p>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a class="icon fa-home" href="index.jsp"><span>Introduction</span></a></li>
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
						<header>
							<h2>Gentlemen, behold! This is <strong>Strongly Typed</strong>!</h2>
						</header>
						<div class="row aln-center">
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
										<header>
											<h3>Okay, so what is this?</h3>
										</header>
										<p>This is <strong>Strongly Typed</strong>, a free, fully responsive site template
										by <a href="http://html5up.net">HTML5 UP</a>. Free for personal and commercial use under the
										<a href="http://html5up.net/license">CCA 3.0 license</a>.</p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="images/pic02.jpg" alt="" /></a>
										<header>
											<h3>Nice! What is HTML5 UP?</h3>
										</header>
										<p><a href="http://html5up.net">HTML5 UP</a> is a side project of <a href="http://twitter.com/ajlkn">AJ’s</a> (= me).
										I started it as a way to both test my responsive tools and sharpen up my coding
										and design skills a bit.</p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" /></a>
										<header>
											<h3>What's this built with?</h3>
										</header>
										<p><strong>Responsive Tools</strong> is a simple set of tools for building responsive
										sites and apps. All of my templates at <a href="http://html5up.net">HTML5 UP</a> are built using these tools.</p>
									</section>

							</div>
							<div class="col-12">
								<ul class="actions">
									<li><a href="/register" class="button icon fa-file">Register</a></li>
									<li><a href="/sign_in" class="button icon fa-file">Sign In</a></li>
									<li><a href="/about_us" class="button icon fa-file">About Us</a></li>
									
									
			
			
			
								</ul>
							</div>
						</div>
					</div>
				</section>

			<!-- Banner -->
				<section id="banner">
					<div class="container">
						<p>Use this space for <strong>profound thoughts</strong>.<br />
						Or an enormous ad. Whatever.</p>
					</div>
				</section>

			

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
			<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>

	</body>
</html>
    


