<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Erase - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/aos.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
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
				<div class="img" style="background-image: url(images/bg_3.jpg);"></div>
				<div class="colorlib-table-cell js-fullheight">
					<div class="row no-gutters">
						<div class="col-md-12 text-center">
							<h1 class="mb-4">
								<a href="home.do" class="logo">palette</a>
							</h1>
							<ul>
								<jsp:include page="menu.jsp">
									<jsp:param name="pageSelection" value="1" />
								</jsp:include>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
		</div>

		<div id="colorlib-page">
			<header>
				<div class="container">
					<div class="colorlib-navbar-brand">
						<a class="colorlib-logo" href="home.do">palette</a>
					</div>
					<div method="post" action="${cpath}/login.do" class="loginForm">
						<c:choose>
							<c:when test="${sessionScope.userVO==null}">
								<a href = "${cpath}/login.do" style="color:white;">login</a>
							</c:when>
							<c:otherwise>
								<button class="btn" style="color : white;">${sessionScope.userVO.user_name}</button>
								<input type="button" value="로그아웃" onclick="logoutFn()" class="btn btn-info btn-sm"> 
							</c:otherwise>
						</c:choose>
					</div>
					<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
				</div>
			</header>
		 </div>

	    			<section class="hero-wrap js-fullheight">
				<div class="container-fluid px-0">
					<div
						class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
						data-scrollax-parent="true">
						<div class="col-md-12 ftco-animate text-center">
							<div class="desc">
								<span class="subheading">Personal Color</span>
								<h1
									style="background-image: url(${pageContext.request.contextPath}/resources/images/bg_1.jpg);">palette</h1>
								<span class="subheading-2">Do you know your harmonic
									color?</span>
							</div>
						</div>
					</div>
				</div>
			</section>
	    	<div class="container-fluid px-0">
	    		<div class="row no-gutters">
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/main4.JPG);">	
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<div class="icon d-flex align-items-center mb-5">
	    							</div>
	    							<h2 class="mb-4"><a href="blog-single.html">좋은 첫인상을 위한 
	    							<br>나만의 '퍼스널 컬러'와 '스타일링'</a></h2>
	    							<p>모든 만남은 첫인상이 중요합니다.
	    							<br>특히 취업 최종 관문인 면접에서 결정적인 역할을 하곤 하죠.
	    							<br>긍정적인 첫인상을 남기기 위해서 여러가지 준비할 것이 많은데,
	    							<br>그 중 내게 어울리는 색을 찾는 '퍼스널 컬러'의 중요성이 더 커지고 있습니다.
	    							<br>면접을 앞둔 취준생은 물론 나만의 색을 찾아 보다 멋진 스타일링을 원하는 분을 위한 퍼스널 컬러 진단을 하러 가볼까요?</p>
	    							<p class="mb-0 mt-4"><a href="#" class="btn btn-primary">진단하기 <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/clothes.jpg);">	
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<div class="icon d-flex align-items-center mb-5">
	    							</div>
	    							<h2 class="mb-4"><a href="blog-single.html">내 옷장에 옷들과 
	    							<br>마이 '퍼스널 컬러' 매칭 적합도</a></h2>
	    							<p>이미지 분석하여 진단한 내 퍼스널 컬러와
	    							<br>내가 가지고 있는 옷들이 얼마나 어울릴까?
	    							<br>
	    							<br>적합도를 확인 및 베스트 매칭 컬러 아이템 추천 !</p>
	    							<p class="mb-0 mt-4"><a href="#" class="btn btn-primary">진단하기 <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/perfume.jpg);">	
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<h2 class="mb-4"><a href="blog-single.html">'퍼스널 컬러'에 따른
	    							<br>향수 추천 서비스 </a></h2>
	    							<p>이미지 분석하여 진단한 퍼스널 컬러에 따라
	    							<br>내 분위기와 어울리는 향수?
									<br>
									<br>톤별 어울리는 베스트 향수 추천 해드릴게요 :)</p>
	    							<p class="mb-0 mt-4"><a href="#" class="btn btn-primary">진단하기 <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight order-md-last" style="background-image: url(${pageContext.request.contextPath}/resources/images/hair1.jpg);">	
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<div class="icon d-flex align-items-center mb-5">
	    							</div>
	    							<h2 class="mb-4"><a href="blog-single.html">'퍼스널 컬러'에 따른
	    							<br>헤어 컬러 추천 서비스 </a></h2>
	    							<p>이미지 분석하여 진단한 퍼스널 컬러에 따라
	    							<br>내 피부톤과 어울리는 헤어 컬러로 스타일 Up Up!</p>
	    							<p class="mb-0 mt-4"><a href="#" class="btn btn-primary">진단하기 <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_7.jpg);">
	    						
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<div class="icon d-flex align-items-center mb-5">
	    								<div class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/person_4.jpg);"></div>
	    								<div class="position pl-3">
	    									<h4 class="mb-0">Jamie Jonson</h4>
	    									<span>fashion.com</span>
	    								</div>
	    							</div>
	    							<h2 class="mb-4"><a href="blog-single.html">Make Peace With Your Broken Pieces</a></h2>
	    							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.</p>
	    							<p class="mb-0 mt-4"><a href="#" class="btn btn-primary">Read more <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_8.jpg);">
	    						
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<div class="icon d-flex align-items-center mb-5">
	    								<div class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/person_3.jpg);"></div>
	    								<div class="position pl-3">
	    									<h4 class="mb-0">Jamie Jonson</h4>
	    									<span>fashion.com</span>
	    								</div>
	    							</div>
	    							<h2 class="mb-4"><a href="blog-single.html">Make Peace With Your Broken Pieces</a></h2>
	    							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.</p>
	    							<p class="mb-0 mt-4"><a href="#" class="btn btn-primary">Read more <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_9.jpg);">
	    						
	    					</div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<div class="icon d-flex align-items-center mb-5">
	    								<div class="img" style="background-image: url(${pageContext.request.contextPath}/resources/images/person_3.jpg);"></div>
	    								<div class="position pl-3">
	    									<h4 class="mb-0">Jamie Jonson</h4>
	    									<span>fashion.com</span>
	    								</div>
	    							</div>
	    							<h2 class="mb-4"><a href="blog-single.html">Make Peace With Your Broken Pieces</a></h2>
	    							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.</p>
	    							<p class="mb-0 mt-4"><a href="#" class="btn btn-primary">Read more <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>


			<section class="ftco-section ftco-no-pb ftco-no-pt">
				<div class="container-fluid px-0">
					<div class="row no-gutters">
						<div class="col-md-12 blog-wrap">
							<div class="row no-gutters align-items-center">
								<div class="col-md-6 img js-fullheight"
									style="background-image: url(${pageContext.request.contextPath}/resources/images/main4.JPG);">
								</div>
								<div class="col-md-6">
									<div class="text p-md-5 p-4 ftco-animate">
										<div class="icon d-flex align-items-center mb-5"></div>
										<h2 class="mb-4">
											<a href="blog-single.html">좋은 첫인상을 위한 <br>나만의 '퍼스널
												컬러'와 '스타일링'
											</a>
										</h2>
										<p>
											모든 만남은 첫인상이 중요합니다. <br>특히 취업 최종 관문인 면접에서 결정적인 역할을 하곤 하죠.
											<br>긍정적인 첫인상을 남기기 위해서 여러가지 준비할 것이 많은데, <br>그 중 내게
											어울리는 색을 찾는 '퍼스널 컬러'의 중요성이 더 커지고 있습니다. <br>면접을 앞둔 취준생은 물론
											나만의 색을 찾아 보다 멋진 스타일링을 원하는 분을 위한 퍼스널 컬러 진단을 하러 가볼까요?
										</p>
										<p class="mb-0 mt-4">
											<a href="#" class="btn btn-primary">진단하기 <span
												class="ion-ios-arrow-forward"></span></a>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 blog-wrap bg-darken">
							<div class="row no-gutters align-items-center">
								<div
									class="col-md-6 d-flex justify-content-center align-items-center order-md-last js-fullheight">
									<div class="img"
										style="background-image: url(${pageContext.request.contextPath}/resources/images/color2.jpg);"></div>
								</div>
								<div class="col-md-6">
									<div class="text p-md-5 p-4 ftco-animate">
										<h2 class="mb-4">
											<a href="blog-single.html">좋은 첫인상을 위한 <br>나만의 '퍼스널
												컬러'와 '스타일링'
											</a>
										</h2>
										<p>
											모든 만남은 첫인상이 중요합니다. <br>특히 취업 최종 관문인 면접에서 결정적인 역할을 하곤 하죠.
											<br>긍정적인 첫인상을 남기기 위해서 여러가지 준비할 것이 많은데, <br>그 중 내게
											어울리는 색을 찾는 '퍼스널 컬러'의 중요성이 더 커지고 있습니다. <br>면접을 앞둔 취준생은 물론
											나만의 색을 찾아 보다 멋진 스타일링을 원하는 분을 위한 퍼스널 컬러 진단을 하러 가볼까요?
										</p>
										<p class="mb-0 mt-4">
											<a href="#" class="btn btn-primary">진단하기 <span
												class="ion-ios-arrow-forward"></span></a>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 blog-wrap">
							<div class="row no-gutters align-items-center">
								<div class="col-md-6 img js-fullheight"
									style="background-image: url(${pageContext.request.contextPath}/resources/images/image_5.jpg);">

								</div>
								<div class="col-md-6">
									<div class="text p-md-5 p-4 ftco-animate">
										<div class="icon d-flex align-items-center mb-5">
											<div class="position pl-3">
												<h4 class="mb-0">App에서의 퍼스널 컬러 진단 방법</h4>
											</div>
										</div>
										<h2 class="mb-4">
											<a href="blog-single.html">퍼스널 컬러 진단방법</a>
										</h2>
										<p>
											정확한 진단이 되기 위해서 <br>컬러 카드와 함께 얼굴 정면이 나오도록 찍어주세요. <br>밝은
											곳에서 촬영해주세요. (역광은 금물! 빛을 바라보고 찍어 주세요.) <br>참고사항 : 개인정보는 앱
											내 저장 되지 않으며, 다른 용도로 절대 사용되지 않습니다. <br>주변 환경과 조건에 따라 다소
											오차가 발생할 수 있습니다.
										</p>
										<p class="mb-0 mt-4">
											<a href="#" class="btn btn-primary">진단하기 <span
												class="ion-ios-arrow-forward"></span></a>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 blog-wrap">
							<div class="row no-gutters align-items-center">
								<div class="col-md-6 img js-fullheight"
									style="background-image: url(${pageContext.request.contextPath}/resources/images/image_6.jpg);">

								</div>
								<div class="col-md-6">
									<div class="text p-md-5 p-4 ftco-animate">
										<div class="icon d-flex align-items-center mb-5">
											<div class="img"
												style="background-image: url(${pageContext.request.contextPath}/resources/images/person_3.jpg);"></div>
											<div class="position pl-3">
												<h4 class="mb-0">Jamie Jonson</h4>
												<span>fashion.com</span>
											</div>
										</div>
										<h2 class="mb-4">
											<a href="blog-single.html">Make Peace With Your Broken
												Pieces</a>
										</h2>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts. Separated they live in Bookmarksgrove.</p>
										<p class="mb-0 mt-4">
											<a href="#" class="btn btn-primary">Read more <span
												class="ion-ios-arrow-forward"></span></a>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 blog-wrap">
							<div class="row no-gutters align-items-center">
								<div class="col-md-6 img js-fullheight"
									style="background-image: url(${pageContext.request.contextPath}/resources/images/image_7.jpg);">

								</div>
								<div class="col-md-6">
									<div class="text p-md-5 p-4 ftco-animate">
										<div class="icon d-flex align-items-center mb-5">
											<div class="img"
												style="background-image: url(${pageContext.request.contextPath}/resources/images/person_4.jpg);"></div>
											<div class="position pl-3">
												<h4 class="mb-0">Jamie Jonson</h4>
												<span>fashion.com</span>
											</div>
										</div>
										<h2 class="mb-4">
											<a href="blog-single.html">Make Peace With Your Broken
												Pieces</a>
										</h2>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts. Separated they live in Bookmarksgrove.</p>
										<p class="mb-0 mt-4">
											<a href="#" class="btn btn-primary">Read more <span
												class="ion-ios-arrow-forward"></span></a>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 blog-wrap">
							<div class="row no-gutters align-items-center">
								<div class="col-md-6 img js-fullheight"
									style="background-image: url(${pageContext.request.contextPath}/resources/images/image_8.jpg);">

								</div>
								<div class="col-md-6">
									<div class="text p-md-5 p-4 ftco-animate">
										<div class="icon d-flex align-items-center mb-5">
											<div class="img"
												style="background-image: url(${pageContext.request.contextPath}/resources/images/person_3.jpg);"></div>
											<div class="position pl-3">
												<h4 class="mb-0">Jamie Jonson</h4>
												<span>fashion.com</span>
											</div>
										</div>
										<h2 class="mb-4">
											<a href="blog-single.html">Make Peace With Your Broken
												Pieces</a>
										</h2>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts. Separated they live in Bookmarksgrove.</p>
										<p class="mb-0 mt-4">
											<a href="#" class="btn btn-primary">Read more <span
												class="ion-ios-arrow-forward"></span></a>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 blog-wrap">
							<div class="row no-gutters align-items-center">
								<div class="col-md-6 img js-fullheight"
									style="background-image: url(${pageContext.request.contextPath}/resources/images/image_9.jpg);">

								</div>
								<div class="col-md-6">
									<div class="text p-md-5 p-4 ftco-animate">
										<div class="icon d-flex align-items-center mb-5">
											<div class="img"
												style="background-image: url(${pageContext.request.contextPath}/resources/images/person_3.jpg);"></div>
											<div class="position pl-3">
												<h4 class="mb-0">Jamie Jonson</h4>
												<span>fashion.com</span>
											</div>
										</div>
										<h2 class="mb-4">
											<a href="blog-single.html">Make Peace With Your Broken
												Pieces</a>
										</h2>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts. Separated they live in Bookmarksgrove.</p>
										<p class="mb-0 mt-4">
											<a href="#" class="btn btn-primary">Read more <span
												class="ion-ios-arrow-forward"></span></a>
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-12 blog-wrap">
							<div class="row no-gutters align-items-center">
								<div class="col-md-6 img js-fullheight"
									style="background-image: url(${pageContext.request.contextPath}/resources/images/image_10.jpg);">

								</div>
								<div class="col-md-6">
									<div class="text p-md-5 p-4 ftco-animate">
										<div class="icon d-flex align-items-center mb-5">
											<div class="img"
												style="background-image: url(${pageContext.request.contextPath}/resources/images/person_3.jpg);"></div>
											<div class="position pl-3">
												<h4 class="mb-0">Jamie Jonson</h4>
												<span>fashion.com</span>
											</div>
										</div>
										<h2 class="mb-4">
											<a href="blog-single.html">Make Peace With Your Broken
												Pieces</a>
										</h2>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts. Separated they live in Bookmarksgrove.</p>
										<p class="mb-0 mt-4">
											<a href="#" class="btn btn-primary">Read more <span
												class="ion-ios-arrow-forward"></span></a>
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-12 blog-wrap bg-darken">
							<div class="row no-gutters align-items-center">
								<div
									class="col-md-6 d-flex justify-content-center align-items-center order-md-last js-fullheight">
									<div class="img"
										style="background-image: url(${pageContext.request.contextPath}/resources/images/image_11.jpg);"></div>
								</div>
								<div class="col-md-6">
									<div class="text p-md-5 p-4 ftco-animate">
										<div class="icon d-flex align-items-center mb-5">
											<div class="img"
												style="background-image: url(${pageContext.request.contextPath}/resources/images/person_2.jpg);"></div>
											<div class="position pl-3">
												<h4 class="mb-0">Jamie Jonson</h4>
												<span>fashion.com</span>
											</div>
										</div>
										<h2 class="mb-4">
											<a href="blog-single.html">Make Peace With Your Broken
												Pieces</a>
										</h2>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts. Separated they live in Bookmarksgrove.</p>
										<p class="mb-0 mt-4">
											<a href="#" class="btn btn-primary">Read more <span
												class="ion-ios-arrow-forward"></span></a>
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-12 blog-wrap">
							<div class="row no-gutters align-items-center">
								<div class="col-md-6 img js-fullheight"
									style="background-image: url(${pageContext.request.contextPath}/resources/images/image_12.jpg);">

								</div>
								<div class="col-md-6">
									<div class="text p-md-5 p-4 ftco-animate">
										<div class="icon d-flex align-items-center mb-5">
											<div class="img"
												style="background-image: url(${pageContext.request.contextPath}/resources/images/person_3.jpg);"></div>
											<div class="position pl-3">
												<h4 class="mb-0">Jamie Jonson</h4>
												<span>fashion.com</span>
											</div>
										</div>
										<h2 class="mb-4">
											<a href="blog-single.html">Make Peace With Your Broken
												Pieces</a>
										</h2>
										<p>Far far away, behind the word mountains, far from the
											countries Vokalia and Consonantia, there live the blind
											texts. Separated they live in Bookmarksgrove.</p>
										<p class="mb-0 mt-4">
											<a href="#" class="btn btn-primary">Read more <span
												class="ion-ios-arrow-forward"></span></a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>


			<footer class="ftco-footer ftco-section img">
				<div class="overlay"></div>
				<div class="container">
					<div class="row mb-5">
						<div class="col-lg-3">
							<div class="ftco-footer-widget mb-4">
								<h2 class="ftco-heading-2 logo">
									<a href="index.html">Erase</a>
								</h2>
								<p>Far far away, behind the word mountains, far from the
									countries Vokalia and Consonantia, there live the blind texts.</p>
								<ul
									class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
									<li class="ftco-animate"><a href="#"><span
											class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-instagram"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="ftco-footer-widget mb-4">
								<h2 class="ftco-heading-2">Recent Blog</h2>
								<div class="block-21 mb-4 d-flex">
									<a class="blog-img mr-4"
										style="background-image: url(${pageContext.request.contextPath}/resources/images/image_1.jpg);"></a>
									<div class="text">
										<h3 class="heading">
											<a href="#">Even the all-powerful Pointing has no control
												about</a>
										</h3>
										<div class="meta">
											<div>
												<a href="#"><span class="icon-calendar"></span> July 12,
													2018</a>
											</div>
											<div>
												<a href="#"><span class="icon-person"></span> Admin</a>
											</div>
											<div>
												<a href="#"><span class="icon-chat"></span> 19</a>
											</div>
										</div>
									</div>
								</div>
								<div class="block-21 mb-4 d-flex">
									<a class="blog-img mr-4"
										style="background-image: url(${pageContext.request.contextPath}/resources/images/image_2.jpg);"></a>
									<div class="text">
										<h3 class="heading">
											<a href="#">Even the all-powerful Pointing has no control
												about</a>
										</h3>
										<div class="meta">
											<div>
												<a href="#"><span class="icon-calendar"></span> July 12,
													2018</a>
											</div>
											<div>
												<a href="#"><span class="icon-person"></span> Admin</a>
											</div>
											<div>
												<a href="#"><span class="icon-chat"></span> 19</a>
											</div>
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
										<li><span class="icon icon-map-marker"></span><span
											class="text">203 Fake St. Mountain View, San
												Francisco, California, USA</span></li>
										<li><a href="#"><span class="icon icon-phone"></span><span
												class="text">+2 392 3929 210</span></a></li>
										<li><a href="#"><span class="icon icon-envelope"></span><span
												class="text">info@yourdomain.com</span></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 text-center">

							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="icon-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>
				</div>
			</footer>

			<!-- loader -->
			<div id="ftco-loader" class="show fullscreen">
				<svg class="circular" width="48px" height="48px">
					<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
						stroke-width="4" stroke="#eeeeee" />
					<circle class="path" cx="24" cy="24" r="22" fill="none"
						stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
			</div>

		</div>
	</div>


	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>