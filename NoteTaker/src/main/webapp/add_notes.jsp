<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file='base.jsp'%>

<title>Add Notes</title>
</head>
<body>
	<div class="container text-center">
		<%@include file='navbar.jsp'%>
		<h1>Please fill your Note Detail</h1>
		<br>
		<!--Form Page  -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Note Title</label> <input
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here" name="title"
					required>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" id="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 300px" required></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
	</div>
	</form>
	</div>
</body>
</html>