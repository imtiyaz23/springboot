<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="All_css_js.jsp"%>
<title>Add Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<h1>Please fill your notes detail</h1>
		<br>

		<!-- form  -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Titlle here" />

			</div>
			<div class="form-group">
				<label for="content">Note content</label>
				<textarea name="content" required id="content"
					placeholder="enter content here" class="form-control"
					style="height: 300px"></textarea>
				<div class="container text-center">
					<br>
					<button type="submit" class="btn btn-primary">ADD</button>
				</div>
		</form>
	</div>


</body>
</html>