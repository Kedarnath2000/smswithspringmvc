<%@page import="com.jspiders.smswithspringmvc4.pojo.StudentPOJO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="navigation.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-5 ">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<div align="center">
					<form action="delete_student" method="post">
						<table class="table table-bordered border-primary border rounded "
							style="width: 380px;">
							<tr>
								<td class="fs-5 ">Enter the Id</td>
								<td><input type="text" name="id"
									class="fs-5 border border-warning rounded "></td>
							</tr>
						</table>
						<input type="submit" value="delete"
							class="btn btn-primary fs-5 px-5 ">
					</form>

				</div>
			</div>
			<div class="col-4"></div>

		</div>

	</div>

	<div align="center">
		<%
		List<StudentPOJO> students = (List<StudentPOJO>) request.getAttribute("students");
		if (students != null && students.size() > 0) {
		%>
		<div class="container">
			<div class="row">
				<div class="col-2"></div>
				<div class="col-8">
					<div class="container mt-5 ">
						<table class="table table-success table-striped">
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Email</th>
								<th>Mobile</th>
								<th>Age</th>
							</tr>
							<%
							for (StudentPOJO student : students) {
							%>
							<tr>
								<td><%=student.getId()%></td>
								<td><%=student.getName()%></td>
								<td><%=student.getEmail()%></td>
								<td><%=student.getMobile()%></td>
								<td><%=student.getAge()%></td>
							</tr>
							<%
							}
							%>
						</table>
					</div>
				</div>
				<div class="col-2"></div>
			</div>
		</div>
		<%
		} else {
		%>
		<div
			class=" container alert alert-danger  bg-danger text-white my-5  "
			role="alert" style="width: 400px;">
			<h1 class="fs-2 text-center ">Student not found</h1>
		</div>
		<%
		}
		%>

	</div>

	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<%
	if(message.equals("Student deleted")){
	%>
	<div
		class=" container alert alert-success  bg-success text-white my-2  "
		role="alert" style="width: 300px;">
		<h1 class="fs-2 text-center "><%=message%></h1>
	</div>
	<%
	}else{
	%>
	<div
		class=" container alert alert-danger  bg-danger text-white my-2  "
		role="alert" style="width: 400px;">
		<h1 class="fs-2 text-center "><%=message%></h1>
	</div>
	<%
	}
	%>
	<%
	}
	%>

</body>
</html>