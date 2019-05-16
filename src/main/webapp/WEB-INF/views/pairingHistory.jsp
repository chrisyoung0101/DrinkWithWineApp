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

<body style="background-color: #8D1C51;">

						<nav  style="text-align: center; padding-bottom: 20px;">
								
								
								
											<a href="/profile" style="color: white; font-size: 16px;"><i class="fas fa-angle-right"></i> Your Account </a>
											<a href="/learnWine" style="color: white; font-size: 16px;"><i class="fas fa-angle-right"></i> Learn Wine </a>
											<a href="/about_us" style="color: white; font-size: 16px;"><i class="fas fa-angle-right"></i> About Wine App </a>
											<a href="/" style="color: white; font-size: 16px;"><i class="fas fa-angle-right"></i> Sign Out</a>
											
											
								
							</nav>	

<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fas fa-angle-double-up"></i></button>

		<h1 style="color: white; text-align: center;">Saved Pairings</h1>

<c:forEach varStatus="loop" items="${allFoods}" var="food"> 

			

			<div class="wrapper">
                    <div><i class="fas fa-utensils"></i> ${food.getFoodName()} 
                    <br>
                    <br>
                    <i class="fas fa-wine-glass-alt"></i>   ${allWines.get(loop.index).getWineName()}</div>
            </div>

	
 <%-- <p>
 
 	${food.getFoodName()} ${allWines.get(loop.index).getWineName()} 
 	
 	
 	<img src="${allWines.get(loop.index).getWineLabel()}" height="50" width="50"/>
 	
  </p>
  --%>
 
 
 



</c:forEach>

	
	
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