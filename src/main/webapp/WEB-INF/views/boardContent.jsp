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
    function goDel(board_idx){
        location.href="${cpath}/boardDelete.do?board_idx="+board_idx;
     }
  
     function goList(){
        location.href="${cpath}/boardList.do"
     }      
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
    function replyDel(reply_idx){
        location.href="${cpath}/replyDelete.do?reply_idx="+reply_idx;
        history.go(0);
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
                   <jsp:param name="pageSelection" value="4" />
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
           <div method="post" action="${cpath}/loginCheck.do" class="loginForm">
                  <c:choose>
                     <c:when test="${userVO==null}">
                        <a href = "${cpath}/login.do" style="color:white;">Login</a>
                     </c:when>
                     <c:otherwise>
                        <div class="btn" style="color : white;">${userVO.user_name}</div>
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
               <h1 class="bread">Community</h1>
             </div>
           </div>
         </div>
      </section>

       <section class="ftco-section ftco-no-pt ftco-no-pb ftco-about ftco-counter">
         <br>
            <div class="container">               
               <div class="panel panel-default">
                  <br>
                  <div class="panel-body">
                     <form id="frm" method="post" action="${cpath}/boardUpdate.do">
                        <input type="hidden" name="board_idx" value="${vo.board_idx}">
                        <div class="form-group">
                           <label>제목</label> 
                           <input type="text" class="form-control" id="title" name="board_title" value="${vo.board_title}">
                        </div>
                        <div class="form-group" style="height: 270px;">
                           <label>내용</label>
                           <textarea class="form-control" rows="5" id=contents name="board_contents">${vo.board_contents}</textarea>
                           <br>
                        </div>
                        <div class="form-group">
                        <br>
                           <label>작성자</label> 
                           <input type="text" class="form-control" id="writer" name="user_id" value="${vo.user_id}" readonly="readonly">
                        </div>
                        <br>
                        <div align='right'>
                        <input type="submit" value="수정" class="btn btn-light" style="width: 80px; height: 52px;">
                        <input type='button' value='삭제' class="btn btn-light" style="width: 80px; height: 52px;" onclick="goDel(${vo.board_idx})"> 
                        <input type='button' value='목록' class="btn btn-light" style="width: 80px; height: 52px;" onclick="goList()">
                        </div>
                           <br>
                           <br>                           
                     </form>
                     <c:if test="${userVO!=null}">
                     <div class="container">                        
                           <form id="commentForm" name="commentForm" method="post" action="${cpath}/replyInsert.do">
                           <input type="hidden" id="user_id" name="user_id" value="${userVO.user_id}">
                            <input type="hidden" id="board_idx" name="board_idx" value="${vo.board_idx}"> 
                              <br> <br>
                              <div>
                                 <div>
                                    <span><strong>Comments</strong></span> <span id="cCnt"></span>
                                 </div>
                                 <div>
                                    <p>
                                       <textarea rows="5" cols="50" name="reply_text" class="form-control" placeholder="댓글을 입력하세요" ></textarea>
                                    </p>
                                    <p align="right">
                                       <button type="submit" class="btn btn-light" style="width: 110px; height: 52px;">댓글 작성</button>
                                    </p>
                                 </div>
                              </div>
                           </form>                     
                     </div>
                     </c:if>
                     <br>
                     <br>
                     <div class="container">                        
                           <c:forEach var="vo" items="${list}">
                              <div>
                                 <div>
                                    <span><strong>${vo.user_id}</strong></span> <span id="cCnt">${vo.reply_indate}</span>
                                 </div>
                                 <div style="height:70px">
                                    <textarea rows="5" cols="50" name="reply_text" class="form-control">${vo.reply_text}</textarea>
                                 </div>
                                 <c:if test="${userVO!=null}">
                                 <div align="right">
                                    <button type="button" class="btn btn-light" onclick="replyDel(${vo.reply_idx})">삭제</button>
                                 </div>
                                 </c:if>
                              </div>
                           </c:forEach>                  
                     </div>
                  </div>
               </div>
            </div>
            <br>
         </section>

      
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