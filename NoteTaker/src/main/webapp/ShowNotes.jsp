<%@page import="org.hibernate.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.factoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes</title>
<%@include file="All_css_js.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>ALL NOTES:</h1>
	</div>
	<div class="row">
	<div class="col-12">
	
	<%
	Session s=factoryProvider.getFactory().openSession();
	Query q=s.createQuery("from Note");
	List<Note> list=q.list();
	for(Note note :list){
		
    %>
    <div class="card mt-3" >
     <img class="card-img-top m-2 mx-auto " style="max-width: 90px;"src="img/notepad.png" alt="Card image cap">
  <div class="card-body px-5">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent()%></p>
     <div class="container text-center m-2">
     <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
      <a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
     
     </div>
  
  </div>
</div>
		
	<% 
		
		//out.println(note.getId()+ " "+ note.getTitle()+"<br>"+note.getContent());
	}
	s.close();
	%>
	
	</div>
	</div>
	
	
</body>
</html>