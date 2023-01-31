<%@page import="com.ellipsonic.employee.dto.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch All</title>
</head>
<body>
<%List<Employee> list=(List<Employee>)session.getAttribute("list");%>

<h1>List Of All EMployees</h1>
<table border="1">
<tr>
<td>Full Name</td>
<td>Country</td>
<td>Email</td>
<td>Mobile</td>
<td>Country</td>
<td>State</td>
<td>DOB</td>
<td>Skills</td>
<td>Delete</td>
</tr>
<%for(Employee employee:list) {%>
<tr>
<td><%=employee.getFullName() %></td>
<td><%=employee.getCountry() %></td>
<td><%=employee.getEmail() %></td>
<td><%=employee.getMobile() %></td>
<td><%=employee.getCountry() %></td>
<td><%=employee.getState() %></td>
<td><%=employee.getDob() %></td>
<td>
<%
String[] skills=employee.getSkill();
for(String s:skills)
{%>
<%=s %>, 
<%
}
%>
</td>
<td><a href="delete?id=<%=employee.getId()%>"><button>Delete</button></a></td>
</tr>

<%} %>

</table>
</body>
</html>