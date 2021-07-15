<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="img/favicon1.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/ProjectTemplate/css/styles.css" rel="stylesheet" />
        
        <style type="text/css">
        
        .home-banner{
        
        background-image:url(https://cdn.kkday.com/pc-web/assets/img/home_banner/5.jpg);
      
        padding: 120px 0;
        background-position: 50%;
        background-size: cover;
        color: #fff;
        position: relative;
}
.overlap {
background: rgba(51,51,51,.2);
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
        
    h1.title {
    font-size: 3rem;
    line-height: 1.8;
    text-align: center ;
    margin: 60px 0 5px;
    text-shadow: 0 5px 15px rgb(51 51 51 / 10%);
}    

.sub-title {
    font-size: 1rem;
    text-align: center;
    line-height: 1.4;
    margin-top: 0;
    margin-bottom: 24px;
    font-weight: 700;
    opacity: .9;
    text-shadow: 0 5px 15px rgb(51 51 51 / 10%);
}
        
        </style>
        
        
        
       <!-- 浮動icon --> 
 <script language="javascript">
 
    $(function(){
    var div_id='tomeet'; //自訂Div區塊id名稱
    var seat ='up'; //浮動圖片位置 down=緊黏右下角 up=緊黏右上角 或可另用x或y定義
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
        
</head>
<body  >

 <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
			
             <a class="navbar-brand"  href="<c:url value="/"/>"><img src="img/8B2194C5-D69F-424B-B8D5-1BEF50181C5A.png"/></a>  
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    
                    <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">住宿</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">租車</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">活動</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">部落格</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <li><a class="dropdown-item" href="<c:url value="#"/>">特色行程</a></li>
                                <li><a class="dropdown-item" href="<c:url value="/ClientSpEvent"/>">城市觀光</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-info" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-info text-white ms-1 rounded-pill ">0</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="home-banner">
            <div class="overlap">
                <div class="text-center text-white">
                    <h1 class="title">全世界最棒的旅遊體驗</h1>
                    <h5 class="sub-title">帶你深入探索有趣又獨特的旅遊體驗行程</h5>
                </div>
            </div>
        </header>
        <div id="tomeet">
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20210621003.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">木匠兄妹檜木手作體驗</h5>
                                    <!-- Product price-->
                                    $450 - $1280
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20210316063640_qiguY.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"> 頭城休閒農場體驗之旅｜半日/一日遊</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$900</span>
                                    $790
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20180502104607_Q7kaH.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">新旺集瓷陶藝教室｜手拉胚・手捏陶・貼花教學</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$480</span>
                                    $380
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20200904150327_lDCxg.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Mosaic Art Studio・土耳其馬賽克燈 DIY</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $980
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20210621001.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Welcome Bake 手作體驗｜蛋糕＆麵包＆餅乾＆塔類課程</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$680</span>
                                    $580
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20190318074743_pVYE6.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">HUBOX 手作復古工業風燈具 DIY 課程體驗</h5>
                                    <!-- Product price-->
                                    $980 - $2590
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20200505080947_8lxjY.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">TINGS Candle ｜手作香氛蠟燭課程體驗</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$1680</span>
                                    $1580
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="img/20190309124045_d28gj.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">【台灣在地六四設計品牌】圓弧設計銀戒手作體驗</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $2019
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">加入購物車</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>  
        </section>
        
    
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
         <script src="AdminTemplate/vendor/jquery/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/ProjectTemplatejs/scripts.js"></script>
        
        
    
    
    
     <!-- Core plugin JavaScript-->
    <script src="AdminTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="AdminTemplate/js/sb-admin-2.min.js"></script>
</div>
    </div>
    </body>
</html>