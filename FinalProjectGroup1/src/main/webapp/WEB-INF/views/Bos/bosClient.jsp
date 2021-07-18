<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
	<link rel="stylesheet" href="<c:url value='/TwentyTemplate/assets/css/main.css' />" />
	<noscript>
		<link rel="stylesheet" href="<c:url value='/TwentyTemplate/assets/css/noscript.css' />" />
	</noscript>
<title>Insert title here</title>
</head>
<body class="index is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<h1 id="logo"><a href="index.html">Twenty <span>by HTML5 UP</span></a></h1>
			<nav id="nav">
				<ul>
					<li class="current"><a href="index.html">Welcome</a></li>
					<li class="submenu">
						<a href="#">Layouts</a>
						<ul>
							<li><a href="left-sidebar.html">Left Sidebar</a></li>
							<li><a href="right-sidebar.html">Right Sidebar</a></li>
							<li><a href="no-sidebar.html">No Sidebar</a></li>
							<li><a href="contact.html">Contact</a></li>
							<li class="submenu">
								<a href="#">Submenu</a>
								<ul>
									<li><a href="#">Dolore Sed</a></li>
									<li><a href="#">Consequat</a></li>
									<li><a href="#">Lorem Magna</a></li>
									<li><a href="#">Sed Magna</a></li>
									<li><a href="#">Ipsum Nisl</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li><a href="#" class="button primary">Sign Up</a></li>
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
					<h2>TWENTY</h2>
				</header>
				<p>This is <strong>Twenty</strong>, a free
					<br />
					responsive template
					<br />
					by <a href="http://html5up.net">HTML5 UP</a>.
				</p>
				<footer>
					<ul class="buttons stacked">
						<li><a href="#main" class="button fit scrolly">Tell Me More</a></li>
					</ul>
				</footer>

			</div>

		</section>

		<!-- Main -->
		<article id="main">
			<!-- 部落格標題 -->
			<header class="special container">
				<span class="icon solid fa-chart-bar"></span>
				<h2>As this is my <strong>twentieth</strong> freebie for HTML5 UP
					<br />
					I decided to give it a really creative name.
				</h2>
				<p>Turns out <strong>Twenty</strong> was the best I could come up with. Anyway, lame name aside,
					<br />
					it's minimally designed, fully responsive, built on HTML5/CSS3,
					and, like all my stuff,
					<br />
					released for free under the <a href="http://html5up.net/license">Creative Commons Attribution
						3.0</a> license. Have fun!
				</p>
			</header>

			<!-- 部落格內容 -->
			<section class="wrapper style2 container special-alt">
				<c:forEach items="${beanList}" var="bean">    
					<div class="card mb-3" >
					  <div class="row g-0">
					    <div class="col-md-4">
					      <img src="${bean.pictureString}" class="img-fluid rounded-start" alt="...">
					    </div>
					    <div class="col-md-8 text-dark">
					      <div class="card-body">
					        <h5 class="card-title">${bean.price}  #${bean.seat} ${bean.name}</h5>
					        <p class="card-text">${bean.address}</p>
					        <p class="card-text float-right"><small class="text-muted"><a href="${bean.handbag}">來源</a></small></p>
					      </div>
					    </div>
					  </div>
					</div>
				</c:forEach>
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
				<li>&copy; Untitled</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>

		</footer>

	</div>

	<!-- Scripts -->
	<script src="<c:url value='/TwentyTemplate/assets/js/jquery.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/jquery.dropotron.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/jquery.scrolly.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/jquery.scrollex.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/browser.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/breakpoints.min.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/util.js' />"></script>
	<script src="<c:url value='/TwentyTemplate/assets/js/main.js' />"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
	

</body>
</html>