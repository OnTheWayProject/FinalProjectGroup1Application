<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
       <!-- <title>Shop Homepage - Start Bootstrap Template</title>  --> 
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="img/favicon1.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=basePath%>css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="<%=basePath%>vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
    <!-- Core plugin JavaScript-->
    <script src="<%=basePath%>vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<%=basePath%>js/sb-admin-2.min.js"></script>
    
    <!-- Bootstrap core JS-->
         <script src="vendor/jquery/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        

      <!-- ------------------------------------------------ -->     
        
        <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
        
        
       <!-- ??????icon 
 <script language="javascript">
 
    $(function(){
    var div_id='tomeet'; //??????Div??????id??????
    var seat ='up'; //?????????????????? down=??????????????? up=??????????????? ????????????x???y??????
    var nowTop2 =0;
    w = $(window);
    div_left =(parseInt(w.width()) - parseInt($("#"+div_id).width()));
    $("#"+div_id).css('left', div_left);
    if(seat =='down'){
    $("#"+div_id).css('top', w.height() - $("#"+div_id).height());
    }else{
    $("#"+div_id).css('top', 0);
    }
    w.scroll(function(){
    nowHight =parseInt(document.body.scrollTop, 10) ||parseInt(document.documentElement.scrollTop, 10);
    nowTop =parseInt(document.body.scrollTop, 10) ||parseInt(document.documentElement.scrollTop, 10);
    if(seat =='down'){
    $("#"+div_id).css('top', nowTop+(w.height() - $("#"+div_id).height()));
    }else{
    $("#"+div_id).css('top', nowTop);
    }
    nowTop2 =nowTop;
    });
    });
    
  
 </script>
       --> 
 
 <script>

let dataArea = null; 
let restname = null; 
let query = null; 
window.addEventListener('load',function(){

	restname = document.getElementById("restname");
	query = document.getElementById("query");	
	dataArea = document.getElementById("dataArea");
	
	let xhr = new XMLHttpRequest();
	xhr.open('GET', "<c:url value='/findAll' />", true);
	xhr.onreadystatechange = function(){
		if (xhr.readyState == 4 && xhr.status == 200 ){
		   console.log(xhr.responseText);
			dataArea.innerHTML = showData(xhr.responseText);
		}
	};
	
	xhr.send();
	
	query.addEventListener('click', function(){
		let rname = restname.value;
		if (!rname){
			alert('????????????????????????');
			return;
		}
		
		let xhr2 = new XMLHttpRequest();
		xhr2.open('GET', "<c:url value='/findByHotel' />?rname=" + rname);
		xhr2.send();
		xhr2.onreadystatechange=function(){
			if (xhr2.readyState == 4 && xhr2.status == 200){
				if(xhr2.responseText.length <= 2){
				  dataArea.innerHTML = "????????????";
				}else{
				dataArea.innerHTML = showData(xhr2.responseText);
		  }
		}
		
	}
		
	});
		
})
//-------------------------

function showData(textData){
	let stays =  JSON.parse(textData);
	let segment = "<section class='py-5'> <div class='container px-4 px-lg-5 mt-5'><div class='row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center'> ";

	for(n = 0 ; n < stays.length ; n++ ){
		let stay = stays[n];
		let tmpurl1 ="<c:url value='/readSpStay/' />" + stay.number;
    	let tmpurl0 = "<a href='" + tmpurl1 + "'>" + stay.hotel  + "</a>";
    
    	console.log( "tmpurl0",tmpurl0);
      
        
       segment +=	 "<div class='col mb-5'> ";
       segment +=	 "<div class='card h-100'>";
       segment +=	 "<img class='card-img-top' src='" + stay.pictureString +"'/>";
       segment +=	 "<div class='card-body p-4'>";
       segment +=	 "<div class='text-center'>";
		
	//   segment +=	 "<h5 class='fw-bolder'>&nbsp;" + tmpurl0 +"&nbsp;</td>";
	   segment +=	 "<h5 class='fw-bolder'>&nbsp;" + stay.hotel +"&nbsp;</td>";
	   segment +=	 "<br>&nbsp;" + " $ " + stay.price  +"&nbsp;";
	   segment +=	 "</div>";
	   segment +=	 "</div>";
		 

		segment += "<div class='card-footer p-4 pt-0 border-top-0 bg-transparent'>";
		segment += "<div class='text-center'><a class='btn btn-outline-dark mt-auto' href='" + tmpurl1 + "'>????????????</a></div>";
	    segment += "</div>";
	    segment += "</div>";

	segment += "</div>";

	}
	segment += "</div></div> </section>";
//	segment += "</table>";
	return segment;

}


 </script>       
</head>
<body  >

 <!-- Navigation-->
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand"  href="#"><img src="AdminTemplate/img/on my way.png"/></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    
                    
                    <li class="nav-item dropdown">
                            <a class="nav-link " id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><span id="tempBtn">??????</span></a>
                            
                            <script type="text/javascript">
                            tempBtn.addEventListener("click",function(){
                            	document.location.href="http://localhost:8080/FinalProjectGroup1/clientstay";
                            })
                            </script>
                            
                            
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                 <li><a class="dropdown-item" href="<c:url value="/clientstay"/>">????????????</a></li>
                         <!-- 
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">????????????</a></li>
                          -->
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">??????</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">????????????</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">????????????</a></li>
                            </ul>
                        </li>
                        
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">??????</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="/clientevent"/>">????????????</a></li>
                                <li><a class="dropdown-item" href="<c:url value="#"/>">????????????</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">?????????</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">????????????</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">????????????</a></li>
                            </ul>
                        </li>
                        
                        
                    </ul>
                    
                    <form class="col-12 col-lg-auto mb-3 mb-lg-0">
                    <div class="input-group">
                    <input id='restname'  type="search" class="form-control " placeholder="??????..." aria-label="Search" describedby="basic-addon2" >
                    <div class="input-group-append">
                    <button class="btn btn-primary" id='query' type="button" >
                    <i class="fas fa-search fa-sm"></i>
                    </button>
                    </div>
                    </div>
                    </form>
                    &nbsp;&nbsp;&nbsp;
                    
                    
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            ?????????
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- HeaderBanner -->
       
<div >
            <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-indicators">
                <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
              </div>

              <div class="carousel-inner">
                  <div class="carousel-item active">
                      <svg class="bd-placeholder-img" width="100%" height="100%"  aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 1920 500"><image xlink:href="AdminTemplate/img/travelbanner2.png" ></image></svg>
                      
                      
                      <div class="container">
                    <div class="carousel-caption text-start">
                      <h1>?????????????????????</h1>
                      <p>?????????????????????????????????????????????</p>
                    <p><a class="btn btn-md btn-primary" href="<c:url value="#"/>">????????????</a></p>  
                    </div>
                  </div>
                </div>
                <div class="carousel-item">
                    
                  <svg class="bd-placeholder-img" width="100%" height="100%"  aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 1920 500" ><image xlink:href="AdminTemplate/img/taiwan_newbanner.jpg" ></image></svg>
          
                  <div class="container">
                    <div class="carousel-caption">
                      <h1><font color="white">??????????????????</font></h1>
                      <p><font color="white">???????????????????????????</font></p>
                      <p><a class="btn btn-md btn-primary" href="<c:url value="#"/>">????????????</a></p>
                    </div>
                  </div>
                </div>
                <div class="carousel-item">
                  <svg class="bd-placeholder-img" width="100%" height="100%"  aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 1920 500" ><image xlink:href="AdminTemplate/img/taiwan_newbanner2.jpg" ></image></svg>
          
                  <div class="container">
                    <div class="carousel-caption text-end">
                      <h1><font color="white">???????????????</font></h1>
                      <p><font color="white">???????????? ????????????</font></p>
                      <p><a class="btn btn-md btn-primary" href="<c:url value="#"/>">????????????</a></p>
                    </div>
                  </div>
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
        </div> 
    <!-- headerBanner end -->
        <div id="tomeet">
        <!-- Section-->
        
                  <div class="card-body"  id='dataArea' >
       
       
    </div>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
         <script src="vendor/jquery/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        
     <!-- //??????Div??????id??????   ????????????:http://faq.tomeet.net/front/bin/ptdetail.phtml?Part=javascript01 
    <div style="position:absolute;width:61px;height:59px;z-index:20;visibility:visible;left: 87%;top:50%">
    <div style="width:100px; height:80px; border:solid 0px #cccccc">
   
     -->   
   <!-- Sylvia\insertGame 
    <a href="<c:url value='/insertGame' />"> 
    <img border="0" src="img/floating-icon-animation-2.gif" width="160" height="160"></a>
   -->
    
    
     <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
</div>
    
    </body>
</html>