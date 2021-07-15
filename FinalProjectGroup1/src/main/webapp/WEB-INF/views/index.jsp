<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
	Twenty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>On The Way</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/TwentyTemplate/assets/css/noscript.css" /></noscript>
	</head>
	<body class="index is-preload">
	
	
<c:choose>
<c:when test="${not empty CurrentUser}">

<c:set var="currentaccount" scope="session" value="${CurrentUser.account}"/>
<c:set var="currentname" scope="session" value="${CurrentUser.customerName}"/>
<c:set var="loginorout" scope="session" value="登出"/>
</c:when>

<c:otherwise>
<c:set var="currentaccount" scope="session" value="訪客帳號"/>
<c:set var="currentname" scope="session" value="訪客"/>
<c:set var="loginorout" scope="session" value="會員登入"/>
</c:otherwise>
</c:choose>
	
	
	
	
	
	
	
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" class="alt">
					<h1 id="logo"><a href="<c:url value="/"/>">On<span> The Way</span></a></h1>
					<nav id="nav">
						<ul>
							<li class="current"><a href="<c:url value="/"/>">首頁</a></li>
<!-- 							<li class="submenu"> -->
<!-- 								<a href="#">分頁</a> -->
<!-- 								<ul> -->
<!-- 									<li><a href="left-sidebar.html">Left Sidebar</a></li> -->
<!-- 									<li><a href="right-sidebar.html">Right Sidebar</a></li> -->
<!-- 									<li><a href="no-sidebar.html">No Sidebar</a></li> -->
<!-- 									<li><a href="contact.html">Contact</a></li> -->
<!-- 									<li class="submenu"> -->
<!-- 										<a href="#">Submenu</a> -->
<!-- 										<ul> -->
<!-- 											<li><a href="#">Dolore Sed</a></li> -->
<!-- 											<li><a href="#">Consequat</a></li> -->
<!-- 											<li><a href="#">Lorem Magna</a></li> -->
<!-- 											<li><a href="#">Sed Magna</a></li> -->
<!-- 											<li><a href="#">Ipsum Nisl</a></li> -->
<!-- 										</ul> -->
<!-- 									</li> -->
<!-- 								</ul> -->
<!-- 							</li> -->

							<li class="submenu">
								<a href="#">住宿</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>

							<li class="submenu">
<<<<<<< HEAD
								<a href="<c:url value='/wadeClient'/>">租車</a>
=======
								<a href="#">租車</a>
>>>>>>> e10cde8d8da6357096ea8c243bd8b98c4a96bbdb
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>

							<li class="submenu">
								<a href="#">活動</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#">部落格</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#">購物車</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>

							<li id="myAccount" style="visibility:hidden" class="submenu">
								<a>我的帳號</a>
								<ul>
									<li><a href="<c:url value="/elena/gotoCustomerHomePage"/>">會員中心</a></li>
									<li><a href="right-sidebar.html">訂單查詢</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</li>
						
							
							<li id="loginHref" style="visibility:visible"><a href="<c:url value="/elena"/>" class="button primary">登入</a></li>
							<li id="register" style="visibility:visible"><a href="<c:url value="/elena/registration"/>" class="button primary">註冊</a></li>
							<li id="LoginName" style="visibility:hidden">親愛的${currentname}，歡迎回來！</li>
							<li id="logoutHref" style="visibility:hidden"><a href="<c:url value="/elena/logout"/>" class="button primary">登出</a></li>
							
						</ul>
					</nav>
				</header>

			<!-- Banner -->
				<section id="banner">

					<!--
						".inner" is set up as an inline-block so it automatically expands
						in both directions to fit whatever's inside it. This means it won't
						automatically wrap lines, so be sure to use line breaks where
						appropriate (<br />).
					-->
					<div class="inner">

						<header>
							<h2>On The Way</h2>
						</header>
						<p>歡迎來到<strong>On The Way</strong>
						<br />
						在這裡
						<br />
						與你心愛的人一起創造你們的專屬回憶吧！</p>
						<footer>
							<ul class="buttons stacked">
								<li><a href="#main" class="button fit scrolly">了解 On The Way</a></li>
							</ul>
						</footer>

					</div>

				</section>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon solid fa-chart-bar"></span>
						<h2>「旅行是唯一讓你付出，卻能變得更富有的事情。」<br>
						<strong>Travel</strong> is the Only Thing You Buy that Makes You <strong>Richer.</strong>
						<br />
						</h2>
						<br>
						<br>
						<p>放下旅行指南，一切隨緣。不需要思考下一個目的地，隨心所欲。有時候，不小心亂入一間街角的餐廳，都有可能是出乎意料的相遇。往往不在計畫裡的計劃，總會在記憶深處令人回味。
						<br />
						
						<br />
						</p>
					</header>

					<!-- One -->
						<section class="wrapper style2 container special-alt">
							<div class="row gtr-50">
								<div class="col-8 col-12-narrower">

									<header>
										<h2>「旅行是段與自己獨處的時光，既浪漫又艱辛，但旅行能讓人找到自己。｣</h2>
									</header>
									<p>旅行令人著迷，一路上所遇所見都能為內心帶來啟發與改變，那是種源自於心靈，能真切的感受到自我成長與蛻變的過程，讓我們更加成熟更加謙虛更加知足，最終我們將趨近於我們靈魂更深層的自己。</p>
									<br>
									<p>在On The Way, 你可以找到專屬於你的浪漫旅行</p>
									<footer>
										<ul class="buttons">
											<li><a href="#" class="button">我們提供的行程</a></li>
										</ul>
									</footer>

								</div>
								<div class="col-4 col-12-narrower imp-narrower">

									<ul class="featured-icons">
										<li><span class="icon fa-clock"><span class="label">Feature 1</span></span></li>
										<li><span class="icon solid fa-volume-up"><span class="label">Feature 2</span></span></li>
										<li><span class="icon solid fa-laptop"><span class="label">Feature 3</span></span></li>
										<li><span class="icon solid fa-inbox"><span class="label">Feature 4</span></span></li>
										<li><span class="icon solid fa-lock"><span class="label">Feature 5</span></span></li>
										<li><span class="icon solid fa-cog"><span class="label">Feature 6</span></span></li>
									</ul>

								</div>
							</div>
						</section>

					<!-- Two -->
						<section class="wrapper style1 container special">
							<div class="row">
								<div class="col-4 col-12-narrower">

									<section>
										<span class="icon solid featured fa-check"></span>
										<header>
											<h3>This is Something</h3>
										</header>
										<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
									</section>

								</div>
								<div class="col-4 col-12-narrower">

									<section>
										<span class="icon solid featured fa-check"></span>
										<header>
											<h3>Also Something</h3>
										</header>
										<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
									</section>

								</div>
								<div class="col-4 col-12-narrower">

									<section>
										<span class="icon solid featured fa-check"></span>
										<header>
											<h3>Probably Something</h3>
										</header>
										<p>Sed tristique purus vitae volutpat ultrices. Aliquam eu elit eget arcu commodo suscipit dolor nec nibh. Proin a ullamcorper elit, et sagittis turpis. Integer ut fermentum.</p>
									</section>

								</div>
							</div>
						</section>

					<!-- Three -->
						<section class="wrapper style3 container special">

							<header class="major">
								<h2>Next look at this <strong>cool stuff</strong></h2>
							</header>

							<div class="row">
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="images/pic01.jpg" alt="" /></a>
										<header>
											<h3>A Really Fast Train</h3>
										</header>
										<p>Sed tristique purus vitae volutpat commodo suscipit amet sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus vitae volutpat commodo suscipit ullamcorper sed blandit lorem ipsum dolore.</p>
									</section>

								</div>
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="images/pic02.jpg" alt="" /></a>
										<header>
											<h3>An Airport Terminal</h3>
										</header>
										<p>Sed tristique purus vitae volutpat commodo suscipit amet sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus vitae volutpat commodo suscipit ullamcorper sed blandit lorem ipsum dolore.</p>
									</section>

								</div>
							</div>
							<div class="row">
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="images/pic03.jpg" alt="" /></a>
										<header>
											<h3>Hyperspace Travel</h3>
										</header>
										<p>Sed tristique purus vitae volutpat commodo suscipit amet sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus vitae volutpat commodo suscipit ullamcorper sed blandit lorem ipsum dolore.</p>
									</section>

								</div>
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="images/pic04.jpg" alt="" /></a>
										<header>
											<h3>And Another Train</h3>
										</header>
										<p>Sed tristique purus vitae volutpat commodo suscipit amet sed nibh. Proin a ullamcorper sed blandit. Sed tristique purus vitae volutpat commodo suscipit ullamcorper sed blandit lorem ipsum dolore.</p>
									</section>

								</div>
							</div>

							<footer class="major">
								<ul class="buttons">
									<li><a href="#" class="button">See More</a></li>
								</ul>
							</footer>

						</section>

				</article>

			<!-- CTA -->
				<section id="cta">

					<header>
						<h2>Ready to do <strong>something</strong>?</h2>
						<p>Proin a ullamcorper elit, et sagittis turpis integer ut fermentum.</p>
					</header>
					<footer>
						<ul class="buttons">
							<li><a href="#" class="button primary">Take My Money</a></li>
							<li><a href="#" class="button">LOL Wut</a></li>
						</ul>
					</footer>

				</section>

			<!-- Footer -->
				<footer id="footer">

					<ul class="icons">
						<li><a href="#" class="icon brands circle fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands circle fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands circle fa-google-plus-g"><span class="label">Google+</span></a></li>
						<li><a href="#" class="icon brands circle fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon brands circle fa-dribbble"><span class="label">Dribbble</span></a></li>
					</ul>

					<ul class="copyright">
						<li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>

				</footer>

		</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.dropotron.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/TwentyTemplate/assets/js/main.js"></script>

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
var currentUser = "${CurrentUser}";
var customerName = "${CurrentUser.customerName}";

window.onload = function(){

if("${loginSuccess}" == "登入成功!"){
	alert("${name}" + "," + "歡迎回來!");
// 	Swal.fire("${name}" + "," + "歡迎回來!");
}


// 有登入:隱藏登入標籤 & 沒登入:隱藏登出標籤，秀登入標籤
var logoutHref = document.getElementById("logoutHref");
var loginHref = document.getElementById("loginHref");
var myAccount = document.getElementById("myAccount");
var register = document.getElementById("register");
var LoginName = document.getElementById("LoginName");

	if (!customerName) {
			logoutHref.hidden = true;
			myAccount.hidden = true;
			LoginName.hidden = true;
			loginHref.style.visibility = "visible";
			register.style.visibility = "visible";
		}
		if (customerName) {
			logoutHref.style.visibility = "visible";
			myAccount.style.visibility = "visible";
			LoginName.style.visibility = "visible";
			loginHref.style.visibility ="hidden";
			register.style.visibility ="hidden";
			
// 			loginHref.hidden = true;
// 			register.hidden = true;
		}
}
</script>
<!-- <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> -->




	</body>
</html>