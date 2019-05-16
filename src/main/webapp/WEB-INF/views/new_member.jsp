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



<h1 style="text-align: center; font-size: 30px;">Member Benefits<h1>
<h2 style="border: 5px solid grey; padding: 10px;">Members explore an exciting array of offers!  Be the first to know about our Wine Maker Wine Dinners - usually sold out in 24hrs.  Enjoy a 10% discount on all your pairings.  Members also are able to make small pairings (3oz Glass & 1/2 plate) so you can try two pairings in one nite.  Ask you Server for pricing and further details. </h2>

	
	
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