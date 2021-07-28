<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
     <head>
          <meta charset="ISO-8859-1">
          <title>Login</title>
          <link href="<c:url value="resources/css/stylesheet.css" />" rel="stylesheet">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
     </head>
     <body>
          <h4 style = "margin-left: 45%;">Login</h4>
          <form:form action="login" cssClass="form-horizontal" method="post" modelAttribute="userLogin" >
               <div class="form-group">
                    <label for="username" class="col-md-5 control-label">User Name</label>
                    <div class="col-md-9">
                         <form:input path="username" cssClass="form-control" required="required" />
                    </div>
               </div>

               <div class="form-group">
                    <label for="password" class="col-md-3 control-label">Password</label>
                    <div class="col-md-9">
                         <form:input path="password" cssClass="form-control" required="required" />
                    </div>
               </div>

               <div class="form-group">
                    <div class="col-md-offset-3 col-md-9">
                         <form:button cssClass="btn btn-primary">Login</form:button> <p style="color:red">${msg}</p>  
                    </div>
               </div>
               </form:form>
               
     </body>
</html>