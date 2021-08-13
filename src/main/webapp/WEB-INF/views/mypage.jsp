<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>PALETTE</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">		
		    function logoutFn(){
		    	   $.ajax({
		    	      url: "logout.do",
		    	      type:"get",
		    	      success:function(){ 
		    	         location.href="home.do"
		    	      },
		    	     error:function(){alert("error");}	      
		    	   });	   
		    	}		    
		    function goDel(){
		    	var user_id=$("#user_id").val();
	             $.ajax({
	                url : "userDelete.do",
	                 data : {"user_id":user_id},
	                 success : function(data){
	                       location.href="home.do"; 
	                 },       
	                 error : function(){alert("error");}            
	             });
		  	}
		  
	</script>    
  </head>
  <body>
  

    <div class="page">
    <nav id="colorlib-main-nav" role="navigation">
      <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
      <div class="js-fullheight colorlib-table">
        <div class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/bg_1.jpg);"></div>
        <div class="colorlib-table-cell js-fullheight">
          <div class="row no-gutters">
            <div class="col-md-12 text-center">
              <h1 class="mb-4"><a href="home.do" class="logo">palette</a></h1>
              <ul>
              	
              	<jsp:include page="menu.jsp">
                   <jsp:param name="pageSelection" value="5" />
                </jsp:include>
                
              </ul>
            </div>
          </div>
        </div>
      </div>
    </nav>
    
    <div id="colorlib-page">
      <header>
      	<div class="container">
      	
	        <div class="colorlib-navbar-brand">
	          <a class="colorlib-logo" href="home.do">PALETTE</a>
	        </div>
	        <div method="post" action="${cpath}/login.do" class="loginForm">
						<c:choose>
							<c:when test="${vo==null}">
								<a href = "${cpath}/login.do" style="color : white;">Login</a>
							</c:when>
							<c:otherwise>
								<button class="btn" style="color : white;">${vo.user_name}</button>
								<a type="button" style="font-size : 16px" onclick="logoutFn()">Logout</a>
							</c:otherwise>
						</c:choose>
					</div>
	        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
        </div>
      </header>

      <section class="hero-wrap js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/gradation.jpg);">
      	<div class="overlay"></div>
	      <div class="container-fluid px-0">
	        <div class="row no-gutters text align-items-end js-fullheight justify-content-center" data-scrollax-parent="true">
	          <div class="col-md-12 ftco-animate text-center">
	            <!-- <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p> -->
	            <h1 class="bread">mypage</h1>
	          </div>
	        </div>
	      </div>
      </section>

	    <section class="ftco-section ftco-no-pt ftco-no-pb ftco-about ftco-counter">
	    <br>
	    <br>
				<div class="container" style="width: 600px;">
					<div class="panel panel-default">
					
					<!-- 폼 넣을 곳 -->
						
						<form id="frm" method="post" action="${cpath}/userUpdate.do">
						  <fieldset>
						  	<div align="center">
						    <h2><strong>회원정보</strong></h2>
						    </div>
						    <br>
						    <div class="form-group">
						      <label for="staticEmail" class="col-sm-2 col-form-label">ID</label>
						      <input type="text" class="form-control" readonly="readonly" name="user_id" id="user_id" value="${vo.user_id}"  placeholder="${vo.user_id}">     
						      </div>
						    
						    <div class="form-group">
						      <label for="exampleInputPassword1">Password</label>
						      <input type="password" class="form-control" name="user_password" id="user_password" value="${vo.user_password}" placeholder="${vo.user_password}">
						    </div>
						    <div class="form-group">
						      <label for="exampleInputEmail1">name</label>
						      <input type="text" class="form-control" name="user_name" id="user_name" value="${vo.user_name}" placeholder="${vo.user_name}">
						    </div>
						    <div class="form-group">
						      <label for="exampleInputEmail1">age</label>
						      <input type="text" class="form-control" name="user_age" id="user_age" value="${vo.user_age}" placeholder="${vo.user_age}">
						    </div>
						    <div class="form-group">
						      <label for="exampleInputEmail1">gender</label>
						      <input type="text" class="form-control" name="user_gender" id="user_gender" value="${vo.user_gender}" placeholder="${vo.user_gender}">
						    </div>
						    <br>
						    <div align="center">
						    <input type="submit" value="수정" class="btn btn-dark" style="width: 80px;height: 40px;" onclick="updateFn()">
							<input type='button' value='삭제' class="btn btn-dark" style="width: 80px;height: 40px;" onclick="goDel()">	
							<input type='button' value='진단내역' class="btn btn-dark" style="width: 110px;height: 40px;">	
							</div>	    
						  </fieldset>
						</form>
						</div>
						<!-- 폼 넣을 곳 -->						
					</div>
					
				</div>
			</section>
			<br>
			<br>
			<br>

      
      <footer class="ftco-footer ftco-section img">
	    	<div class="overlay"></div>
	      <div class="container">
	        <div class="row mb-5">
	          <div class="col-lg-3">
	            <div class="ftco-footer-widget mb-4">
	              <h2 class="ftco-heading-2 logo"><a href="home.do">PALETTE</a></h2>
	              <p>Color types help stylize makeup, fashion. have you ever thought about your personal colors that perfectly suit your image?</p>
	              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
	                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
	                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
	                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
	              </ul>
	            </div>
	          </div>
	          <div class="col-lg-4">
	            <div class="ftco-footer-widget mb-4">
	              <h2 class="ftco-heading-2">Recent Blog</h2>
	              <div class="block-21 mb-4 d-flex">
	                <a class="blog-img mr-4" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_1.jpg);"></a>
	                <div class="text">
	                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
	                  <div class="meta">
	                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
	                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
	                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
	                  </div>
	                </div>
	              </div>
	              <div class="block-21 mb-4 d-flex">
	                <a class="blog-img mr-4" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_2.jpg);"></a>
	                <div class="text">
	                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
	                  <div class="meta">
	                    <div><a href="#"><span class="icon-calendar"></span> July 12, 2018</a></div>
	                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
	                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <div class="col-lg-2">
	             <div class="ftco-footer-widget mb-4 ml-md-4">
	              <h2 class="ftco-heading-2">Site Links</h2>
	              <ul class="list-unstyled">
	                <li><a href="#" class="py-2 d-block">Home</a></li>
	                <li><a href="#" class="py-2 d-block">About</a></li>
	                <li><a href="#" class="py-2 d-block">Model</a></li>
	                <li><a href="#" class="py-2 d-block">Services</a></li>
	                <li><a href="#" class="py-2 d-block">Blog</a></li>
	              </ul>
	            </div>
	          </div>
	          <div class="col-lg-3">
	            <div class="ftco-footer-widget mb-4">
	            	<h2 class="ftco-heading-2">Have a Questions?</h2>
	            	<div class="block-23 mb-3">
		              <ul>
		                <li><span class="icon icon-map-marker"></span><span class="text">3rd floor 31-15, Yesul-gil, Dong-gu, Gwangju, Republic of Korea</span></li>
		                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+81 10 5315 6111</span></a></li>
		                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">dkdk9998@naver.com</span></a></li>
		              </ul>
		            </div>
	            </div>
	          </div>
	        </div>
	        <div class="row">
	          <div class="col-md-12 text-center">

	            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Why is this working
	  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
	          </div>
	        </div>
	      </div>
	    </footer>

      <!-- loader -->
      <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

      </div>
    </div>


    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    
  </body>
</html>