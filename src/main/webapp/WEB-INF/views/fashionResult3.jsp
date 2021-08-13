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
	          <a class="colorlib-logo" href="home.do">PALETTE</a>
	        </div>
	        <div method="post" action="${cpath}/login.do" class="loginForm">
						<c:choose>
							<c:when test="${sessionScope.userVO==null}">
								<a href = "${cpath}/login.do" style="color : white;">Login</a>
							</c:when>
							<c:otherwise>
								<button class="btn" style="color : white;">${sessionScope.userVO.user_name}</button>
								<a type="button" style="font-size : 16px" onclick="logoutFn()">Logout</a> 
							</c:otherwise>
						</c:choose>
					</div>
	        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
        </div>
      </header>

      <section class="hero-wrap js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/back1.jpg);">
      	<div class="overlay"></div>
	      <div class="container-fluid px-0">
	        <div class="row no-gutters text align-items-end js-fullheight justify-content-center" data-scrollax-parent="true">
	          <div class="col-md-12 ftco-animate text-center">
	            <h1 class="bread">fashion color</h1>
	          </div>
	        </div>
	      </div>
      </section>

	    <section class="ftco-section ftco-no-pb ftco-no-pt">
	    	<div class="container-fluid px-0">
	    		<div class="row no-gutters">
	    		
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/image_1.jpg);"></div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
	    							<h2 class="mb-4"><a>퍼스널컬러 분석 기반</a></h2>
	    							<h2 class="mb-4"><a>남성 패션 개선 서비스</a></h2>
	    							<p>Color types help stylize makeup, fashion. </p>
	    							<p>have you ever thought about your personal colors that perfectly suit your image?</p>
									<p class="mb-0 mt-4"><a href="#" class="btn btn-primary">버튼 <span class="ion-ios-arrow-forward"></span></a></p>
	    						</div>
	    					</div>
	    				</div>
	    			</div>
	    			
	    			<!-- 작업공간 -->
		   			
	    			<div class="col-md-12 blog-wrap" style="text-align: center;">
		   				<div class="row no-gutters align-items-center">
		   					<div class="col-md-6 img js-fullheight">
									<div class="thumbnail_thumb_wrap__1pEkS _wrapper">
											<a target="_blank" class="thumbnail_thumb__3Agq6"
												rel="noopener"
												data-nclick="N=a:img*N.image,r:1,i:82454624515"
												href="https://cr.shopping.naver.com/adcr.nhn?x=20X9E6KTSuZjsuybdo7lf%2F%2F%2F%2Fw%3D%3DsjyRtt%2BQrYz93s7%2FNpv5M5KW2sfv31oOABwn1WBRo0lULpCVyUssWt2WzGQrQ6Gc14hQgqtOAssKryLdoauueJzki7%2BD51Tb7puyafpAdAz8S0E6C5tnH03SLDOHiua0MqN%2BXxEQIfehbd5CkGX75Q%2BuEITiQhfrVch24DdOkszWGZ5a0ma%2FDwz3QQr7PLlrXSsyJ6igA0LWLErvSkiJV%2B8%2BQvJMoCqgnBLf2yBTGqIiowv6FNVOShM7IrLRBE8%2B4SdB07yxKn78MKq37YKX5SVkCtnQrifrTZ%2BdicZ%2F2nRFLhv4nBWN6vYRnY66Pfp8U%2FFk52LN%2FfNAE%2B0v96SPgcyqK5kLw3MtXDJ0nxhX8zamRPpm88lCAK8OBeWdzsFyMQ%2BD%2Fo9glb0ukJK6bM8miKArsK1DNlYuW6vX8WB7j4SlGgqXKzAW4zfTpXETtJbH5XOt302vXj68GdG7k2sKdeVd%2BqILAG09hjAR1K3qLYkDpb43Jlx0I1v2krtmfR1%2Fmtr3f%2BhvSeSxAXlfK5Ji%2Buz%2Fqd%2FeHbO6JWjInP48GYpcn%2FEenzHzklkjG9GraxifB3J2VdFHfES46%2B8gcn%2BewOU7TLWN8yPn0iFlUa16OtSorSk%2FulJwbTQFwAevRklRt58s1L3mMKAncmr%2F0%2FBEDxSJUF0gie4HLz3S%2Bdp%2FUtR9hBUj%2BPYzgV%2FaZj9xOmgkxg64ApXpFcbUizTdcku%2BIF7bOg196wPwTY%2FOZExxO%2BkVoI9yFRgBCeNoVEg8CUuTwW3sfTNnmaxnKDs%2BVDS%2FnRstVYavx%2B%2B8fWZa9SBc8rqM%3D&amp;nvMid=82454624515&amp;catId=50000830"><img
												width="168" height="168"
												alt="남자 머슬핏 여름 린넨 오픈카라 헨리넥 무지 반팔 니트 카라 티셔츠"
												src="https://shop-phinf.pstatic.net/20200424_55/1587730915390DU3eD_PNG/KakaoTalk_20200423_211147714_15.jpg.png?type=w860"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:82454624515,r:1"
													title="남자 머슬핏 여름 린넨 오픈카라 헨리넥 무지 반팔 니트 카라 티셔츠"
													href="https://cr.shopping.naver.com/adcr.nhn?x=20X9E6KTSuZjsuybdo7lf%2F%2F%2F%2Fw%3D%3DsjyRtt%2BQrYz93s7%2FNpv5M5KW2sfv31oOABwn1WBRo0lULpCVyUssWt2WzGQrQ6Gc14hQgqtOAssKryLdoauueJzki7%2BD51Tb7puyafpAdAz8S0E6C5tnH03SLDOHiua0MqN%2BXxEQIfehbd5CkGX75Q%2BuEITiQhfrVch24DdOkszWGZ5a0ma%2FDwz3QQr7PLlrXSsyJ6igA0LWLErvSkiJV%2B8%2BQvJMoCqgnBLf2yBTGqIiowv6FNVOShM7IrLRBE8%2B4SdB07yxKn78MKq37YKX5SVkCtnQrifrTZ%2BdicZ%2F2nRFLhv4nBWN6vYRnY66Pfp8U%2FFk52LN%2FfNAE%2B0v96SPgcyqK5kLw3MtXDJ0nxhX8zamRPpm88lCAK8OBeWdzsFyMQ%2BD%2Fo9glb0ukJK6bM8miKArsK1DNlYuW6vX8WB7j4SlGgqXKzAW4zfTpXETtJbH5XOt302vXj68GdG7k2sKdeVd%2BqILAG09hjAR1K3qLYkDpb43Jlx0I1v2krtmfR1%2Fmtr3f%2BhvSeSxAXlfK5Ji%2Buz%2Fqd%2FeHbO6JWjInP48GYpcn%2FEenzHzklkjG9GraxifB3J2VdFHfES46%2B8gcn%2BewOU7TLWN8yPn0iFlUa16OtSorSk%2FulJwbTQFwAevRklRt58s1L3mMKAncmr%2F0%2FBEDxSJUF0gie4HLz3S%2Bdp%2FUtR9hBUj%2BPYzgV%2FaZj9xOmgkxg64ApXpFcbUizTdcku%2BIF7bOg196wPwTY%2FOZExxO%2BkVoI9yFRgBCeNoVEg8CUuTwW3sfTNnmaxnKDs%2BVDS%2FnRstVYavx%2B%2B8fWZa9SBc8rqM%3D&amp;nvMid=82454624515&amp;catId=50000830">남자
													머슬핏 여름 린넨 오픈카라 헨리넥 무지 반팔 니트 카라 티셔츠</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">24,800원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:1,i:82454624515" title="와츠엔"
													href="https://smartstore.naver.com/whats_next"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">와츠엔</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:1,i:82454624515"
													href="https://cr.shopping.naver.com/adcr.nhn?x=20X9E6KTSuZjsuybdo7lf%2F%2F%2F%2Fw%3D%3DsjyRtt%2BQrYz93s7%2FNpv5M5KW2sfv31oOABwn1WBRo0lULpCVyUssWt2WzGQrQ6Gc14hQgqtOAssKryLdoauueJzki7%2BD51Tb7puyafpAdAz8S0E6C5tnH03SLDOHiua0MqN%2BXxEQIfehbd5CkGX75Q%2BuEITiQhfrVch24DdOkszWGZ5a0ma%2FDwz3QQr7PLlrXSsyJ6igA0LWLErvSkiJV%2B8%2BQvJMoCqgnBLf2yBTGqIiowv6FNVOShM7IrLRBE8%2B4SdB07yxKn78MKq37YKX5SVkCtnQrifrTZ%2BdicZ%2F2nRFLhv4nBWN6vYRnY66Pfp8U%2FFk52LN%2FfNAE%2B0v96SPgcyqK5kLw3MtXDJ0nxhX8zamRPpm88lCAK8OBeWdzsFyMQ%2BD%2Fo9glb0ukJK6bM8miKArsK1DNlYuW6vX8WB7j4SlGgqXKzAW4zfTpXETtJbH5XOt302vXj68GdG7k2sKdeVd%2BqILAG09hjAR1K3qLYkDpb43Jlx0I1v2krtmfR1%2Fmtr3f%2BhvSeSxAXlfK5Ji%2Buz%2Fqd%2FeHbO6JWjInP48GYpcn%2FEenzHzklkjG9GraxifB3J2VdFHfES46%2B8gcn%2BewOU7TLWN8yPn0iFlUa16OtSorSk%2FulJwbTQFwAevRklRt58s1L3mMKAncmr%2F0%2FBEDxSJUF0gie4HLz3S%2Bdp%2FUtR9hBUj%2BPYzgV%2FaZj9xOmgkxg64ApXpFcbUizTdcku%2BIF7bOg196wPwTY%2FOZExxO%2BkVoI9yFRgBCeNoVEg8CUuTwW3sfTNnmaxnKDs%2BVDS%2FnRstVYavx%2B%2B8fWZa9SBc8rqM%3D&amp;nvMid=82454624515&amp;catId=50000830">리뷰
													<em class="imgList_num__K3JQN">999+</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:1,i:82454624515"
													href="https://cr.shopping.naver.com/adcr.nhn?x=20X9E6KTSuZjsuybdo7lf%2F%2F%2F%2Fw%3D%3DsjyRtt%2BQrYz93s7%2FNpv5M5KW2sfv31oOABwn1WBRo0lULpCVyUssWt2WzGQrQ6Gc14hQgqtOAssKryLdoauueJzki7%2BD51Tb7puyafpAdAz8S0E6C5tnH03SLDOHiua0MqN%2BXxEQIfehbd5CkGX75Q%2BuEITiQhfrVch24DdOkszWGZ5a0ma%2FDwz3QQr7PLlrXSsyJ6igA0LWLErvSkiJV%2B8%2BQvJMoCqgnBLf2yBTGqIiowv6FNVOShM7IrLRBE8%2B4SdB07yxKn78MKq37YKX5SVkCtnQrifrTZ%2BdicZ%2F2nRFLhv4nBWN6vYRnY66Pfp8U%2FFk52LN%2FfNAE%2B0v96SPgcyqK5kLw3MtXDJ0nxhX8zamRPpm88lCAK8OBeWdzsFyMQ%2BD%2Fo9glb0ukJK6bM8miKArsK1DNlYuW6vX8WB7j4SlGgqXKzAW4zfTpXETtJbH5XOt302vXj68GdG7k2sKdeVd%2BqILAG09hjAR1K3qLYkDpb43Jlx0I1v2krtmfR1%2Fmtr3f%2BhvSeSxAXlfK5Ji%2Buz%2Fqd%2FeHbO6JWjInP48GYpcn%2FEenzHzklkjG9GraxifB3J2VdFHfES46%2B8gcn%2BewOU7TLWN8yPn0iFlUa16OtSorSk%2FulJwbTQFwAevRklRt58s1L3mMKAncmr%2F0%2FBEDxSJUF0gie4HLz3S%2Bdp%2FUtR9hBUj%2BPYzgV%2FaZj9xOmgkxg64ApXpFcbUizTdcku%2BIF7bOg196wPwTY%2FOZExxO%2BkVoI9yFRgBCeNoVEg8CUuTwW3sfTNnmaxnKDs%2BVDS%2FnRstVYavx%2B%2B8fWZa9SBc8rqM%3D&amp;nvMid=82454624515&amp;catId=50000830">구매
													<em class="imgList_num__K3JQN">999+</em>
												</a>
											</div>
										</div>
									<!-- 왼쪽 공간 -->
		   					
		   					</div>
		   					<div class="col-md-6 img js-fullheight">
									<div class="thumbnail_thumb_wrap__1pEkS _wrapper">
											<a target="_blank" class="thumbnail_thumb__3Agq6"
												rel="noopener"
												data-nclick="N=a:img*N.image,r:1,i:83051863561"
												href="https://cr.shopping.naver.com/adcr.nhn?x=XOHfS0iaBhB%2BkNgATQeidP%2F%2F%2Fw%3D%3Ds6Uk7%2F%2BMQ60h7Tk8bDx%2BoLHVpSgACFpp0mEjyJJqjLYdfC6mqOnapDlL3YPLMnKkgrfze9iNoXugwS9W%2B9bbAIbJ%2BbifrnRSjqsZ77oiK%2BYrr5QPE50UXftSNgPkP8Ad%2BIJy4aeVgsqLjNGvs%2BiIUO0ynA8cqA%2B2PJEFUPwDeXqMRtvjQX%2B9jTT885AYcz%2BdEp4qgg8zl84G3giZmWwMsihXBtZyjc4WB9MLayW4PsZ3It9ELSj9ZgOwWGT6cXiS3Hh2eU%2BqPyjsQfhdhHcA20oauxDLil3NnKrCjTHukLB05B0btLcq6S8Z4vCcLTk10VTmfQMb8uK4yFwsMELTxP4TQFhMNCQrG%2ByyVwSaillfdNec4Cvj%2Ba%2BGQsrA34g6VIum%2FX86te1Kv5a6qnPTZf8gjw3HXVvx1iaZDllvVsHBYO4Am6plsaXHSO650j1yFP2tfKoQ0NQPyiad34AQ6K9%2FdVvwtcOUlbNrGLU3RUnqLAzTTHyDTWd2RC9Ja1rxn6nDqYMX1t6bUDsbVu4jNP2Bb2F6zJKRzO942lBD6PJmCv5kDkP5pfxhfIqUiy1Uthjp9YscbUg2yL3h4kdwK4jCwj%2FRgFhXuWokMZbl%2FbwfTQjDuYozs9XbuIhT2djkoixH21fSL5utVTNw%2BrdjyWpSqaDzotA1jgV7%2BYE2nA%2FSYBIcD2%2Bw96kAeL%2ByaP6b1VqP45bxyGV4P%2B%2Fpz%2FAuzWBZdq84JGwKyY7FyvJxV4OkJyJK28Tl8Z9iCGwvEMKiDdCe0BftIsXCYHay%2B9H6hSJ2kOUBPkV8%2BSMmhaswwOJXmcE93EHA1M5mJwAu7zb7OwadEjzHV7CojM9pXV2gfWVeznlvEvoF%2FfaRh6yo5o5Tke%2FVP%2BgM94BPZkP5YJ%2Bex&amp;nvMid=83051863561&amp;catId=50000830"><img
												width="168" height="168"
												alt="남자 머슬핏 반팔 카라티 헨리넥 어깨넓어보이는 옷 헬창옷 목안늘어나는 흰 두꺼운 10수"
												src="https://shop-phinf.pstatic.net/20210407_135/1617743268659u0XXT_JPEG/%EB%82%A8%EC%9E%90_%EB%A8%B8%EC%8A%AC%ED%95%8F_%EB%B0%98%ED%8C%94_%ED%8B%B0_%EC%B9%B4%ED%82%A4_%EC%B9%B4%ED%82%A4%EC%83%89.jpg?type=w860"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:83051863561,r:1"
													title="남자 머슬핏 반팔 카라티 헨리넥 어깨넓어보이는 옷 헬창옷 목안늘어나는 흰 두꺼운 10수"
													href="https://cr.shopping.naver.com/adcr.nhn?x=XOHfS0iaBhB%2BkNgATQeidP%2F%2F%2Fw%3D%3Ds6Uk7%2F%2BMQ60h7Tk8bDx%2BoLHVpSgACFpp0mEjyJJqjLYdfC6mqOnapDlL3YPLMnKkgrfze9iNoXugwS9W%2B9bbAIbJ%2BbifrnRSjqsZ77oiK%2BYrr5QPE50UXftSNgPkP8Ad%2BIJy4aeVgsqLjNGvs%2BiIUO0ynA8cqA%2B2PJEFUPwDeXqMRtvjQX%2B9jTT885AYcz%2BdEp4qgg8zl84G3giZmWwMsihXBtZyjc4WB9MLayW4PsZ3It9ELSj9ZgOwWGT6cXiS3Hh2eU%2BqPyjsQfhdhHcA20oauxDLil3NnKrCjTHukLB05B0btLcq6S8Z4vCcLTk10VTmfQMb8uK4yFwsMELTxP4TQFhMNCQrG%2ByyVwSaillfdNec4Cvj%2Ba%2BGQsrA34g6VIum%2FX86te1Kv5a6qnPTZf8gjw3HXVvx1iaZDllvVsHBYO4Am6plsaXHSO650j1yFP2tfKoQ0NQPyiad34AQ6K9%2FdVvwtcOUlbNrGLU3RUnqLAzTTHyDTWd2RC9Ja1rxn6nDqYMX1t6bUDsbVu4jNP2Bb2F6zJKRzO942lBD6PJmCv5kDkP5pfxhfIqUiy1Uthjp9YscbUg2yL3h4kdwK4jCwj%2FRgFhXuWokMZbl%2FbwfTQjDuYozs9XbuIhT2djkoixH21fSL5utVTNw%2BrdjyWpSqaDzotA1jgV7%2BYE2nA%2FSYBIcD2%2Bw96kAeL%2ByaP6b1VqP45bxyGV4P%2B%2Fpz%2FAuzWBZdq84JGwKyY7FyvJxV4OkJyJK28Tl8Z9iCGwvEMKiDdCe0BftIsXCYHay%2B9H6hSJ2kOUBPkV8%2BSMmhaswwOJXmcE93EHA1M5mJwAu7zb7OwadEjzHV7CojM9pXV2gfWVeznlvEvoF%2FfaRh6yo5o5Tke%2FVP%2BgM94BPZkP5YJ%2Bex&amp;nvMid=83051863561&amp;catId=50000830">남자
													머슬핏 반팔 카라티 헨리넥 어깨넓어보이는 옷 헬창옷 목안늘어나는 흰 두꺼운 10수</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">14,500원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:1,i:83051863561" title="피트니티"
													href="https://smartstore.naver.com/fitnity"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">피트니티</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:1,i:83051863561"
													href="https://cr.shopping.naver.com/adcr.nhn?x=XOHfS0iaBhB%2BkNgATQeidP%2F%2F%2Fw%3D%3Ds6Uk7%2F%2BMQ60h7Tk8bDx%2BoLHVpSgACFpp0mEjyJJqjLYdfC6mqOnapDlL3YPLMnKkgrfze9iNoXugwS9W%2B9bbAIbJ%2BbifrnRSjqsZ77oiK%2BYrr5QPE50UXftSNgPkP8Ad%2BIJy4aeVgsqLjNGvs%2BiIUO0ynA8cqA%2B2PJEFUPwDeXqMRtvjQX%2B9jTT885AYcz%2BdEp4qgg8zl84G3giZmWwMsihXBtZyjc4WB9MLayW4PsZ3It9ELSj9ZgOwWGT6cXiS3Hh2eU%2BqPyjsQfhdhHcA20oauxDLil3NnKrCjTHukLB05B0btLcq6S8Z4vCcLTk10VTmfQMb8uK4yFwsMELTxP4TQFhMNCQrG%2ByyVwSaillfdNec4Cvj%2Ba%2BGQsrA34g6VIum%2FX86te1Kv5a6qnPTZf8gjw3HXVvx1iaZDllvVsHBYO4Am6plsaXHSO650j1yFP2tfKoQ0NQPyiad34AQ6K9%2FdVvwtcOUlbNrGLU3RUnqLAzTTHyDTWd2RC9Ja1rxn6nDqYMX1t6bUDsbVu4jNP2Bb2F6zJKRzO942lBD6PJmCv5kDkP5pfxhfIqUiy1Uthjp9YscbUg2yL3h4kdwK4jCwj%2FRgFhXuWokMZbl%2FbwfTQjDuYozs9XbuIhT2djkoixH21fSL5utVTNw%2BrdjyWpSqaDzotA1jgV7%2BYE2nA%2FSYBIcD2%2Bw96kAeL%2ByaP6b1VqP45bxyGV4P%2B%2Fpz%2FAuzWBZdq84JGwKyY7FyvJxV4OkJyJK28Tl8Z9iCGwvEMKiDdCe0BftIsXCYHay%2B9H6hSJ2kOUBPkV8%2BSMmhaswwOJXmcE93EHA1M5mJwAu7zb7OwadEjzHV7CojM9pXV2gfWVeznlvEvoF%2FfaRh6yo5o5Tke%2FVP%2BgM94BPZkP5YJ%2Bex&amp;nvMid=83051863561&amp;catId=50000830">리뷰
													<em class="imgList_num__K3JQN">999+</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:1,i:83051863561"
													href="https://cr.shopping.naver.com/adcr.nhn?x=XOHfS0iaBhB%2BkNgATQeidP%2F%2F%2Fw%3D%3Ds6Uk7%2F%2BMQ60h7Tk8bDx%2BoLHVpSgACFpp0mEjyJJqjLYdfC6mqOnapDlL3YPLMnKkgrfze9iNoXugwS9W%2B9bbAIbJ%2BbifrnRSjqsZ77oiK%2BYrr5QPE50UXftSNgPkP8Ad%2BIJy4aeVgsqLjNGvs%2BiIUO0ynA8cqA%2B2PJEFUPwDeXqMRtvjQX%2B9jTT885AYcz%2BdEp4qgg8zl84G3giZmWwMsihXBtZyjc4WB9MLayW4PsZ3It9ELSj9ZgOwWGT6cXiS3Hh2eU%2BqPyjsQfhdhHcA20oauxDLil3NnKrCjTHukLB05B0btLcq6S8Z4vCcLTk10VTmfQMb8uK4yFwsMELTxP4TQFhMNCQrG%2ByyVwSaillfdNec4Cvj%2Ba%2BGQsrA34g6VIum%2FX86te1Kv5a6qnPTZf8gjw3HXVvx1iaZDllvVsHBYO4Am6plsaXHSO650j1yFP2tfKoQ0NQPyiad34AQ6K9%2FdVvwtcOUlbNrGLU3RUnqLAzTTHyDTWd2RC9Ja1rxn6nDqYMX1t6bUDsbVu4jNP2Bb2F6zJKRzO942lBD6PJmCv5kDkP5pfxhfIqUiy1Uthjp9YscbUg2yL3h4kdwK4jCwj%2FRgFhXuWokMZbl%2FbwfTQjDuYozs9XbuIhT2djkoixH21fSL5utVTNw%2BrdjyWpSqaDzotA1jgV7%2BYE2nA%2FSYBIcD2%2Bw96kAeL%2ByaP6b1VqP45bxyGV4P%2B%2Fpz%2FAuzWBZdq84JGwKyY7FyvJxV4OkJyJK28Tl8Z9iCGwvEMKiDdCe0BftIsXCYHay%2B9H6hSJ2kOUBPkV8%2BSMmhaswwOJXmcE93EHA1M5mJwAu7zb7OwadEjzHV7CojM9pXV2gfWVeznlvEvoF%2FfaRh6yo5o5Tke%2FVP%2BgM94BPZkP5YJ%2Bex&amp;nvMid=83051863561&amp;catId=50000830">구매
													<em class="imgList_num__K3JQN">999+</em>
												</a>
											</div>
										</div>
									<!-- 오른쪽 공간 -->
		   					
		   					</div>
	   					</div>
	   				</div>
	    			<div class="col-md-12 blog-wrap" style="text-align: center;">
		   				<div class="row no-gutters align-items-center">
		   					<div class="col-md-6 img js-fullheight">
									<div class="thumbnail_thumb_wrap__1pEkS _wrapper">
											<a target="_blank" class="thumbnail_thumb__3Agq6"
												rel="noopener"
												data-nclick="N=a:img*N.image,r:1,i:82624333000"
												href="https://cr.shopping.naver.com/adcr.nhn?x=3bPhZEkzErLT3Z1dwwrBRv%2F%2F%2Fw%3D%3DsKGspJ%2FT532ta1Q1u1xBAymgZYxfNo8iia%2BhhbcqKPaZfC6mqOnapDlL3YPLMnKkgXqyL0PBEiXHeygx0%2FBruvf8a0blMQcZruZLD7oHH3OebduSxNumRjqfDoKN%2BIfVWjPPaNXv3iZlS6o92XXx555z%2Fxw7SCIdeCq2hlmHX9BmOCLdceG7arL2WGhBBYSncSE40mlX26ey5Y7AD%2BqeO7ycX2AUq8VPh3PK%2Fo8l8aTkQ30gwb0ZAWnfX3Zzr1ayRgdKIjkE%2BRTI0YnRUMgbKMCceTRyQc%2B5inm7JOX8supUzw6RiK2m4radrqdOg2kX4ueCfFDuywxl3T1PQ6PKMjF5qtMG%2FJ0PUtQjclakIAMhD%2FN9f%2Br8WndMthdRRRWgDe%2B3QBFaC9wa5%2BzQfdWm0pvT%2FE8WoFK%2B2nB0P%2FgYpZ3UJGH0%2BquGjhu%2BFAJAbIRzzgB%2B13tC2q5wooFP6bFbCsrMhwjvlaWI4Q%2Bh8TpCXxtuD2tdTWmzS7Dsk5%2FOJ2WD3Sq8WIC3NikWZcC%2BMpEn7c7HAhNxssEKSZkw9Y72zLboiVBdIInuBy890vnaf1LUfXxs%2FJoRgbxaZYaEOErrT5IOuAKV6RXG1Is03XJLviBfDuAnib38F%2FWXKbrSXriynbxTDdyvp4odCK%2F3UPaH3XX1ALfLquPIHRbZ%2BRQdVe8TLVWGr8fvvH1mWvUgXPK6j&amp;nvMid=82624333000&amp;catId=50000831"><img
												width="168" height="168" alt="남자 머슬핏 여름 골지 반팔니트 카라티셔츠 얇은"
												src="https://shop-phinf.pstatic.net/20210406_247/1617691967412rGBnV_JPEG/SE-51a0c376-3e92-40a5-bf7c-74ae6af41219.jpg?type=w860"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:82624333000,r:1"
													title="남자 머슬핏 여름 골지 반팔니트 카라티셔츠 얇은"
													href="https://cr.shopping.naver.com/adcr.nhn?x=3bPhZEkzErLT3Z1dwwrBRv%2F%2F%2Fw%3D%3DsKGspJ%2FT532ta1Q1u1xBAymgZYxfNo8iia%2BhhbcqKPaZfC6mqOnapDlL3YPLMnKkgXqyL0PBEiXHeygx0%2FBruvf8a0blMQcZruZLD7oHH3OebduSxNumRjqfDoKN%2BIfVWjPPaNXv3iZlS6o92XXx555z%2Fxw7SCIdeCq2hlmHX9BmOCLdceG7arL2WGhBBYSncSE40mlX26ey5Y7AD%2BqeO7ycX2AUq8VPh3PK%2Fo8l8aTkQ30gwb0ZAWnfX3Zzr1ayRgdKIjkE%2BRTI0YnRUMgbKMCceTRyQc%2B5inm7JOX8supUzw6RiK2m4radrqdOg2kX4ueCfFDuywxl3T1PQ6PKMjF5qtMG%2FJ0PUtQjclakIAMhD%2FN9f%2Br8WndMthdRRRWgDe%2B3QBFaC9wa5%2BzQfdWm0pvT%2FE8WoFK%2B2nB0P%2FgYpZ3UJGH0%2BquGjhu%2BFAJAbIRzzgB%2B13tC2q5wooFP6bFbCsrMhwjvlaWI4Q%2Bh8TpCXxtuD2tdTWmzS7Dsk5%2FOJ2WD3Sq8WIC3NikWZcC%2BMpEn7c7HAhNxssEKSZkw9Y72zLboiVBdIInuBy890vnaf1LUfXxs%2FJoRgbxaZYaEOErrT5IOuAKV6RXG1Is03XJLviBfDuAnib38F%2FWXKbrSXriynbxTDdyvp4odCK%2F3UPaH3XX1ALfLquPIHRbZ%2BRQdVe8TLVWGr8fvvH1mWvUgXPK6j&amp;nvMid=82624333000&amp;catId=50000831">남자
													머슬핏 여름 골지 반팔니트 카라티셔츠 얇은</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">26,900원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:1,i:82624333000" title="캉코어"
													href="https://smartstore.naver.com/slash_"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">캉코어</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:1,i:82624333000"
													href="https://cr.shopping.naver.com/adcr.nhn?x=3bPhZEkzErLT3Z1dwwrBRv%2F%2F%2Fw%3D%3DsKGspJ%2FT532ta1Q1u1xBAymgZYxfNo8iia%2BhhbcqKPaZfC6mqOnapDlL3YPLMnKkgXqyL0PBEiXHeygx0%2FBruvf8a0blMQcZruZLD7oHH3OebduSxNumRjqfDoKN%2BIfVWjPPaNXv3iZlS6o92XXx555z%2Fxw7SCIdeCq2hlmHX9BmOCLdceG7arL2WGhBBYSncSE40mlX26ey5Y7AD%2BqeO7ycX2AUq8VPh3PK%2Fo8l8aTkQ30gwb0ZAWnfX3Zzr1ayRgdKIjkE%2BRTI0YnRUMgbKMCceTRyQc%2B5inm7JOX8supUzw6RiK2m4radrqdOg2kX4ueCfFDuywxl3T1PQ6PKMjF5qtMG%2FJ0PUtQjclakIAMhD%2FN9f%2Br8WndMthdRRRWgDe%2B3QBFaC9wa5%2BzQfdWm0pvT%2FE8WoFK%2B2nB0P%2FgYpZ3UJGH0%2BquGjhu%2BFAJAbIRzzgB%2B13tC2q5wooFP6bFbCsrMhwjvlaWI4Q%2Bh8TpCXxtuD2tdTWmzS7Dsk5%2FOJ2WD3Sq8WIC3NikWZcC%2BMpEn7c7HAhNxssEKSZkw9Y72zLboiVBdIInuBy890vnaf1LUfXxs%2FJoRgbxaZYaEOErrT5IOuAKV6RXG1Is03XJLviBfDuAnib38F%2FWXKbrSXriynbxTDdyvp4odCK%2F3UPaH3XX1ALfLquPIHRbZ%2BRQdVe8TLVWGr8fvvH1mWvUgXPK6j&amp;nvMid=82624333000&amp;catId=50000831">리뷰
													<em class="imgList_num__K3JQN">141</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:1,i:82624333000"
													href="https://cr.shopping.naver.com/adcr.nhn?x=3bPhZEkzErLT3Z1dwwrBRv%2F%2F%2Fw%3D%3DsKGspJ%2FT532ta1Q1u1xBAymgZYxfNo8iia%2BhhbcqKPaZfC6mqOnapDlL3YPLMnKkgXqyL0PBEiXHeygx0%2FBruvf8a0blMQcZruZLD7oHH3OebduSxNumRjqfDoKN%2BIfVWjPPaNXv3iZlS6o92XXx555z%2Fxw7SCIdeCq2hlmHX9BmOCLdceG7arL2WGhBBYSncSE40mlX26ey5Y7AD%2BqeO7ycX2AUq8VPh3PK%2Fo8l8aTkQ30gwb0ZAWnfX3Zzr1ayRgdKIjkE%2BRTI0YnRUMgbKMCceTRyQc%2B5inm7JOX8supUzw6RiK2m4radrqdOg2kX4ueCfFDuywxl3T1PQ6PKMjF5qtMG%2FJ0PUtQjclakIAMhD%2FN9f%2Br8WndMthdRRRWgDe%2B3QBFaC9wa5%2BzQfdWm0pvT%2FE8WoFK%2B2nB0P%2FgYpZ3UJGH0%2BquGjhu%2BFAJAbIRzzgB%2B13tC2q5wooFP6bFbCsrMhwjvlaWI4Q%2Bh8TpCXxtuD2tdTWmzS7Dsk5%2FOJ2WD3Sq8WIC3NikWZcC%2BMpEn7c7HAhNxssEKSZkw9Y72zLboiVBdIInuBy890vnaf1LUfXxs%2FJoRgbxaZYaEOErrT5IOuAKV6RXG1Is03XJLviBfDuAnib38F%2FWXKbrSXriynbxTDdyvp4odCK%2F3UPaH3XX1ALfLquPIHRbZ%2BRQdVe8TLVWGr8fvvH1mWvUgXPK6j&amp;nvMid=82624333000&amp;catId=50000831">구매
													<em class="imgList_num__K3JQN">574</em>
												</a>
											</div>
										</div>
									<!-- 왼쪽 공간 -->
		   					
		   					</div>
		   					<div class="col-md-6 img js-fullheight">
		   					<div class="thumbnail_thumb_wrap__1pEkS _wrapper">
											<a target="_blank" class="thumbnail_thumb__3Agq6"
												rel="noopener"
												data-nclick="N=a:img*N.image,r:1,i:82045736177"
												href="https://cr.shopping.naver.com/adcr.nhn?x=CdEycFjjwHrmMTEV5BDTJP%2F%2F%2Fw%3D%3DshA7yYzfSZiwS7wydNV7N0Y0K0EmCj1R9DFz8TXZmBXguUKoD43mvASwPP50z%2FDoGQczHiSz34eXKxC78CVmMOJHAO4w5Cc2%2B9MN49o7ay%2BhGwKHkZL6SWiQTMD8nRWzPEIZJB1yuP5kkcuYnGBP9u15lR6A6AoLOUNkTpkfdGuyoOu8PRPuvK3DJyAKfiN5CcIvTNETYEiLYCo9MBGfj63oCbWK2D64oiyvtoMA577rFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDefPS9yJoR6X2wBCMbgHML2RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6okjp%2Fo6AhCcojP2niyDbKTXZF8GN97LD%2BvdJey3bbmB1V2tT2AG9M5jxdXEaCkbHF23ekimlubO3BdfMWKJiXWYtXNf1UuyDBExEGR1E7Ymv3YqcvbhM1ChkaoD7I%2FgLuHYBoLWhhC%2FI0bOXrA%2BGM4oJVb8Tg3qHR4VlkW7ccxkCBrb05ESjBoIpsseqDsWEQGnlTnUHWSz0DXhgZj%2Fe0sTs7CSFFshYTqDcZqV9hEKcNSim%2Fueal%2FFetCK%2BiwLe%2FnIv2RZfKmh9CcHX4vuyEkKHWbShlgoTsoatZ4RJ8CUEVMPAHBBzYJRFEHuGyYt0u3HICEQpPL7Rm%2B2fyhjEhHR&amp;nvMid=82045736177&amp;catId=50000833"><img
												width="168" height="168" alt="[특별기획] 8color 오버핏 여름 폴리 린넨셔츠"
												src="https://shop-phinf.pstatic.net/20190506_71/500194392_1557146370932S01BQ_JPEG/image_8707416561557145757141.jpg?type=w860"
												style="height: 80%; width: 80%;"></a>
										</div>
										<div class="imgList_info_area__-L6s4">
											<div class="imgList_title__3yJlT">
												<div class="imgList_label_wrap__36Uhj"></div>
												<a target="_black" class="imgList_link__XUg6J"
													rel="noopener"
													data-nclick="N=a:img*N.title,i:82045736177,r:1"
													title="[특별기획] 8color 오버핏 여름 폴리 린넨셔츠"
													href="https://cr.shopping.naver.com/adcr.nhn?x=CdEycFjjwHrmMTEV5BDTJP%2F%2F%2Fw%3D%3DshA7yYzfSZiwS7wydNV7N0Y0K0EmCj1R9DFz8TXZmBXguUKoD43mvASwPP50z%2FDoGQczHiSz34eXKxC78CVmMOJHAO4w5Cc2%2B9MN49o7ay%2BhGwKHkZL6SWiQTMD8nRWzPEIZJB1yuP5kkcuYnGBP9u15lR6A6AoLOUNkTpkfdGuyoOu8PRPuvK3DJyAKfiN5CcIvTNETYEiLYCo9MBGfj63oCbWK2D64oiyvtoMA577rFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDefPS9yJoR6X2wBCMbgHML2RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6okjp%2Fo6AhCcojP2niyDbKTXZF8GN97LD%2BvdJey3bbmB1V2tT2AG9M5jxdXEaCkbHF23ekimlubO3BdfMWKJiXWYtXNf1UuyDBExEGR1E7Ymv3YqcvbhM1ChkaoD7I%2FgLuHYBoLWhhC%2FI0bOXrA%2BGM4oJVb8Tg3qHR4VlkW7ccxkCBrb05ESjBoIpsseqDsWEQGnlTnUHWSz0DXhgZj%2Fe0sTs7CSFFshYTqDcZqV9hEKcNSim%2Fueal%2FFetCK%2BiwLe%2FnIv2RZfKmh9CcHX4vuyEkKHWbShlgoTsoatZ4RJ8CUEVMPAHBBzYJRFEHuGyYt0u3HICEQpPL7Rm%2B2fyhjEhHR&amp;nvMid=82045736177&amp;catId=50000833">[특별기획]
													8color 오버핏 여름 폴리 린넨셔츠</a>
											</div>
											<strong class="imgList_price_area__30DeO"><span><span
													class="price_num__2WUXn">17,800원</span></span></strong>
											<div class="imgList_mall_area__2dEKM">
												<a target="_blank" class="imgList_mall__qWV4h"
													rel="noopener"
													data-nclick="N=a:img*N.mall,r:1,i:82045736177" title="엠프로"
													href="https://smartstore.naver.com/m_pro"><span
													class="imgList_mall_icon__vyfFG"><em><span><span
																class="n_ico_npay_plus__1pi8I" style="margin-left: 4px">네이버플러스멤버십</span></span></em></span><em
													class="imgList_mall_title__3fLr4">엠프로</em></a>
											</div>
											<div class="imgList_etc_box__37vcN">
												<a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.comment,r:1,i:82045736177"
													href="https://cr.shopping.naver.com/adcr.nhn?x=CdEycFjjwHrmMTEV5BDTJP%2F%2F%2Fw%3D%3DshA7yYzfSZiwS7wydNV7N0Y0K0EmCj1R9DFz8TXZmBXguUKoD43mvASwPP50z%2FDoGQczHiSz34eXKxC78CVmMOJHAO4w5Cc2%2B9MN49o7ay%2BhGwKHkZL6SWiQTMD8nRWzPEIZJB1yuP5kkcuYnGBP9u15lR6A6AoLOUNkTpkfdGuyoOu8PRPuvK3DJyAKfiN5CcIvTNETYEiLYCo9MBGfj63oCbWK2D64oiyvtoMA577rFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDefPS9yJoR6X2wBCMbgHML2RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6okjp%2Fo6AhCcojP2niyDbKTXZF8GN97LD%2BvdJey3bbmB1V2tT2AG9M5jxdXEaCkbHF23ekimlubO3BdfMWKJiXWYtXNf1UuyDBExEGR1E7Ymv3YqcvbhM1ChkaoD7I%2FgLuHYBoLWhhC%2FI0bOXrA%2BGM4oJVb8Tg3qHR4VlkW7ccxkCBrb05ESjBoIpsseqDsWEQGnlTnUHWSz0DXhgZj%2Fe0sTs7CSFFshYTqDcZqV9hEKcNSim%2Fueal%2FFetCK%2BiwLe%2FnIv2RZfKmh9CcHX4vuyEkKHWbShlgoTsoatZ4RJ8CUEVMPAHBBzYJRFEHuGyYt0u3HICEQpPL7Rm%2B2fyhjEhHR&amp;nvMid=82045736177&amp;catId=50000833">리뷰
													<em class="imgList_num__K3JQN">999+</em>
												</a><a target="_black" class="imgList_etc__uDOVv" rel="noopener"
													data-nclick="N=a:img*N.purchase,r:1,i:82045736177"
													href="https://cr.shopping.naver.com/adcr.nhn?x=CdEycFjjwHrmMTEV5BDTJP%2F%2F%2Fw%3D%3DshA7yYzfSZiwS7wydNV7N0Y0K0EmCj1R9DFz8TXZmBXguUKoD43mvASwPP50z%2FDoGQczHiSz34eXKxC78CVmMOJHAO4w5Cc2%2B9MN49o7ay%2BhGwKHkZL6SWiQTMD8nRWzPEIZJB1yuP5kkcuYnGBP9u15lR6A6AoLOUNkTpkfdGuyoOu8PRPuvK3DJyAKfiN5CcIvTNETYEiLYCo9MBGfj63oCbWK2D64oiyvtoMA577rFSIVE2KtidcBeF3Cg9gDlpDgN2WrXhv2PHiscF9RNDefPS9yJoR6X2wBCMbgHML2RjyhZOCYbto%2B8uVKqDtK3SACfyUPb7GuBuWsGpjA91YrHsbeStsmJBfOvK7DA6okjp%2Fo6AhCcojP2niyDbKTXZF8GN97LD%2BvdJey3bbmB1V2tT2AG9M5jxdXEaCkbHF23ekimlubO3BdfMWKJiXWYtXNf1UuyDBExEGR1E7Ymv3YqcvbhM1ChkaoD7I%2FgLuHYBoLWhhC%2FI0bOXrA%2BGM4oJVb8Tg3qHR4VlkW7ccxkCBrb05ESjBoIpsseqDsWEQGnlTnUHWSz0DXhgZj%2Fe0sTs7CSFFshYTqDcZqV9hEKcNSim%2Fueal%2FFetCK%2BiwLe%2FnIv2RZfKmh9CcHX4vuyEkKHWbShlgoTsoatZ4RJ8CUEVMPAHBBzYJRFEHuGyYt0u3HICEQpPL7Rm%2B2fyhjEhHR&amp;nvMid=82045736177&amp;catId=50000833">구매
													<em class="imgList_num__K3JQN">999+</em>
												</a>
											</div>
										</div>
		   					<!-- 오른쪽 공간 -->
		   					
		   					</div>
	   					</div>
	   				</div>
				<!-- 작업공간 -->
		   			</div>
	    		</div>
	    </section>

      
      <footer class="ftco-footer ftco-section img">
	    	<div class="overlay"></div>
	      <div class="container">
	        <div class="row mb-5">
	          <div class="col-lg-3">
	            <div class="ftco-footer-widget mb-4">
	              <h2 class="ftco-heading-2 logo"><a href="index.html">PALETTE</a></h2>
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
	                <li><a href="home.do" class="py-2 d-block">main</a></li>
	                <li><a href="pcolor.do" class="py-2 d-block">personal color</a></li>
	                <li><a href="uploadForm.do" class="py-2 d-block">costume color</a></li>
	                <li><a href="boardList.do" class="py-2 d-block">community</a></li>
	                <li><a href="mypage.do" class="py-2 d-block">mypage</a></li>
	                <li><a href="login.do" class="py-2 d-block">login</a></li>
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