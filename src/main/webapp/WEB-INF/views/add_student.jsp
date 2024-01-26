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
					<form action="add_student" method="post">
						<table class="table table-bordered border-primary border rounded " style="width: 350px;" >
							<tr>
								<td class="fs-5 " >Name</td>
								<td><input type="text" name="name" class="fs-5 border border-warning rounded " ></td>
							</tr>
							<tr>
								<td class="fs-5" >Email</td>
								<td><input type="text" name="email" class="fs-5 border border-warning rounded " ></td>
							</tr>
							<tr>
								<td class="fs-5" >Mobile</td>
								<td><input type="text" name="mobile" class="fs-5 border border-warning rounded " ></td>
							</tr>
							<tr>
								<td class="fs-5" >Age</td>
								<td><input type="text" name="age" class="fs-5 border border-warning rounded " ></td>
							</tr>
						</table>
						<input type="submit" value="add" class="btn btn-primary fs-5 px-5 " >
					</form>
				</div>

			</div>
			<div class="col-4"></div>

		</div>

	</div>

	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div class=" container alert alert-success  bg-success text-white my-2  " role="alert" style="width: 300px;" >
      <h1 class="fs-2 text-center " ><%=message%></h1> 
    </div>
	<%
	}
	%>
	

</body>
</html>