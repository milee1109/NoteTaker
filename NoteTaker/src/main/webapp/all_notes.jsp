<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file='base.jsp'%>

<title>See All Notes:Note Taker</title>
</head>
<body>
	<div class="container text-center">
		<%@include file='navbar.jsp'%>
		<br>
		<h1 class="text-uppercase">All Notes</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt-3">
					<img class="card-img-top m-4 mx-auto" style="max-width: 100px;text-align:center"
						src="img/note.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getSubtitle()%>
						</p>
						<p><b class="text-primary"><%= note.getAddedDate() %></b></p>
						<div class="container text-center">
							<a href="DeleteNoteServlet?id=<%=note.getId() %>" class="btn btn-danger">Delete</a> 
							<a href="edit.jsp?id=<%=note.getId() %>"	 class="btn btn-primary">Edit</a>
						</div>
					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>

	</div>
</body>
</html>