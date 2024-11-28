<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Home Page</title>
<style>
body{
background-color:#e2ee90;
background-image: url("/images/bg image.jpeg");
background-position: center;
background-repeat: no-repeat;
background-size: cover;
}
body{
background-image:url("/images/firstbg.jpeg");
background-position: center;
background-repeat: no-repeat;
background-size: cover;
}
</style>
</head>
<body>
<div class="container-fluid">
	<marquee><b>Student Marks Card Availability System</b></marquee>
	<div class="row">	
		<div class="col-sm-6 mt-5">
			<!--<img src="/images/bg.jpg" style="width: 100%;height:600px;">-->
		</div>
		<div class="col-sm-5 mt-5">
			<div class="card shadow bg-transparent" style="margin-top:160px;">
				<div class="card-body">
					<h5 class="p-2 text-center">AIMS College Portal - Login Screen</h5>
					<form method="post">
						<div class="form-group form-row">
							<label class="col-sm-4 col-form-label">User ID</label>
							<div class="col-sm-8">
								<input type="text" required class="form-control" name="userid" placeholder="User Id">
							</div>
						</div>
						
						<div class="form-group form-row">
							<label class="col-sm-4 col-form-label">Password</label>
							<div class="col-sm-8">
								<input type="password" required class="form-control" name="pwd" placeholder="Password">
							</div>
						</div>
						
						<div class="form-group form-row">
							<label class="col-sm-4 col-form-label">Role</label>
							<div class="col-sm-8">
								<select required class="form-control" name="role">
									<option>Admin</option>
									<option>Student</option>
								</select>
							</div>
						</div>
						
						<button class="btn btn-danger px-5 float-right">Login</button>
					</form>
					<div class="clearfix"></div>
					
					Click <a href="/register">here</a> to register
					
					<c:if test="${error ne null }">
						<div class="alert alert-danger font-weight-bold text-center mt-2">
							${error}
						</div>
					</c:if>
					
					<c:if test="${msg ne null }">
						<div class="alert alert-success font-weight-bold text-center mt-2">
							${msg }
						</div>			
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>