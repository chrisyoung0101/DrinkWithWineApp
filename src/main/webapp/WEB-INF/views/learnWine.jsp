<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Profile</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/pairingHistory.css" />
        <link rel="stylesheet" href="assets/css/grid.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" 
		integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
		
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
  color: #ED7869 !important;
}

/* selected link */
a:active {
  color: grey;
}
</style>
		
    </head>
<!-- <body style="background-image: linear-gradient(to right, #D3D3D3, #ed786a);"> -->	
<body style="background-color: #8D1C51;">	



							<nav  style="text-align: center; padding-bottom: 20px;">
								
								
								
											<a href="/profile" style="color: white; font-size: 16px;"><i class="fas fa-angle-right"></i> Your Account </a>
											<a href="/learnWine" style="color: white; font-size: 16px;"><i class="fas fa-angle-right"></i> Learn Wine </a>
											<a href="/about_us" style="color: white; font-size: 16px;"><i class="fas fa-angle-right"></i> About Wine App </a>
											<a href="/" style="color: white; font-size: 16px;"><i class="fas fa-angle-right"></i> Sign Out</a>
											
											
								
							</nav>	
			
			<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fas fa-angle-double-up"></i></button>
			

<!-- template  -->
			


<!--  -->

<h4 style="text-align: center; color: white;">Pairing Wine & Food</h4>

<div class="wrapper">
    <div class = "linear">
        <a href="https://winefolly.com/tutorial/getting-started-with-food-and-wine-pairing/" target="_blank">Basics</a>
    </div>
</div>


<div class="wrapper">
    <div>
        <a href="https://www.foodandwine.com/slideshows/15-rules-for-great-wine-and-food-pairings" target="_blank">15 Rules for Great Wine & Food Pairings</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/tutorial/basic-wine-and-food-pairing-chart/" target="_blank">Pairing Chart</a>
    </div>
</div>

<h4 style="color: white;">Grape Varietals</h4>
<h6 style="color: white;">Whites</h6>
<div class="wrapper">
    <div>
        <a href="https://winefolly.com/review/sauvignon-blanc-wine-taste-food-pairing/" target="_blank">Sauvignon Blanc</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/review/3-types-pinot-grigio/" target="_blank">Pinot Grigio</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/chardonnay/" target="_blank">Chardonnay</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/review/the-tasters-guide-to-riesling-wine/" target="_blank">Riesling</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/tutorial/sparkling-wine-explained-dry-to-sweet/" target="_blank">Sparkling</a>
    </div>
</div>
<h6 style="color: white;">Reds</h6>
<div class="wrapper">
    <div>
        <a href="https://winefolly.com/pinot-noir/" target="_blank">Pinot Noir</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/review/guide-to-sangiovese-wine/" target="_blank">Sangiovese</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/review/nebbiolo-in-a-nutshell/" target="_blank">Nebbiolo</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/cabernet-sauvignon/" target="_blank">Cabernet Sauvignon</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/review/the-secrets-to-syrah-wine/" target="_blank">Syrah / Shiraz</a>
    </div>
</div>


<h4 style="color: white;">Wine Regions</h4>

<h6 style="color: white;">New World</h6>

<div class="wrapper">
	
	
	
    <div>
        <a href="http://www.winesofargentina.org/argentina/variedades/malbec-torrontes/malbec/" target="_blank">Argentina</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/review/australia-wine-regions-map/" target="_blank">Australia</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://discovercaliforniawines.com/" target="_blank">California, USA</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://www.oregonwine.org/" target="_blank">Oregon, USA</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://www.washingtonwine.org/" target="_blank">Washington, USA</a>
    </div>
</div>

<h6 style="color: white;">Old World</h6>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/review/french-wine-tips/" target="_blank">France</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/review/italian-wine-regions-map/" target="_blank">Italy</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://winefolly.com/review/map-of-spain-wine-regions/" target="_blank">Spain</a>
    </div>
</div>

<div class="wrapper">
    <div>
        <a href="https://www.germanwines.de/tourism/wine-growing-regions/" target="_blank">Germany</a>
    </div>
</div>





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