<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp"></jsp:include>
	<h4 class="p-2" style="border-bottom:2px solid green;">Student Profile</h4>	
	<div class="card shadow">
		<div class="card-body">
			<table class="table table-bordered">
				<tbody>
					<tr>
					<td>Regno</td>
					<td>${user.regno }</td>
						<td>Name</td>
						<td>${user.sname }</td>
					</tr>
					<tr>
						<td>Gender</td>
						<td>${user.gender }</td>
						<td>Date of Birth</td>
						<td>${user.dob }</td>
					</tr>
					<tr>
						<td>Course</td>
						<td>${user.course }</td>
						<td>Semester</td>
						<td>${user.semester }</td>
					</tr>
					<tr>
						<td>Email</td>
						<td>${user.email }</td>
						<td>Contact No</td>
						<td>${user.phone }</td>
					</tr>
				</tbody>
			</table>
			<c:if test="${user.status eq 'Arrived' }">
				<div class="alert alert-success font-weight-bold">
					<h6>Your mark card has been arrived. Please collect from college.!!</h6>
				</div>
			</c:if>
			<c:if test="${user.status eq 'Received' }">
				<div class="alert alert-success font-weight-bold">
					<h6>You has been received your mark card from college.!!</h6>
				</div>
			</c:if>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>