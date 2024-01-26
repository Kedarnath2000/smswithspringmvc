<%@page import="com.jspiders.smswithspringmvc4.pojo.StudentPOJO"%>
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
	StudentPOJO student = (StudentPOJO) request.getAttribute("student");
	if (student != null) {
	%>
	<div class="container mt-5 ">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<div align="center">
					<form action="update_student" method="post">
						<table border="1px solid"
							class="table table-bordered border-primary border rounded "
							style="width: 350px;">
							<tr>
								<td class="fs-5 ">Id</td>
								<td><input type="text" name="id"
									value="<%=student.getId()%>" readonly="true"
									class="fs-5 border border-warning rounded "></td>
							</tr>
							<tr>
								<td class="fs-5 ">Name</td>
								<td><input type="text" name="name"
									value="<%=student.getName()%>"
									class="fs-5 border border-warning rounded "></td>
							</tr>
							<tr>
								<td class="fs-5 ">Email</td>
								<td><input type="text" name="email"
									value="<%=student.getEmail()%>"
									class="fs-5 border border-warning rounded "></td>
							</tr>
							<tr>
								<td class="fs-5 ">Mobile</td>
								<td><input type="text" name="mobile"
									value="<%=student.getMobile()%>"
									class="fs-5 border border-warning rounded "></td>
							</tr>
							<tr>
								<td class="fs-5 ">Age</td>
								<td><input type="text" name="age"
									value="<%=student.getAge()%>"
									class="fs-5 border border-warning rounded "></td>
							</tr>
						</table>
						<input type="submit" value="update" class="btn btn-primary fs-5 px-5 " >
					</form>
				</div>
			</div>
			<div class="col-4"></div>

		</div>

	</div>
	<%
	} else {
	%>
	<div class=" container alert alert-danger  bg-danger text-white my-5  " role="alert" style="width: 400px;" >
      <h1 class="fs-2 text-center " >Student not found</h1> 
    </div>
	<%
	}
	%>
</body>
</html>