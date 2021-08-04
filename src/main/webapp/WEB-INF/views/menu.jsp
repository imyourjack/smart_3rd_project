<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<%
   String num = request.getParameter("pageSelection");
   System.out.println(num);
%>

<li>
   <a href="pcolor.do"
      <%
         if(num.equals("2")){
      %>
         style="color:#f8b500;"
      <% } %>
   >personal color</a>
</li>

<li>
   <a href="boardList.do"
      <%
         if(num.equals("4")){
      %>
         style="color:#f8b500;"
      <% } %>
   >게시판</a>
</li>

<li>
   <a href="login.do"
      <%
         if(num.equals("5")){
      %>
         style="color:#f8b500;"
      <% } %>
   >로그인</a>
</li>