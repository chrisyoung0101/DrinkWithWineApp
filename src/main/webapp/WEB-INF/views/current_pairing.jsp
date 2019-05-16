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



	<div id="page-wrapper">

		<!-- <!-- Header
		<section id="header" style="border: 2px solid #ed786a; padding: 30px; background-image: linear-gradient(grey, #ed786a);">
			<div class="container">
			


				<h3 id="logo">
					<a href="/">Current Pairing</a>
				</h3>
				side nav
				<nav id="nav">
					<ul>
						<li><a class="icon fa-home" href="index.jsp"><span>Introduction</span></a></li>
						<li><a href="#" class="icon fa-bar-chart-o"><span>Dropdown</span></a>
							<ul>
								<li><a href="#">Lorem ipsum dolor</a></li>
								<li><a href="#">Magna phasellus</a></li>
								<li><a href="#">Etiam dolore nisl</a></li>
								<li><a href="#">Phasellus consequat</a>
									<ul>
										<li><a href="#">Magna phasellus</a></li>
										<li><a href="#">Etiam dolore nisl</a></li>
										<li><a href="#">Phasellus consequat</a></li>
									</ul></li>
								<li><a href="#">Veroeros feugiat</a></li>
							</ul></li>
						<li><a class="icon fa-cog" href="left-sidebar.html"><span>Left
									Sidebar</span></a></li>
						<li><a class="icon fa-retweet" href="right-sidebar.html"><span>Right
									Sidebar</span></a></li>
						<li><a class="icon fa-sitemap" href="no-sidebar.html"><span>No
									Sidebar</span></a></li>
					</ul>
				</nav>

			</div>
		</section> --> 

		

<div id="page-wrapper">

			<!-- <!-- Header
				<section id="header">
					<div class="container">

						Logo
							
							

						Nav
							

					</div>
				</section>

			Features
			 -->
			
			
			
			
				<section style="border: 2px solid #ed786a; padding: 30px; background-image: linear-gradient(grey, #ed786a);">
					<div class="container">
									
						<header>
							<h3 style="text-align: center; color: white; font-size: 28px;">Great Match!</h3>
                            <h2 style="text-align: center; color: white; font-size: 22px; margin: 0;">   You are pairing :   </i></h2>
                            <h2 style="text-align: center; color: white; font-size: 22px; margin: 0;"><i class="far fa-hand-point-down fa-2x"></i> </h2>
                            <h2 style="text-align: center; color: white; font-size: 28px; margin: 0;">${myWine.getWineName()}</h2>
                            <h2 style="text-align: center; color: white; font-size: 28px; margin: 0;">   • with •  </i></h2>
                            <h2 style="text-align: center; color: white; font-size: 28px; margin: 0;">${myFood.getFoodName()}</h2> 
                            <header>
                            	
                       	</header>
							
							
                        </header>
                        <!-- <article class="box highlight"> -->
                               
                                
                                <div><img src="${myWine.getWineLabel()}" alt="" height="140" width="140" style="margin-left: 5px; border: 6px solid #ebebeb;"/>               <img src="${myFood.getFood_IMG_ID()}" alt="" height="140" width="140" style=" border: 6px solid #ebebeb;" /></div>
                                	
                                  <h1 style="text-align: center; color: white; font-size: 28px; margin: 0;">Total for this pairing : $${total = myWine.getWinePrice() + myFood.getFoodPrice()}</h1>  
                                <ul class="actions">
                                <form:form action="/save" method="POST"  id="form1">
                                    <li><button class="button" onclick="document.getElementById('form1').submit();">Save This Pairing</button></li>
                                    <input type="hidden" name="email" value="${email}"/>
                                    <input type="hidden" name="WineID1" value="${WineID1}"/>
                                    <input type="hidden" name="WineID2" value="${WineID2}"/>
                                </form:form>
                                </ul>
                                
                                <!-- <section id="banner">
                                        <div class="container">
                                            <p></p>
                                        </div>
                                        
                                    </section> -->
                                    
                            <!-- </article> -->
                            
						
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