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
   >퍼스널 컬러 진단</a>
</li>

<li>
   <a href="uploadForm.do"
      <%
         if(num.equals("3")){
      %>
         style="color:#f8b500;"
      <% } %>
   >의상 색상 적합도 진단</a>
</li>