<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/jquery-3.4.1.js"></script>
<title>Home Page</title>
<style>
body{
background-color:#e2ee90;
background-image: url("/images/bg image.jpeg");
}
</style>
</head>
<body>
<div class="container">
	<div class="row">	
		<div class="col-sm-6 mx-auto">
			<div class="card shadow bg-transparent mt-3">
			<div class="card-header">
			<h5 class="text-center">College - Register</h5>
			</div>
				<div class="card-body">
				<form method="post">
				<div class="form-row form-group">
					<label class="col-sm-4 col-form-label">Student Name</label>
					<div class="col-sm-8">
						<input type="text" name="sname" required class="form-control" pattern="[A-Za-z ]{3,35}">
					</div>
				</div>				
				<div class="form-row form-group">
					<label class="col-sm-4 col-form-label">Date of Birth</label>
					<div class="col-sm-8">
						<input type="date" name="dob" id="dob" required class="form-control">
					</div>
				</div>
				<div class="form-row form-group">
					<label class="col-sm-4 col-form-label">Gender</label>
					<div class="col-sm-8">
						<select name="gender" required class="form-control">
							<option value="">Select Gender</option>
							<option>Male</option>
							<option>Female</option>
						</select>
					</div>
				</div>
				
				<div class="form-row form-group">
					<label class="col-sm-4 col-form-label">Course</label>
					<div class="col-sm-8">
						<select name="course" required class="form-control">
							<option value="">Select Course</option>
							<option>MCA</option>
							<option>MBA</option>
							<option>MSW</option>
							<option>MCom</option>
						</select>
					</div>
				</div>
				<div class="form-row form-group">
					<label class="col-sm-4 col-form-label">Semester</label>
					<div class="col-sm-8">
						<select name="semester" required class="form-control">
							<option value="">Select Semester</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
						</select>
					</div>
				</div>
				<div class="form-row form-group">
					<label class="col-sm-4 col-form-label">Contact Number</label>
					<div class="col-sm-8">
						<input type="text" name="phone" maxlength="10" required class="form-control" pattern="[0-9]{10,10}">
					</div>
				</div>
								
				<div class="form-row form-group">
					<label class="col-sm-4 col-form-label">Email Id</label>
					<div class="col-sm-8">
						<input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="email" required class="form-control">
					</div>
				</div>				
				<div class="form-row form-group">
					<label class="col-sm-4 col-form-label">Password</label>
					<div class="col-sm-8">
						<input type="password" name="password" required class="form-control">
					</div>
				</div>
				<button class="btn btn-primary float-right mr-3">Register</button>
			</form>
					<div class="clearfix"></div>
					<c:if test="${error ne null }">
						<div class="alert alert-danger font-weight-bold text-center mt-2">
							${error}
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$(function(){
	document.getElementById("dob").max = new Date().toISOString().split("T")[0];	
});
</script>
</body>
</html>