<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
  <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
  <%@page import="com.demo1.EmpDao, java.util.* , com.demo.Employee" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
   
   
               <%
                   String id=request.getParameter("id");
               Employee e1= EmpDao.getRecordById(Integer.parseInt(id));
                      
                  
               %>
               




                 <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
 update Employee
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">




         <!-- form -->
         
   <form class="row g-3"  action="editemp.jsp" method="post">

    
    <input type="hidden" class="form-control" name="id" id="inputEmail4" value="<%=e1.getId() %>">

  <div class="col-md-6">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" name="name" id="inputEmail4" value="<%=e1.getName() %>">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" name="password"  id="inputPassword4" value="<%=e1.getPassword() %>">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Email</label>
    <input type="email" class="form-control" name="email"  id="inputAddress"  value="<%=e1.getEmail()  %>">
  </div>
    <div class="col-md-6">
    <label for="gender" class="form-label">Gender </label>
  </div>
  <div class="col-md-12">
  
    <label for="gender" class="form-label">Male</label>
    <input type="radio"  name="sex" value="male"  id="inputAddress2">
    <label for="inputCity" class="form-label">Female</label>
    <input type="radio"   name="sex" value="female"  id="inputCity">
  </div>

  <div class="col-md-4">
    <label for="inputcountry" class="form-label">Country</label>
    <select id="inputcountry" name="country" class="form-select">
      <option selected>India</option>
      <option>Pakistan</option>
      <option>USA</option>
      <option>UK</option>
    </select>
  </div>
  


  <div class="col-12">
    <button type="submit" class="btn btn-primary">Edit & save</button>
  </div>
</form>
     </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>
       
       
       
       
       
          <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>