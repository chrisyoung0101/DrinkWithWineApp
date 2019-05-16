<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Wine Choice</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/main.css" />

<style>


#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: #D3D3D3;
  opacity: 0.5;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
  width: 50px;
}

#myBtn:hover {
  background-color: #555;
}

h4,h6 {
	text-align: center;
}

/* unvisited link */
a:link {
  color: black;
  text-decoration: none;
}

/* visited link */
a:visited {
  color: black;
}

/* mouse over link */
a:hover {
  color: #ed786a !important;
}

/* selected link */
a:active {
  color: grey;
}


</style>

</head>
<body class="bodyGrid1" style="background-color: #8D1C51;">

							<nav  style="text-align: center; padding-bottom: 20px;">
								
								
								
											<a href="/profile" style="color: white;"><i class="fas fa-angle-right"></i> Your Account </a>
											<a href="/learnWine" style="color: white;"><i class="fas fa-angle-right"></i> Learn Wine </a>
											<a href="/about_us" style="color: white;"><i class="fas fa-angle-right"></i> About Wine App </a>
											<a href="/" style="color: white;"><i class="fas fa-angle-right"></i> Sign Out</a>
											
											
								
							</nav>
							
						

<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fas fa-angle-double-up"></i></button>
	<!-- <div class="wrapperGrid1"> -->
<h1 id="logo" style="text-align: center; font-size: 36px; padding-bottom: 20px;">Choose a wine</h1>


	<c:forEach begin="0" end = "9" items="${wineList}" var="wine"> 
		<form:form action="addItem" method="POST" modelAttribute="wine_food" class="form" id="form1">
		<section style="border: 2px solid #ed786a; padding: 30px; background-image: linear-gradient(grey, #ed786a);">
			<ul class="divided">
				<li>
					<!-- Highlight -->
					<article class="box highlight">
						<header>
							<h3>
								<p style="text-align: left; color: white; font-size: 28px; margin: 0;">${wine.getWineName()}</p>
								<p style="text-align: left; color: white;">$${wine.getWinePrice()} <i class="fas fa-wine-glass-alt"></i> / ${wine.getType()}</p>
								<input type="hidden" name="WineID" value="${wine.getWineID()}">
								<input type="hidden" name="WineName" value="${wine.getWineName()}">
								<input type="hidden" name="email" value="${email}">
							</h3>
						</header>
						<a href="#" class="image left"><img
							src="${wine.getWineLabel()}" /></a>
						<p style="color: white; font-size: 21px; text-align: justify;">${wine.getWineDescrip()}</p>
						
						<!-- previous code  -->
						<ul class="actions">
							<%-- <li><a href="/food_suggestion?choice=${wine.getWineName()}"
								class="button icon"><i class="fas fa-angle-double-right"></i> Select & Pair</a></li>
								 --%>
								 <li>
							
								<input type="submit" value="Select & Pair" class="fas fa-angle-double-right"/></li>
								
								<br>
						</ul>
						

					</article>

				</li>

			</ul>
		</section>
		<br>
		</form:form>
	</c:forEach>
	

	<script src="" async defer></script>
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