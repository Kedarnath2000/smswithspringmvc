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
<style>
#box1{
margin-left: 80px;
}
</style>
</head>
<body>
	<div class="container mt-5 ">
		<div class="row ">
			<div class="col-4"></div>
			<div class="col-4 mt-5 ">
				<div class="container mt-2 ">
					<form action="add_admin" method="post">
						<table border="1px solid"
							class="table table-bordered border-primary border rounded "
							style="width: 350px;">
							<tr>
								<td class="fs-5 ">userName</td>
								<td><input type="text" name="userName" required="true"
									class="fs-5 border border-warning rounded "></td>
							</tr>
							<tr>
								<td class="fs-5 ">Email</td>
								<td><input type="text" name="email" required="true"
									class="fs-5 border border-warning rounded "></td>
							</tr>
							<tr>
								<td class="fs-5 ">Password</td>
								<td><input type="text" name="password" required="true"
									class="fs-5 border border-warning rounded "></td>
							</tr>
						</table>
						<div id="box1">
						<input type="submit" value="sign up"
							class="btn btn-primary fs-5 px-5 ms-5 ">
						</div>
					</form>
				</div>
			</div>

		</div>
		<div class="col-4"></div>

	</div>
</body>
</html>