<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Status</title>
<style>
	.status a {
	margin:20px;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 18px;
    background: blue;
    color: white;
    text-decoration: none;
    font-weight: bold;
	}
	
	.vbut a {
    margin: 10px;
    margin-top:30px;
    padding: 15px;
    border-radius: 5px;
    background: blue;
    color: white;
    text-decoration: none;
    font-family: sans-serif;
    font-weight: bold;
    font-size: 18px;
}
</style>
</head>
<body>

<%@ page import="com.empform.Employee, com.empform.DBManage" errorPage="error.jsp" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
   response.setHeader("Pragma", "no-cache"); 
   response.setHeader("Expires", "0");
   response.setDateHeader("Expires", -1);
   session.invalidate();  
%>
<jsp:useBean id="a" class="com.empform.DBManage" ></jsp:useBean>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	int res = a.Delete(id);
	String s="";
	if(res>0){
		s="Record Deleted Succesfully";
	} else{
		s="Not Deleted !";
	}
	
%>

	<div class="status" >
		<h1><%=s %></h1>
		<a href="index.html" >New Register</a>
		<a href="View.jsp">View Applicants</a>
	</div>
	
</body>
</html>