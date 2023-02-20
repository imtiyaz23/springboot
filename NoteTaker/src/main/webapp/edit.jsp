<%@page import="com.entities.Note"%>
<%@page import="com.helper.factoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit notes</title>
<%@include file="All_css_js.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit Your Note</h1>
		<br>
		<%
		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
		Session s=factoryProvider.getFactory().openSession();
		Note note=(Note)s.get(Note.class, noteId);
		 
		%>
		<form action="UpdateServlet" method="post">
		<input value="<%=note.getId()%>" name="noteId" type="hidden">
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" 
					placeholder="Enter Titlle here"value="<%= note.getTitle() %>"
					 />

			</div>
			<div class="form-group">
				<label for="content">Note content</label>
				<textarea name="content" required id="content"
					placeholder="enter content here" class="form-control"
					style="height: 300px"><%=note.getContent() %>
					
					</textarea>
				<div class="container text-center">
					<br>
					<button type="submit" class="btn btn-success">Save Your Note</button>
				</div>
		</form>
		
		
		
	</div>
</body>
</html>