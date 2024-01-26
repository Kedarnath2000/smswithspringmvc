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

	<%
	List<StudentPOJO> students = (List<StudentPOJO>) request.getAttribute("students");
	if (students != null && students.size() > 0) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<div class="container mt-5 " >
					<table class="table table-success table-striped" >
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
	<div align="center">
		<h1>Student not found</h1>
	</div>
	<%
	}
	%>
</body>
</html>