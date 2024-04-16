<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered Applicants</title>
<style>
	table td{
		height:20px;
		width:350px;
		padding:5px;
	}
	
	table th{
		background:green;
		color:white;
	}
	
	table tr:nth-child(even){
		background:#f2f2f2;
	}
	
	
	.status a {
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 18px;
    background: blue;
    color: white;
    text-decoration: none;
    font-weight: bold;
	}
	
	.tab{
		margin-top:25px;
	}
	
</style>
</head>
<body>
<%@ page import="java.util.ArrayList,com.empform.DBManage, com.empform.Employee" errorPage="error.jsp" %>
<jsp:useBean id="e" class="com.empform.DBManage" ></jsp:useBean>
	<%
		out.print("<table border='1' rules = 'all'>");
		ArrayList<Employee> a = new ArrayList<Employee>();
		a=e.select(); 
		
		out.print("<tr><th>ID</th>"+"<th>First Name</th>"+"<th>Last Name</th>"+"<th>Email Name</th>"+"<th>Contact</th>"+"<th>Year Of Passing</th>"+
		"<th>Gender</th>"+"<th>LPA</th>"+"<th>Current Location</th>"+"<th>Preffered Location</th>"+"<th colspan='2' >Operations</th></tr>");
		for(Employee i:a){
			out.print("<tr>");
			out.print("<td>"+i.getId()+"</td>");
			out.print("<td>"+i.getFname()+"</td>");
			out.print("<td>"+i.getLname()+"</td>");
			out.print("<td>"+i.getEmail()+"</td>");
			out.print("<td>"+i.getContact()+"</td>");
			out.print("<td>"+i.getYop()+"</td>");
			out.print("<td>"+i.getGender()+"</td>");
			out.print("<td>"+i.getLpa()+"</td>");
			out.print("<td>"+i.getCloc()+"</td>");
			out.print("<td>"+i.getPloc()+"</td>");
			out.print("<td><a href='UpdateForm.jsp?id="+i.getId()+"'>Update</a></td>");
			out.print("<td><a href='Delete.jsp?id="+i.getId()+"'>Delete</a></td>");
			out.print("</tr>");
		}
		out.print("</table>");
		
		out.print("<table class='tab' >");
		out.print("<tr>");
		out.print("<td>");
		out.print("<div class='status' ><a href='index.html'>Home</a></div>");
		out.print("</td>");
		out.print("</tr>");
		out.print("</table>");
		%>
		
</body>
</html>