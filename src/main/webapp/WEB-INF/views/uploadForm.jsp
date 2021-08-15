<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="cpath" value ="${pageContext.request.contextPath}"/>

<%
   response.setCharacterEncoding("utf-8");
   String result = request.getParameter("result");
%>

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
                   <jsp:param name="pageSelection" value="3" />
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
	          <a class="colorlib-logo" href="home.do">palette</a>
	        </div>
	        <div method="post" action="${cpath}/login.do" class="loginForm">
						<c:choose>
							<c:when test="${sessionScope.userVO==null}">
								<a href = "${cpath}/login.do" style="color : white;">Login</a>
							</c:when>
							<c:otherwise>
								<button class="btn" color="white" style="color : white;">${sessionScope.userVO.user_name}</button>
								<a type="button" style="font-size : 16px" onclick="logoutFn()">Logout</a> 
							</c:otherwise>
						</c:choose>
					</div>
	        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
        </div>
      </header>

      <section class="hero-wrap js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/bg_5.gif);">
      	<div class="overlay"></div>
	      <div class="container-fluid px-0">
	        <div class="row no-gutters text js-fullheight align-items-end justify-content-center" data-scrollax-parent="true">
	          <div class="col-md-12 ftco-animate text-center">
	            <h1 class="bread">Fashion Color</h1>
	          </div>
	        </div>
	      </div>
      </section>

	    <section class="ftco-section ftco-no-pt ftco-no-pb ftco-about ftco-counter">
	    	<div class="container">
		    	<div class="row no-gutters d-flex">
	    			<div class="col-md-12 col-lg-6 d-flex align-items-stretch">
	    				<div class="img-about img d-flex align-items-stretch">
		    				<div class="img d-flex align-self-stretch align-items-center" style="background-image:url(${pageContext.request.contextPath}/resources/images/fashionmain.jpg); height: 700px;">
		    				</div>	    				</div>
	    			</div>
	    			<div class="col-md-12 col-lg-6 pl-lg-5 py-5 d-flex align-items-center">
	    				<div class="p-0 px-lg-5 p-lg-0">
		    				<div class="row justify-content-start pb-3">
				          <div class="col-md-15 heading-section ftco-animate">
				            <h2 class="mb-4" style="width: 600px;">의상 컬러 적합도 진단</h2>
				            <p>진단받은 퍼스널 컬러와 내 의상 컬러는 몇 % 어울릴까요?</p>
				          </div>
				        </div>
				        <div class="row">
				        	<div class="col-md-6" style="width: 1000px;">
				        		<div class="media block-6 services d-block ftco-animate">
								    <form id="take" action="${cpath}/uploadFormAction.do" method="POST" enctype="multipart/form-data"> 
								    	<label for="cap" class="btn btn-primary btn-sm" style="width: 150px;height: 40px;font-size: 20px;margin-top: 30px;">사진업로드     <span class="ion-ios-arrow-forward"></span></label>
								    	<input type="file" id="cap" name="uploadFile" multiple="multiple" style="display:none;">
								    	<label for="cap2" class="btn btn-primary btn-sm" style="width: 150px;height: 40px;font-size: 20px;margin-top: 30px;">진단하기     <span class="ion-ios-arrow-forward"></span></label>
								    	<button id="cap2" style="display:none;">진단</button>
								    </form>
				        	</div>
				        	<div class="col-md-6">
				        	
				       		 </div>
			         		 <div class="counter-wrap mb-0 ftco-animate d-flex mt-md-3">
			         		 
			          		</div>
			     		    </div>
				        </div>
				        </div>
			      </div>
		      </div>
	      </div>
	    </section>
      
	<jsp:include page="footer.jsp">
		<jsp:param name="pageSelection" value="footer" />
	</jsp:include>

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