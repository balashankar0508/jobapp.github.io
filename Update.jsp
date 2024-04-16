<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Status</title>
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
</style>
</head>
<body>
<%@ page errorPage="error.jsp" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
   response.setHeader("Pragma", "no-cache"); 
   response.setHeader("Expires", "0");
   response.setDateHeader("Expires", -1);
   session.invalidate();  
%>
<jsp:useBean id="a" class="com.empform.DBManage" ></jsp:useBean>
		<% 
		int id = Integer.parseInt(request.getParameter("id"));
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String yop = request.getParameter("yop");
		String gender = request.getParameter("gen");
		String lpa = request.getParameter("lpa");
		String cloc = request.getParameter("location");
		String ploc = request.getParameter("ploc");
		
		
		int res=a.Update(id, fname, lname, email, contact, yop, gender, lpa, cloc, ploc);
		String s ="";
		
		if(res>0){
			s="Updated Successfully :)";
		}
		else{
			s="Sorry :( Not Updated Successfully";
		}
		
		%>
		
		
		<div class="status" >
		<h1><%=s %></h1>
		<a href="index.html" >New Register</a>
		</div>
</body>
</html>