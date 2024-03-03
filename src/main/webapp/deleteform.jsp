<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.demo1.EmpDao, java.util.* , com.demo.Employee" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
   
   
               <jsp:useBean id="e1" class="com.demo.Employee"></jsp:useBean>
                  <jsp:setProperty property="*" name="e1"/>
                  
                  <%
                  
                               int i= EmpDao.delete(e1);
                                  response.sendRedirect("viewemp.jsp");
                  
                  %>
               



</body>
</html>