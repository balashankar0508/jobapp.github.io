<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Form</title>
<link href="style.css" type="text/css" rel="stylesheet" />
<script src="script.js" defer></script>
</head>
<body>
<%@ page import=" com.empform.Employee" errorPage="error.jsp" %>
<jsp:useBean id="a" class="com.empform.DBManage" ></jsp:useBean>
<% 
	int id = Integer.parseInt(request.getParameter("id")); 
	Employee emp = a.getEmpByID(id);
	
	String fname = emp.getFname();
	String lname = emp.getLname();
	String email = emp.getEmail();
	String contact = emp.getContact();
	String yop = emp.getYop();
	String gender = emp.getGender();
	String lpa = emp.getLpa();
	String cloc = emp.getCloc();
	String ploc = emp.getPloc();
%>


	<div class="container">
      <form id="form" method="post" action="Update.jsp">
        <h1>Update Employee Register</h1>
        
        <div class="input-group">
          <label>ID<span>*</span></label>
          <input type="number" id="id" name="id"  value="<%=id %>" readonly />
          <div class="error"></div>
          </div>
        
        <div class="input-group">
          <label>First Name <span>*</span></label>
          <input type="text" id="fname" name="fname" value="<%=fname %>" />
          <div class="error"></div>
        </div>
        <div class="input-group">
          <label>Last Name <span>*</span></label>
          <input type="text" name="lname" id="lname" value="<%=lname %>" />
          <div class="error"></div>
        </div>

        <div class="input-group">
          <label>Email <span>*</span></label>
          <input type="text" name="email" id="email" value="<%=email %>" />
          <div class="error"></div>
        </div>

        <div class="input-group">
          <label>Contact (add +91) <span>*</span></label>
          <input type="text" name="contact" id="contact" value="<%=contact %>"  />
          <div class="error"></div>
        </div>
        <div class="input-group">
          <label>Year Of Graduation <span>*</span></label>
          <input type="text" name="yop" id="yop" maxlength="4" value="<%=yop %>" />
          <div class="error"></div>
        </div>
        <div class="input-group">
          <label>Gender <span>*</span></label>
          <select name="gen" id="gen">
            <option value="Male" <%=gender.equals("Male")?"selected":"" %>>Male</option>
            <option value="Female" <%=gender.equals("Female")?"selected":"" %>>Female</option>
            <option value="Not willing to discose" <%=gender.equals("Not willing to discose")?"selected":"" %>>Not willing to disclose</option>
          </select>
          <div class="error"></div>
        </div>
        <div class="input-group">
          <label>Expected LPA <span>*</span></label>
          <select name="lpa" id="lpa">
            <option value="3-5" <%=lpa.equals("3-5")?"selected":"" %>>3-5</option>
            <option value="5-7" <%=lpa.equals("5-7")?"selected":"" %>>5-7</option>
            <option value="7-9" <%=lpa.equals("7-9")?"selected":"" %>>7-9</option>
            <option value="10+" <%=lpa.equals("10+")?"selected":"" %>>10+</option>
            <option value="Not Applicable" <%=lpa.equals("Not Applicable")?"selected":"" %>>Not Applicable</option>
          </select>
          <div class="error"></div>
        </div>
        <div class="input-group">
          <label>Current Location <span>*</span></label>
          <input type="text" name="location" id="cloc" value="<%=cloc %>" />
          <div class="error"></div>
        </div>
        <div class="input-group">
          <label>Preferred Location <span>*</span></label>
          <select name="ploc" id="ploc">
            <option value="Chennai" <%= ploc.equals("Chennai")?"selected":"" %>>Chennai</option>
            <option value="Trichy" <%= ploc.equals("Trichy")?"selected":"" %> >Trichy</option>
            <option value="Coimbatore" <%= ploc.equals("Coimbatore")?"selected":"" %> >Coimbatore</option>
          </select>
          <div class="error"></div>
        </div>
        <button type="submit">Update</button>
        <div class="vbut">
          <a href="View.jsp">View Applicants</a>
          <a href="index.html">Home</a>
        </div>
      </form>
    </div>

</body>
</html>