<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
  color: white;
  text-decoration: none;
}

/* visited link */
a:visited {
  color: white;
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
    <body class="bodyGrid1 homepage is-preload" style="background-color: #8D1C51;">
    
    <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fas fa-angle-double-up"></i></button>
    
    <section id="header">
					<div class="container">

						

						<!-- Nav -->
							<nav id="nav" style="text-align: center; padding-top: 20px;">
								
								
								
											<!-- <a href="/profile"><i class="fas fa-angle-right"></i> Your Account </a> -->
											<a href="/learnWine"><i class="fas fa-angle-right"></i> Learn Wine </a>
											<a href="/about_us"><i class="fas fa-angle-right"></i> About Wine App </a>
											<a href="/"><i class="fas fa-angle-right"></i> Sign Out</a>
											
											
								
							</nav>
							

					</div>
					
					<h1 style="text-align: center; font-size: 36px; color: white;">${loggedInCustomer.getFirstName()}'s Account</h1>
				</section>
    
    <div class="bodyProfile" style="background-color: #8D1C51;">

                   <div class="wrapperProfile" >
                            <header class="headerProfile" style="background-image: url(/FoodWineImg/header1.jpg); background-size: cover; height: 150px; width: 356px; border: 2px solid #ed786a;"></header>
							
							<form:form action="/wine_choice" method="POST" modelAttribute="Customer" id="form1"> 
							<div class="panelProfile" style="background-image: url(/FoodWineImg/wineGlass.jpg); background-size: cover;  height: 150px; width: 150px; border: 2px solid #ed786a; border-radius: 5px !important; cursor: pointer;" onclick="document.getElementById('form1').submit();"></div>
							<input type="hidden" value="${loggedInCustomer.getEmail() }" name="email"/>
							</form:form>
							
							<form:form action="/food_choice" method="POST" modelAttribute="Customer" id="form2"> 
                            <div class="panelProfile" style="background-image: url(/FoodWineImg/chooseDish.jpg); background-size: cover; height: 150px; width: 150px; border: 2px solid #ed786a; border-radius: 5px !important; cursor: pointer;" onclick="document.getElementById('form2').submit();"></div>
                            <input type="hidden" value="${loggedInCustomer.getEmail() }" name="email"/>
                            </form:form>
                            
                            <form:form action="/history" method="POST"  id="form3"> 
                            <footer class="panelProfile" style="background-image: url(/FoodWineImg/yourPairings.jpg); background-size: cover; height: 150px; width: 150px; border: 2px solid #ed786a; border-radius: 5px !important; padding: none !important; cursor: pointer;" onclick="document.getElementById('form3').submit();"></footer>
                   			
                   			<input type="hidden" name="email" value="${email}"/>
                   			
                   			</form:form>
							
                            <!-- <div class="panelProfile" style="background-image: url(/FoodWineImg/wineGlass.jpg); background-size: cover; height: 150px; width: 150px; border: 2px solid #ed786a;"><a href="/wine_choice">Choose Your Wine</a></div> -->
                            <div class="panelProfile tall-panelProfile" style="background-image: url(/FoodWineImg/darkDish.jpg); background-size: cover; height: 355px; width: 150px; border: 2px solid #ed786a;"></div>
                            <div class="panelProfile tall-panelProfile" style="background-image: url(/FoodWineImg/grapes1.jpg); background-size: cover; height: 355px; width: 150px; border: 2px solid #ed786a;"></div>
                            
                            
                            
                            
                            
                            

                            
                            <div class="panelProfile tall-panelProfile" style="background-image: url(/FoodWineImg/corks.jpg); background-size: cover; height: 355px; width: 150px; border: 2px solid #ed786a;"></div>
                            <div class="panelProfile" style="background-image: url(/FoodWineImg/membership.jpg); background-size: cover; height: 150px; width: 150px; border: 2px solid #ed786a;"><a href="/new_member">Member Benefits</a></div>
                            <div class="panelProfile" style="background-image: url(/FoodWineImg/pinot_noir_leaf.jpg); background-size: cover; height: 150px; width: 150px; border: 2px solid #ed786a;"><a href="/learnWine">Learn Wine</a></div>
                            
                            <!-- style="padding: 0px; margin: 0px;" -->
                           
                            
                   			<div class="panelProfile" style="background-image: url(/FoodWineImg/catenaTable.jpg); background-size: cover; height: 150px; width: 150px; border: 2px solid #ed786a;"></div>
                   			
                   			<div class="panelProfile" style="background-image: linear-gradient(grey, #ed786a); border: 2px solid #ed786a; height: 150px; width: 150px;">Wine List</div>
                            <div class="panelProfile" style="background-image: linear-gradient(grey, #ed786a); border: 2px solid #ed786a; height: 150px; width: 150px;">Current Dishes</div>
                   
                    </div>


					

            </div>
    	

        <%-- Hi ${loggedInCustomer.getFirstName()}

        <div class="col-12">
                <ul class="actions boxGrid1 a">
                    <li>${loggedInCustomer.getFavorite() }</li>
                </ul>

                <div class="col-12">
                        <ul class="actions boxGrid1 a">
                            <li>Member Status</li>
                        </ul>
                </div>
        </div>
            
                    <div class="col-12">
                            <ul class="actions boxGrid1 a">
                                <li><a href="/wine_choice" class="button icon fa-file">Choose Wine First</a></li>
                            </ul>
                    </div>

                    <div class="col-12">
                            <ul class="actions boxGrid1 a">
                                <li><a href="/food_choice" class="button icon fa-file">Choose Dish First</a></li>
                            </ul>
                    </div>

                   

                    <div class="col-12">
                            <ul class="actions boxGrid1 a">
                                <li><a href="/new_member" class="button icon fa-file">Become Member</a></li>
                            </ul>
                    </div>
                    
                    
                    <div class="col-12">
								<ul class="actions">
									<li><a href="/" class="button icon fa-file">Sign Out</a></li>
								</ul>
            		
        --%>
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

<script>
(function($) {

	var	$window = $(window),
		$body = $('body');

	// Breakpoints.
		breakpoints({
			xlarge:  [ '1281px',  '1680px' ],
			large:   [ '981px',   '1280px' ],
			medium:  [ '737px',   '980px'  ],
			small:   [ null,      '736px'  ]
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Dropdowns.
		$('#nav > ul').dropotron({
			mode: 'fade',
			noOpenerFade: true,
			hoverDelay: 150,
			hideDelay: 350
		});

	// Nav.

		// Title Bar.
			$(
				'<div id="titleBar" style="padding: 20px;">' + 
					'<a href="#navPanel"  style="padding: 10px;"><i class="fas fa-align-justify fa-2x"></i></a>' +
				'</div>'
			)
				.appendTo($body);

		// Panel.
			$(
				'<div id="navPanel">' +
					'<nav>' +
						$('#nav').navList() +
					'</nav>' +
				'</div>'
			)
				.appendTo($body)
				.panel({
					delay: 500,
					hideOnClick: true,
					hideOnSwipe: true,
					resetScroll: true,
					resetForms: true,
					side: 'left',
					target: $body,
					visibleClass: 'navPanel-visible'
				});

})(jQuery);

</script>

<!-- <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script> -->
        
        
    </body>
</html>