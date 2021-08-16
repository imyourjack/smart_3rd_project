<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>PALETTE</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
</head>
<body>
	<div class="page">
	 <div id="colorlib-page">
   	    <section class="ftco-section ftco-no-pb ftco-no-pt">
	    	<div class="container-fluid px-0">
	    		<div class="row no-gutters">
	    			<div class="col-md-12 blog-wrap">
	    				<div class="row no-gutters align-items-center">
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/pcc1.jpg);"></div>
	    					<div class="col-md-6 img js-fullheight" style="background-image: url(${pageContext.request.contextPath}/resources/images/pcc2.jpg);"></div>
	    					<div class="col-md-6">
	    						<div class="text p-md-5 p-4 ftco-animate">
									<!-- 웹 카메라 연결 코드 -->
									<!-- <video id="video" width="320" height="240" autoplay></video>
									   <canvas id="canvas" width="960" height="720"></canvas>
									   <button type="button" id="webcamBtn">캡쳐하기</button> -->
									   
									<!-- 안드로이드 카메라 연결 코드 -->
								    <form id="take" action="${cpath}/uploadFormActionPersonal.do?user_id=${sessionScope.userVO.user_id}" method="POST" enctype="multipart/form-data" style="text-align: center;"> 
								    	<label for="cap" class="btn btn-primary btn-sm" style="width: 150px; height: 40px; font-size: 20px;">사진업로드     <span class="ion-ios-arrow-forward"></span></label>
								    	<!-- <input type="file" id= "cap" name="personalPhoto" accept="image/*" capture="camera" id="camera" style="display:none;"/> -->
								    	<input type="file" id="cap" name="uploadFile" multiple="multiple" style="display:none;">
								    	<label for="cap2" class="btn btn-primary btn-sm" style="width: 150px; height: 40px; font-size: 20px;">진단하기     <span class="ion-ios-arrow-forward"></span></label>
								    	<button id="cap2" style="display:none;">진단</button>
								    </form>
	    						</div>
	    					</div>
	    				</div>
	    			</div>

	    		</div>
	    	</div>
	    </section>
	 </div>
	</div>
   <script>
      if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
         navigator.mediaDevices.getUserMedia({
            video : true
         }).then(function(stream) {
            var video = document.getElementById('video');
            video.srcObject = stream;
            video.play();
         });
      }

          
      var canvas = document.getElementById('canvas');
      var context = canvas.getContext('2d');
      var video = document.getElementById('video');
      document.getElementById("webcamBtn").addEventListener("click",
            function() {
               context.drawImage(video, 0, 0, 960, 720);
            });
   </script>
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
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>