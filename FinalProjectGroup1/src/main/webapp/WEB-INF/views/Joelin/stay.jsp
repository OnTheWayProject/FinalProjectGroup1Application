<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <link href="css/styles.css" rel="stylesheet" />
        
        <style type="text/css">
        
        .home-banner{
        
        background-image:url(./AdminTemplate/img/plane6.jpg);
      
        padding: 120px 0;
        background-position: 50%;
        background-size: cover;
        color: rgb(255, 255, 255);
        position: relative;
}
.home-banner2{
        
        background-image:url(./AdminTemplate/img/plane2.jpg);
      
        padding: 120px 0;
        background-position: 50%;
        background-size: cover;
        color: rgb(255, 255, 255);
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
.overlap2 {
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
h1.title2 {
    font-size: 1.5rem;
    line-height: 3.5;
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
        
        
        
       <!-- ??????icon --> 
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
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@900&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@500&family=Tourney:ital,wght@0,600;1,300&display=swap" rel="stylesheet">

</head>
<body>

 <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
			
             <a class="navbar-brand"  href="#"><img src="./AdminTemplate/img/on the way.png"/></a>  
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    
                    <li class="nav-item dropdown">
                            <a class="nav-link " id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">??????</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <!-- <li><a class="dropdown-item" href="#">????????????</a></li>
                                <li><a class="dropdown-item" href="#">????????????</a></li> -->
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link " id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">??????</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <!-- <li><a class="dropdown-item" href="#">????????????</a></li>
                                <li><a class="dropdown-item" href="#">????????????</a></li> -->
                            </ul>
                        </li>
                        
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">??????</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                 <!-- <li><a class="dropdown-item" href="#!">All Products</a></li> -->
                                <!-- <li><hr class="dropdown-divider"/></li> -->
                                <li><a class="dropdown-item" href="#">????????????</a></li>
                                <li><a class="dropdown-item" href="#">????????????</a></li> 
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link " id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">?????????</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <!--    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>-->
                                <!-- <li><a class="dropdown-item" href="#">????????????</a></li>
                                <li><a class="dropdown-item" href="#">????????????</a></li> -->
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
                    <h1 class="title"><font face="Noto Sans TC">?????????????????????????????????</font></h1>
                    <h5 class="sub-title">??????????????????????????????????????????????????????</h5>
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
                            <img class="card-img-top" src="./AdminTemplate/img/Hsinchu.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">??????????????????</h5>
                                     <!-- Product reviews-->
                                     <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        </div>
                                    <!-- Product price-->
                                    $2394 - $4329
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">???????????????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="./AdminTemplate/img/Hsinchu2.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"> ????????????????????? </h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$4000</span>
                                    $3599
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">???????????????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="./AdminTemplate/img/keelung2.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">??????????????????????????????</h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$2500</span>
                                    $1988
                                </div>

                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">???????????????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="./AdminTemplate/img/keelung.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">???????????????????????????</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $2500
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">???????????????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="./AdminTemplate/img/Taoyuan.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">?????????????????????</h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$1500</span>
                                    $1250
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">???????????????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="./AdminTemplate/img/Taipei1.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">?????????????????????</h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        </div>
                                    <!-- Product price-->
                                    $3650 - $7500
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">???????????????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="./AdminTemplate/img/NEWHSINCHU3.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">?????????????????????</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$2680</span>
                                    $2280
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">???????????????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="./AdminTemplate/img/NEWHSINCHU2.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">??????????????????????????? </h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $2999
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-info mt-auto" href="#">???????????????</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>  
        </section>
        
    
        <!-- Footer-->
        <footer  class="home-banner2">
            <div class="overlap2">
            <div class="container"><h1 class="title2"><font face="Tourney">Wish All The Best</font></h1></div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
         <script src="AdminTemplate/vendor/jquery/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        
    
    
    
     <!-- Core plugin JavaScript-->
    <script src="AdminTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="AdminTemplate/js/sb-admin-2.min.js"></script>
</div>
    </div>
    </body>
</html>