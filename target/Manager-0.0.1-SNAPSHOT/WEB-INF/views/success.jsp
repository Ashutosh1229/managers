<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Flight Search</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

  </head>
  <body>

    <form:form method = "GET" action="/FlightWeb/logout" cssClass="form-horizontal" style="margin-top:1rem;margin-left: 90%;">
      <div class="form-group">
        <div class="col-md-offset-3 col-md-9">
          <button>Logout</button>
        </div>
      </div>
    </form:form>         

    <h3 style="text-align: center;margin:1rem;">Flight Search</h3>
    
    <form:form method="POST" action="/FlightWeb/search" modelAttribute="schedule" style="margin-left: 8rem;" >
      <form:hidden path="flightNo" />    

      <label style="font-weight: bold;">Departure Location</label>
      <form:select path="depLoc" required="required"> 
        <option value = ""> Select </option>  
        <option value = "DEL"> DEL </option>  
        <option value = "MUB"> MUB </option>  
        <option value = "BGR"> BGR </option>    
      </form:select>  
      
            
      <label style="font-weight: bold;">Arrival Location</label>
      <form:select path="arrLoc" required="required">  
        <option value = ""> Select </option> 
        <option value = "MUB"> MUB </option> 
        <option value = "DEL"> DEL </option>   
        <option value = "BGR"> BGR </option>    
      </form:select>  

      <label style="font-weight: bold;">Date</label>
      <form:input type="date" path="validTill" required="required" />
      
      <label style="font-weight: bold;">Flight Class</label>
      <form:select path="flightClass" required="required">  
        <option value = ""> Select </option> 
        <option value = "E"> E-Economic </option> 
        <option value = "EB"> B-Business </option>   
      </form:select> 
      
      <label style="font-weight: bold;">Sort By</label>
      <select name="sortby" required="required"> 
        <option value="LP">Flight Fare</option>
        <option value="LDP">Flight Time</option>
        <option value="D">Both</option> 	  
      </select>  

      <button>search</button>
    </form:form>
      
    <div class="panel-body">
      <table class="table table-striped table-bordered">
        <tr>
          <th>Flight No</th>
          <th>Departure</th>
          <th>Arrival</th>
          <th>Valid Till</th>
          <th>Flight Time</th>
          <th>Flight Duration</th>
          <th>Fare</th>
          <th>Seats Availability</th>
          <th>Class</th>
        </tr>

        <c:forEach var="tempFlight" items="${flights}">
          <tr>
            <td>${tempFlight.flightNo}</td>
            <td>${tempFlight.depLoc}</td>
            <td>${tempFlight.arrLoc}</td>
            <td>${tempFlight.validTill}</td>
            <td>${tempFlight.flightTime}</td>
            <td>${tempFlight.flightDur}</td>
            <td>${tempFlight.fare}</td>
            <td>${tempFlight.seatAvail}</td>
            <td>${tempFlight.flightClass}</td>
          </tr>
        </c:forEach>
      </table>
      <p style="text-align:center; color:blue;">${isempty}</p>
    </div>  
  </body>
</html>