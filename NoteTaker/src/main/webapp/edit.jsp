<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file='base.jsp'%>
<title>Update Notes: Note Taker</title>
</head>
<body>
	<div class="container text-center">
		<%@include file='navbar.jsp'%>
		<h1>Edit Your Note</h1>
		<br>
		<%
		int id = Integer.parseInt(request.getParameter("id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = s.get(Note.class, id);

		s.close();
		%>
		<form action="UpdateServlet" method="post">
		<input value="<%= note.getId() %>" name="id" type="hidden"/>
			<div class="form-group">
				<label for="exampleInputEmail1">Note Title</label> <input
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here" name="title"
					value="<%= note.getTitle() %>"
					required>
			</div>
			<div class="form-group">
				<label for="content" >Note Content</label>
				<textarea name="content" id="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 300px" 
					 
					 required> <%= note.getSubtitle() %> </textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Your Note</button>
			</div>
	</div>
	</form>
	</div>
</body>
</html>