<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMployee Systm</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
  <%@page import="com.demo1.EmpDao, java.util.* , com.demo.Employee" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
  
    <h1>Employee Details</h1>
    
      <%
                       List<Employee> l1=EmpDao.getAllRecords();
      
                   request.setAttribute("list", l1);
       
      %>
      
      
         <div class="container">
          <table class="table table-dark  table-hover">
          
                       <tr>
                             <th>ID</th>
                             <th>NAme</th>
                             <th>Password</th>
                             <th>Email</th>
                             <th>Gender</th>
                             <th>country</th>
                             <th>Edit</th>
                             <th>Delete</th>
                       </tr>
                       
                        <c:forEach items="${list}" var="e">
                        
                               <tr>
                                   <td>${e.getId()}</td>
                                     <td>${e.getName()}</td>
                                       <td>${e.getPassword()}</td>
                                       
                                         <td>${e.getEmail()}</td>
                                           <td>${e.getSex()}</td>
                                             <td>${e.getCountry()}</td>
                                               <td>

                                                           <a href="editform.jsp?id=${e.getId()}" class="btn btn-primary text-light text-decoration-none" >Edit</a>
                                                         
                                                  
                                               </td>
                                                 <td>
                                              
                                                         <a href="deleteform.jsp?id=${e.getId()}"class="text-light text-decoration-none btn btn-primary">Delete</a>
                                             
                                                 </td>
                        
                        
                        </tr>
                        
                        </c:forEach>
                       

			</table>
         
         </div>
         
         <a href="Home.jsp" class="btn btn-primary">Home</a>
         


</body>
</html>