<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<%
	String email = (String) request.getAttribute("admin");
	%>

	
	<nav class="navbar navbar-expand-sm bg-dark   navbar-light">
		<div class="container-fluid d-flex justify-content-end ">
			<ul class="navbar-nav">
				<li class="nav-item"><a
					class="nav-link active text-white fs-5 mx-3 p-2" href="home">Home</a>
				</li>
				<li class="nav-item"><a
					class="nav-link text-white fs-5 mx-3 p-2 " href="student">Add Student</a></li>
				<ul class="navbar-nav">
					<li class="nav-item"><a
						class="nav-link active text-white fs-5 mx-3 " href="edit_student">Edit Student</a></li>
					<li class="nav-item"><a class="nav-link text-white fs-5 mx-3 "
						href="search">Search</a></li>
					<li class="nav-item"><a class="nav-link text-white fs-5 mx-3 "
						href="students">All Student</a></li>
						<li class="nav-item"><a
						class="nav-link active text-white fs-5 mx-3 " href="delete_student">Delete Student</a></li>
					<li class="nav-item"><a
						class="nav-link active text-white fs-5 mx-3 " href="log_out">Log Out</a></li>
					<li class="nav-item"><a
						class="nav-link active text-white fs-5 mx-3 " href="delete_admin?email=<%= email %>">Delete Admin</a></li>
					

				</ul>
		</div>
	</nav>
<div align="center">
<h1 class="text-primary mt-4">Welcome To Home Page</h1>
</div>

	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div class=" container alert alert-success  bg-success text-white my-4  " role="alert" style="width: 300px;" >
      <h1 class="fs-4 text-center " ><%=message%></h1> 
    </div>
	<%
	}
	%>


</body>
</html>