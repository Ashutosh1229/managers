<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
     <head>
          <meta charset="ISO-8859-1">
          <title>Login Failed</title>
    	  <style>
    	  	table{
				margin: auto;
				text-align: center;
				vertical-align: middle;
				height: 200px;
				width: 500px;
			}
			input{
				width: 80%;
			}
     		fieldset{
				margin: auto;
				width:40%;
			}
			legend{
				color: blue;
			}
     	</style>
     </head>
     <body>
          <center><h1>Manager Login</h1></center>
          <fieldset>
		<legend>Login</legend>
          <form:form action="login" method="post" modelAttribute="userLogin" >
               <table>
                   <tr><td> <label for="username" >User Name</label></td>
                    
                         <td><form:input path="username" cssClass="form-control" required="required" />
               </td></tr>

               <tr><td>
                    <label for="password">Password</label></td>
                   <td>
                         <form:input path="password" cssClass="form-control" required="required" />
                    </td>
               </tr>

               <tr>
               <td colspan=2>
                         <form:button>Login</form:button></td></tr> 
                          <tr>
               <td colspan=2>
                         <p style="color:red">${msg}</p></td></tr>  
               </table>
               </form:form>
               </fieldset>
               
     </body>
</html>